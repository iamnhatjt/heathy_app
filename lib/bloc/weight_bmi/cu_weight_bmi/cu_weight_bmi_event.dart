part of 'cu_weight_bmi_bloc.dart';

@freezed
class CuWeightBmiEvent with _$CuWeightBmiEvent {
  const factory CuWeightBmiEvent.started() = _Started;
  const factory CuWeightBmiEvent.changeModeHeight() = _ChangeModeHeight;
  const factory CuWeightBmiEvent.changeModeWeight() = _ChangeModeWeight;
  const factory CuWeightBmiEvent.changeHeight(String value) = _ChangeHeight;
  const factory CuWeightBmiEvent.changeWeight(String value) = _ChangeWeight;
  const factory CuWeightBmiEvent.addModel({
    required int age,
    required DateTime dateTime,
    required String sex,
  }) = _AddModel;
  const factory CuWeightBmiEvent.updateModel(WeightBMIModel? model) =
      _UpdateModel;
}
