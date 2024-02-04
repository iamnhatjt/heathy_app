part of 'heart_rate_bloc.dart';

@freezed
class HeartRateState with _$HeartRateState {
  const factory HeartRateState.initial() = _Initial;
  const factory HeartRateState.loading() = _Loading;
  const factory HeartRateState.loaded() = _Loaded;
  const factory HeartRateState.error(String error) = _Error;
  const factory HeartRateState.updated() = _Updated;
  const factory HeartRateState.deleted() = _Deleted;
  const factory HeartRateState.added() = _Added;
  const factory HeartRateState.filtered() = _Filtered;

  const factory HeartRateState.empty() = _Empty;
}
