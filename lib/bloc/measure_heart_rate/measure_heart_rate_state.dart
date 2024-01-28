part of 'measure_heart_rate_bloc.dart';
//
// @freezed
// abstract class MeasureHeartRateState with _$MeasureHeartRateState {
//   const factory MeasureHeartRateState.initial() = _Initial;
//   const factory MeasureHeartRateState.measuring(double progress) = _Measuring;
//   const factory MeasureHeartRateState.measured() = _Measured;
// }
//
//

abstract class MeasureHeartRateState extends Equatable {
  @override
  List get props => [];
}

class MeasureHeartRateInitialState extends MeasureHeartRateState {}

class MeasureHeartRateMeasuring extends MeasureHeartRateState {
  final double progress;
  MeasureHeartRateMeasuring({required this.progress});

  @override
  List get props => [progress];
}

class MeasureHeartRateMeasured extends MeasureHeartRateState {}
