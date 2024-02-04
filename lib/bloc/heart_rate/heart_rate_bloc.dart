import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/data/usecase/heart_rate_usecase.dart';

part 'heart_rate_bloc.freezed.dart';
part 'heart_rate_event.dart';
part 'heart_rate_state.dart';

class HeartRateBloc extends Bloc<HeartRateEvent, HeartRateState> {
  HeartRateBloc() : super(const HeartRateState.loading()) {
    on<_Started>(_addHeartRate);
    on<_filterDate>((event, emit) => _filterHeartRate(event.dateRange, emit));
    on<_changeSelected>(changeHeartRateSelected);
    on<_delete>(_onDeleteHeartRate);
    on<_update>(_onUpdateHeartRate);
  }

  final HeartRateUseCase _heartRateUseCase = getIt();

  DateTimeRange dateRange = DateTimeRange(
      end: DateTime.now(),
      start: DateTime.now().subtract(const Duration(days: 7)));

  List<HeartRateModel> listHeartRate = [];

  late HeartRateModel heartRateSelected =
      listHeartRate.lastOrNull ?? HeartRateModel();

  Future<void> _addHeartRate(
      HeartRateEvent event, Emitter<HeartRateState> emit) async {
    try {
      emit(const HeartRateState.loading());
      await _heartRateUseCase.add((event as _Started).heartRateModel);
      _refreshDataDepen();
      emit(const HeartRateState.added());
    } catch (e) {
      emit(const HeartRateState.error("Add heart rate fail, try again"));
    }
  }

  void _filterHeartRate(DateTimeRange? range, Emitter<HeartRateState> emit) {
    emit(const HeartRateState.loading());
    dateRange = range ?? dateRange;
    _refreshDataDepen();
    if (listHeartRate.isEmpty) {
      emit(const HeartRateState.empty());
      return;
    }
    emit(const HeartRateState.filtered());
  }

  int get minHeartRate {
    if (listHeartRate.isEmpty) {
      return 0;
    }
    final List<int> list = listHeartRate.map((e) => e.heartRate ?? 0).toList();
    list.sort();
    return list.first;
  }

  int get maxHeartRate {
    if (listHeartRate.isEmpty) {
      return 0;
    }
    final List<int> list = listHeartRate.map((e) => e.heartRate ?? 0).toList();
    list.sort();
    return list.last;
  }

  int get average {
    if (listHeartRate.isEmpty) {
      return 0;
    }
    int total = 0;
    for (var e in listHeartRate) {
      total += e.heartRate ?? 0;
    }

    return total ~/ listHeartRate.length;
  }

  void changeHeartRateSelected(
      HeartRateEvent event, Emitter<HeartRateState> emit) {
    emit(const HeartRateState.loading());

    heartRateSelected = (event as _changeSelected).value;
    emit(const HeartRateState.loaded());
  }

  Future _onDeleteHeartRate(
      HeartRateEvent event, Emitter<HeartRateState> emit) async {
    emit(const HeartRateState.loading());
    final String id = (event as _delete).id;
    try {
      await _heartRateUseCase.delete(id);
      _refreshDataDepen();
      if (listHeartRate.isEmpty) {
        emit(const HeartRateState.empty());
        return;
      }
      emit(const HeartRateState.deleted());
    } catch (e) {
      emit(const HeartRateState.error("Delete failure, try again"));
    }
  }

  void _onUpdateHeartRate(HeartRateEvent event, Emitter emit) async {
    final HeartRateModel newHeatRate = (event as _update).heartRateModel;
    try {
      emit(const HeartRateState.loading());
      await _heartRateUseCase.update(heartRateSelected.id!, newHeatRate);
      _refreshDataDepen();
      emit(const HeartRateState.updated());
    } catch (e) {
      emit(const HeartRateState.error("Update failure, try again"));
    }
  }

  void _refreshDataDepen() {
    listHeartRate = _heartRateUseCase.filter(dateRange);
    if (listHeartRate.isEmpty) {
      return;
    }
    heartRateSelected = listHeartRate.last;
  }
}
