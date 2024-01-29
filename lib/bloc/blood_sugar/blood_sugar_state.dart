part of 'blood_sugar_bloc.dart';

@freezed
class BloodSugarState with _$BloodSugarState {
  const factory BloodSugarState.initial() = _Initial;
  const factory BloodSugarState.empty() = _Empty;
  const factory BloodSugarState.loading() = _Loading;
  const factory BloodSugarState.loaded() = _Loaded;
  const factory BloodSugarState.error(String error) = _Error;
  const factory BloodSugarState.addSuccess() = _AddSuccess;
  const factory BloodSugarState.changeSuccess() = _ChangeSuccess;
  const factory BloodSugarState.deleteSuccess() = _DeleteSuccess;
}
