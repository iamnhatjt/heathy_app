import 'dart:developer';

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
  HeartRateBloc() : super(const HeartRateState.initial()) {
    on<_Started>(_addHeartRate);
    on<_filterDate>(getListHeartRate);
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
      await _heartRateUseCase.addHeartRate((event as _Started).heartRateModel);
      listHeartRate = _heartRateUseCase.filterHeartRate(dateRange);
      emit(HeartRateState.loaded("Add heart rate success", listHeartRate));
    } catch (e) {
      emit(const HeartRateState.error("Add heart rate fail, try again"));
    }
  }

  void getListHeartRate(HeartRateEvent event, Emitter<HeartRateState> emit) {
    emit(const HeartRateState.loading());
    dateRange = (event as _filterDate).dateRange ?? dateRange;
    listHeartRate = _heartRateUseCase.filterHeartRate(dateRange);
    emit(HeartRateState.loaded("Filter success", listHeartRate));
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
    final dateTime = DateTime.fromMicrosecondsSinceEpoch(
        (event as _changeSelected).date.toInt());
    final heartRate = (event).value.toInt();

    heartRateSelected = listHeartRate.firstWhere((element) =>
        element.dateTime == dateTime || element.heartRate == heartRate);
    emit(HeartRateState.loaded("update date success", listHeartRate));
  }

  bool get isShowSelected {
    return listHeartRate.isNotEmpty;
  }

  Future _onDeleteHeartRate(
      HeartRateEvent event, Emitter<HeartRateState> emit) async {
    emit(const HeartRateState.loading());
    final String id = (event as _delete).id;
    try {
      await _heartRateUseCase.deleteHeartRate(id);
      listHeartRate = _heartRateUseCase.getAllHeartRate();
      heartRateSelected = listHeartRate.first;
      emit(HeartRateState.loaded("Deleted heart rate", listHeartRate));
    } catch (e) {
      emit(const HeartRateState.error("Delete failure, try again"));
    }
  }

  void _onUpdateHeartRate(HeartRateEvent event, Emitter emit) async {
    final HeartRateModel newHeatRate = (event as _update).heartRateModel;
    try {
      emit(const HeartRateState.loading());
      await _heartRateUseCase.updateHeartRate(
          heartRateSelected.id!, newHeatRate);
      listHeartRate = _heartRateUseCase.filterHeartRate(dateRange);
      heartRateSelected = event.heartRateModel;
      emit(HeartRateState.loaded("Update success", listHeartRate));
    } catch (e) {
      emit(const HeartRateState.error("Update failure, try again"));
    }
  }
}
