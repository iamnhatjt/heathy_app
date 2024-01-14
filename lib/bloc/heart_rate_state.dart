part of 'heart_rate_bloc.dart';

@freezed
class HeartRateState with _$HeartRateState {
  const factory HeartRateState.initial() = _Initial;
  const factory HeartRateState.loading() = _loading;
  const factory HeartRateState.loaded() = _loaded;
  const factory HeartRateState.error() = _error;
}
