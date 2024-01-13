part of 'heart_rate_bloc.dart';

@freezed
class HeartRateState with _$HeartRateState {
  const factory HeartRateState.initial() = _Initial;
  const factory HeartRateState.add() = _Initial;
  const factory HeartRateState.change() = _Initial;
}
