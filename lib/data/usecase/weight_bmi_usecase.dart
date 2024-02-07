import 'package:flutter/material.dart';
import 'package:heathy_app/data/model/weight_bmi_model.dart';
import 'package:heathy_app/data/repository/local_repository.dart';
import 'package:heathy_app/data/usecase/usecase_interface.dart';

class WeightBmiUseCase extends IUseCase<WeightBMIModel> {
  final LocalRepository _localRepository;

  WeightBmiUseCase(this._localRepository);

  @override
  Future add(model) {
    return _localRepository.addWeightBmi(model);
  }

  @override
  Future delete(String id) {
    return _localRepository.deleteWeightBmi(id);
  }

  @override
  Future update(String id, model) {
    return _localRepository.updateWeightBmi(model, id);
  }

  @override
  List<WeightBMIModel> filter(DateTimeRange dateRange) {
    final startTime = dateRange.start.millisecondsSinceEpoch;
    final endTime = dateRange.end.millisecondsSinceEpoch;

    return getAll()
        .where((element) =>
            element.dateTime!.millisecondsSinceEpoch >= startTime &&
            element.dateTime!.millisecondsSinceEpoch <= endTime)
        .toList();
  }

  @override
  WeightBMIModel get(String id) {
    return getAll().firstWhere((element) => element.id == id);
  }

  @override
  List<WeightBMIModel> getAll() {
    return _localRepository.getAllWeightBox();
  }
}
