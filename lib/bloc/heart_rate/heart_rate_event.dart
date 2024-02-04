part of 'heart_rate_bloc.dart';

@freezed
class HeartRateEvent with _$HeartRateEvent {
  const factory HeartRateEvent.addHeartRate(HeartRateModel heartRateModel) =
      _Started;
  const factory HeartRateEvent.getHeartRate(String id) = _getHeartRate;

  const factory HeartRateEvent.update(HeartRateModel heartRateModel) = _update;
  const factory HeartRateEvent.delete(String id) = _delete;
  const factory HeartRateEvent.filterDate({DateTimeRange? dateRange}) =
      _filterDate;

  const factory HeartRateEvent.changeSelected(HeartRateModel value) =
      _changeSelected;
}
