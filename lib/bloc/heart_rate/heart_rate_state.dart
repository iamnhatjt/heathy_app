part of 'heart_rate_bloc.dart';

@freezed
class HeartRateState with _$HeartRateState {
  const factory HeartRateState.initial() = _Initial;
  const factory HeartRateState.loading() = _loading;
  const factory HeartRateState.loaded(
      String message, List<HeartRateModel> listHeartRates) = _loaded;
  const factory HeartRateState.error(String message) = _error;
}
