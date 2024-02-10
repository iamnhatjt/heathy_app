part of 'cu_weight_bmi_bloc.dart';

@freezed
class CuWeightBmiState with _$CuWeightBmiState {
  const factory CuWeightBmiState.initial() = _Initial;
  const factory CuWeightBmiState.loading() = _Loading;
  const factory CuWeightBmiState.loaded() = _Loaded;
  const factory CuWeightBmiState.added() = _Added;
  const factory CuWeightBmiState.updated() = _Updated;
  const factory CuWeightBmiState.deleted() = _Deleted;
}
