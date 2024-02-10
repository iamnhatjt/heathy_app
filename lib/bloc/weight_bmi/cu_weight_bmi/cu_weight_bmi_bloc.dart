import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
import 'package:heathy_app/data/enums/bmi.dart';
import 'package:heathy_app/data/model/weight_bmi_model.dart';
import 'package:heathy_app/data/usecase/weight_bmi_usecase.dart';

part 'cu_weight_bmi_bloc.freezed.dart';
part 'cu_weight_bmi_event.dart';
part 'cu_weight_bmi_state.dart';

class CuWeightBmiBloc extends Bloc<CuWeightBmiEvent, CuWeightBmiState> {
  CuWeightBmiBloc() : super(const _Initial()) {
    on<_ChangeModeHeight>((event, emit) => _changeHeightMode(emit));
    on<_ChangeModeWeight>((event, emit) => _changeWeightMode(emit));
    on<_ChangeHeight>((event, emit) => _changeHeight(emit, event.value));
    on<_ChangeWeight>((event, emit) => _changeWeight(emit, event.value));
    on<_AddModel>(
      (event, emit) => _createBMI(event, emit),
    );
  }

  bool isCreate = true;

  bool isHeightCM = true;
  bool isWeightKG = true;

  double currentWeight = 65.0;
  double currentHeight = 170.0;

  final WeightBmiUseCase _weightBmiUseCase = getIt();

  void _updateModel(WeightBMIModel? model, Emitter emit) {
    if (model == null) {
      return;
    }
    emit(const _Loading());
    currentHeight = model.height!;
    currentWeight = model.weight!;
    emit(const _Loaded());
  }

  void _changeHeightMode(Emitter emit) {
    emit(const _Loading());

    isHeightCM = !isHeightCM;
    if (isHeightCM) {
      currentHeight = BMIProtoco.ftToCm(currentHeight);
    } else {
      currentHeight = BMIProtoco.cmToFt(currentHeight);
    }

    emit(const _Loaded());
  }

  void _changeWeightMode(Emitter emit) {
    emit(const _Loading());
    isWeightKG = !isWeightKG;
    if (isWeightKG) {
      currentWeight = BMIProtoco.ibToKg(currentWeight);
    } else {
      currentWeight = BMIProtoco.kgToIb(currentWeight);
    }
    log(currentWeight.toString());
    emit(const _Loaded());
  }

  void _changeHeight(Emitter emit, String value) {
    currentHeight = double.tryParse(value) ?? currentHeight;
    emit(const _Loading());
    emit(const _Loaded());
  }

  void _changeWeight(Emitter emit, String value) async {
    currentWeight = double.tryParse(value) ?? currentWeight;
    emit(const _Loading());
    emit(const _Loaded());
  }

  double get bmi {
    late double weight =
        isWeightKG ? currentWeight : BMIProtoco.ibToKg(currentWeight);
    late double height =
        isHeightCM ? currentHeight : BMIProtoco.ftToCm(currentHeight);

    return (weight / height) / height * 10000;
  }

  void _createBMI(CuWeightBmiEvent event, Emitter emit) async {
    emit(const _Loading());
    if (!isHeightCM) {
      currentHeight = BMIProtoco.ftToCm(currentHeight);
    }
    if (!isWeightKG) {
      currentWeight = BMIProtoco.ibToKg(currentWeight);
    }

    final newModel = WeightBMIModel(
      age: (event as _AddModel).age,
      dateTime: (event).dateTime,
      height: currentHeight,
      weight: currentWeight,
      sex: (event).sex,
    );

    await _weightBmiUseCase.add(newModel);
    emit(const _Added());
  }
}
