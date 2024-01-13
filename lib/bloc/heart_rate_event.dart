part of 'heart_rate_bloc.dart';

@freezed
class HeartRateEvent with _$HeartRateEvent {
  const factory HeartRateEvent.started() = _Started;
}
