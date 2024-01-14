part of 'heart_rate_bloc.dart';

@freezed
class HeartRateEvent with _$HeartRateEvent {
  const factory HeartRateEvent.addHeartRate(HeartRateModel heartRateModel) =
      _Started;
  const factory HeartRateEvent.getHeartRate(String id) = _getHeartRate;

  const factory HeartRateEvent.update(
      String id, HeartRateModel heartRateModel) = _update;
  const factory HeartRateEvent.delete(String id) = _delete;
}
