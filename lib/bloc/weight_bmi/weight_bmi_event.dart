part of 'weight_bmi_bloc.dart';

@freezed
class WeightBmiEvent with _$WeightBmiEvent {
  const factory WeightBmiEvent.started() = _Started;
  const factory WeightBmiEvent.changeModeHeight() = _ChangeModeHeight;
  const factory WeightBmiEvent.changeModeWeight() = _ChangeModeWeight;
  const factory WeightBmiEvent.changeHeight(double value) = _ChangeHeight;
  const factory WeightBmiEvent.changeWeight(double value) = _ChangeWeight;
}
