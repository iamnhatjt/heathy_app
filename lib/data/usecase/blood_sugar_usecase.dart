import 'package:flutter/material.dart';
import 'package:heathy_app/data/model/blood_sugar_model.dart';
import 'package:heathy_app/data/repository/local_repository.dart';
import 'package:heathy_app/data/usecase/usecase_interface.dart';

class BloodSugarUseCase implements IUseCase<BloodSugarModel> {
  final LocalRepository _localRepository;
  BloodSugarUseCase(
    this._localRepository,
  );

  @override
  Future<void> add(BloodSugarModel model) =>
      _localRepository.addBloodSugar(model);

  @override
  Future<void> update(String id, BloodSugarModel model) =>
      _localRepository.updateBloodSugar(id, model);

  @override
  Future<void> delete(String id) => _localRepository.deleteBloodSugar(id);

  @override
  List<BloodSugarModel> filter(DateTimeRange dateRange) {
    final listBloodSugar = getAll();
    final startDate =
        dateRange.start.copyWith(hour: 0, minute: 0).millisecondsSinceEpoch;
    final endDate =
        dateRange.end.copyWith(hour: 23, minute: 59).millisecondsSinceEpoch;

    return listBloodSugar
        .where(
          (element) =>
              element.dateTime!.millisecondsSinceEpoch > startDate &&
              element.dateTime!.millisecondsSinceEpoch < endDate,
        )
        .toList();
  }

  @override
  BloodSugarModel get(String id) => _localRepository.getBloodSugar(id);

  @override
  List<BloodSugarModel> getAll() {
    return _localRepository.getAllSugarBox();
  }
}
