import 'package:flutter/material.dart';
import 'package:heathy_app/data/repository/local_repository.dart';
import 'package:heathy_app/data/usecase/usecase_interface.dart';

import '../model/heart_rate_model.dart';

class HeartRateUseCase implements IUseCase<HeartRateModel> {
  final LocalRepository _localRepository;
  HeartRateUseCase(this._localRepository);

  @override
  List<HeartRateModel> getAll() => _localRepository.getAllHeartRate();

  @override
  Future<void> add(HeartRateModel heartRateModel) {
    return _localRepository.addHeartRate(heartRateModel);
  }

  @override
  HeartRateModel get(String id) => _localRepository.getHeartRate(id);

  @override
  Future<void> update(String id, HeartRateModel heartRateModel) =>
      _localRepository.updateHeartRate(id, heartRateModel);

  @override
  Future<void> delete(String id) => _localRepository.deleteHeartRate(id);

  @override
  List<HeartRateModel> filter(DateTimeRange dateTimeRange) {
    final listHeartRates = getAll();
    final startDate =
        dateTimeRange.start.copyWith(hour: 0, minute: 0).millisecondsSinceEpoch;
    final endDate =
        dateTimeRange.end.copyWith(hour: 23, minute: 59).millisecondsSinceEpoch;

    return listHeartRates
        .where(
          (element) =>
              element.dateTime!.millisecondsSinceEpoch > startDate &&
              element.dateTime!.millisecondsSinceEpoch < endDate,
        )
        .toList();
  }
}
