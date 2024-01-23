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
  }

  final HeartRateUseCase _heartRateUseCase = getIt();

  DateTimeRange dateRange = DateTimeRange(
      end: DateTime.now(),
      start: DateTime.now().subtract(const Duration(days: 7)));

  List<HeartRateModel> listHeartRate = [];

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

  // void getHeartRatelist() {
  //   final listHeartRate = _heartRateUseCase.getAllHeartRate();
  //   log(listHeartRate.length.toString());
  // }

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
}
