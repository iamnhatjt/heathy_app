part of 'weight_bmi_bloc.dart';

@freezed
class WeightBmiState with _$WeightBmiState {
  const factory WeightBmiState.initial() = _Initial;
  const factory WeightBmiState.loading() = _Loading;
  const factory WeightBmiState.loaded() = _Loaded;
  const factory WeightBmiState.added() = _Added;
  const factory WeightBmiState.updated() = _Updated;
  const factory WeightBmiState.deleted() = _Deleted;
}
