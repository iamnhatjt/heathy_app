import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/res/widgets/heart_bpm.dart';

part 'measure_heart_rate_event.dart';
part 'measure_heart_rate_state.dart';
part 'measure_heart_rate_bloc.freezed.dart';

class MeasureHeartRateBloc
    extends Bloc<MeasureHeartRateEvent, MeasureHeartRateState> {
  MeasureHeartRateBloc() : super(const MeasureHeartRateState.initial()) {
    on<_OnBpm>((event, emit) async => onBPM(event.value));
    on<_OnRawData>((event, emit) => onRawData(event.value, emit));
    on<_OnStop>((event, emit) async => close());
    on<_InitState>(initTimer);
    on<_LoopEvent>(loopEvent);
  }

  Timer? timer;
  double progress = 0.0;
  int bpmAverage = 0;
  List _listDataBPM = [];
  int recentBPM = 0;
  int currentMiniSecond = 0;
  int totalMiniSecondsToMeasure = 20000;

  void loopEvent(MeasureHeartRateEvent event, Emitter emit) {
    if (currentMiniSecond > totalMiniSecondsToMeasure) {
      timer?.cancel();
      currentMiniSecond = 0;
      return;
    }
    currentMiniSecond = currentMiniSecond + 200;
    progress = currentMiniSecond / totalMiniSecondsToMeasure;
    emit(MeasureHeartRateState.measuring(progress));
    log("$progress");
  }

  void initTimer(MeasureHeartRateEvent event, Emitter emit) {
    timer?.cancel();
    timer = Timer.periodic(const Duration(milliseconds: 200), (timer) async {
      add(const MeasureHeartRateEvent.loopEvent());
    });
  }

  void onRawData(SensorValue value, Emitter emit) {
    if (progress == 0.98) {
      progress = 0;

      emit(MeasureHeartRateState.measured(bpmAverage));
      return;
    }
    if (value.value > 100 || value.value < 60) {
      // finger out
      timer?.cancel();
      timer = null;
      _listDataBPM = [];
      bpmAverage = 0;
      recentBPM = 0;
      progress = 0.0;
      currentMiniSecond = 0;

      emit(MeasureHeartRateState.measuring(progress));
    } else {
      // finger ok
      if (timer == null || timer?.isActive != true) {
        add(const MeasureHeartRateEvent.initEvent());
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

  @override
  Future<void> close() async {
    timer?.cancel();
    await super.close();
  }
}
