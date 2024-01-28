part of 'measure_heart_rate_bloc.dart';

@freezed
class MeasureHeartRateState with _$MeasureHeartRateState {
  const factory MeasureHeartRateState.initial() = _Initial;
  const factory MeasureHeartRateState.measuring(double progress) = _Measuring;
  const factory MeasureHeartRateState.measured() = _Measured;
}
