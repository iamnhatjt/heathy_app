import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/res/widgets/heart_bpm.dart';

part 'measure_heart_rate_event.dart';
part 'measure_heart_rate_state.dart';
part 'measure_heart_rate_bloc.freezed.dart';

class MeasureHeartRateBloc
    extends Bloc<MeasureHeartRateEvent, MeasureHeartRateState> {
  MeasureHeartRateBloc() : super(const MeasureHeartRateState.initial()) {
    on<_OnBpm>((event, emit) => onBPM(event.value));
    on<_OnRawData>(onRawData);
    on<_OnStop>((event, emit) => onStop());
  }

  Timer? timer;
  double progress = 0.0;
  int bpmAverage = 0;
  List _listDataBPM = [];
  int recentBPM = 0;
  int currentMiniSecond = 0;
  int totalMiniSecondsToMeasure = 20000;

  void initTimer(MeasureHeartRateEvent event, Emitter emit) {
    if (state is _Measuring) return;

    timer?.cancel();
    timer = Timer.periodic(const Duration(milliseconds: 200), (timer) async {
      if (currentMiniSecond > totalMiniSecondsToMeasure) {
        emit(const MeasureHeartRateState.measured());
        timer.cancel();
        currentMiniSecond = 0;
        return;
      }
      currentMiniSecond = currentMiniSecond + 200;
      progress = currentMiniSecond / totalMiniSecondsToMeasure;
      log("$progress");
    });
  }

  void onRawData(
      MeasureHeartRateEvent event, Emitter<MeasureHeartRateState> emit) {
    final value = (event as _OnRawData).value;
    if (value.value > 100 || value.value < 60) {
      // finger out
      timer?.cancel();
      timer = null;
      _listDataBPM = [];
      bpmAverage = 0;
      recentBPM = 0;
      progress = 0.0;
      currentMiniSecond = 0;
    } else {
      // finger ok
      if (timer == null || timer?.isActive != true) {
        initTimer(event, emit);
      }
    }
  }

  void onBPM(int value) {
    _listDataBPM.add(value);
    int t = 0;
    int c = 0;
    for (int item in _listDataBPM) {
      if (item >= 40 && item <= 220) {
        t += item;
        c++;
      }
    }
    bpmAverage = ((t ~/ (c == 0 ? 1 : c)) + value) ~/ 2;
    recentBPM = bpmAverage;
  }

  void onStop() {
    close();
    timer!.cancel();
  }

  @override
  Future<void> close() async {
    timer?.cancel();
    super.close();
  }
}
