part of '../measure_heart_rate/measure_heart_rate_bloc.dart';

@freezed
class MeasureHeartRateEvent with _$MeasureHeartRateEvent {
  const factory MeasureHeartRateEvent.onRawData(SensorValue value) = _OnRawData;
  const factory MeasureHeartRateEvent.onBpm(int value) = _OnBpm;
  const factory MeasureHeartRateEvent.loaded() = _Loaded;
  const factory MeasureHeartRateEvent.onStop() = _OnStop;
}
