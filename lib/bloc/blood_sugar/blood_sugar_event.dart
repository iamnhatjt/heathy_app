part of 'blood_sugar_bloc.dart';

@freezed
class BloodSugarEvent with _$BloodSugarEvent {
  const factory BloodSugarEvent.started(DateTimeRange? value) = _Started;
  const factory BloodSugarEvent.add(BloodSugarModel model) = _Add;
  const factory BloodSugarEvent.change(BloodSugarModel newModel) = _Change;
  const factory BloodSugarEvent.delete() = _Delete;
  const factory BloodSugarEvent.onChangeType(BloodSugarTypeState value) =
      _OnChangeType;
  const factory BloodSugarEvent.onChangMode() = _OnChangMode;
  const factory BloodSugarEvent.onChangeBlood(String value) = _OnChangBlood;
  const factory BloodSugarEvent.onChangeSelected(BloodSugarModel model) =
      _OnChangeSelected;
}
