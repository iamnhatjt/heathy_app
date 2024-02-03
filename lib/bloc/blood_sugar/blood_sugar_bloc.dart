import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
import 'package:heathy_app/data/enums/blood_sugar.dart';
import 'package:heathy_app/data/model/blood_sugar_model.dart';
import 'package:heathy_app/data/usecase/blood_sugar_usecase.dart';
import 'package:heathy_app/res/util/extensions/number_extension.dart';

part 'blood_sugar_bloc.freezed.dart';
part 'blood_sugar_event.dart';
part 'blood_sugar_state.dart';

class BloodSugarBloc extends Bloc<BloodSugarEvent, BloodSugarState> {
  BloodSugarBloc() : super(const BloodSugarState.initial()) {
    on<_Started>((event, emit) => _filter(event.value, emit));
    on<_Delete>((event, emit) => _delete(emit));
    on<_Add>((event, emit) => _add(event.model, emit));
    on<_Change>((event, emit) => _update(event.newModel, emit));
    on<_OnChangeType>((event, emit) => _onChangetype(event.value, emit));
    on<_OnChangMode>((event, emit) => _onChangeMode(emit));
    on<_OnChangBlood>((event, emit) => _onchangeBlood(event.value, emit));
    on<_OnChangeSelected>(
        (event, emit) => _onChangeSelected(event.model, emit));
  }

  final BloodSugarUseCase _bloodSugarUseCase = getIt();

  DateTimeRange dateFilter = DateTimeRange(
      end: DateTime.now(),
      start: DateTime.now().subtract(const Duration(days: 7)));

  late List<BloodSugarModel> listBloodSugars = [];
  late BloodSugarModel bloodSugarSelected = listBloodSugars.last;
  late BloodSugarTypeState typeSelected = BloodSugarTypeState.allType;
  late double currentBlood = 80.0;
  late bool isMgDl = true;

  void _filter(DateTimeRange? dateRange, Emitter emit) {
    dateFilter = dateRange ?? dateFilter;
    try {
      emit(const BloodSugarState.loading());
      listBloodSugars = _bloodSugarUseCase.filter(dateFilter);

      if (listBloodSugars.isEmpty) {
        emit(const BloodSugarState.empty());
      } else {
        bloodSugarSelected = listBloodSugars.last;
        emit(const BloodSugarState.loaded());
      }
    } catch (e) {
      emit(const BloodSugarState.error("Filter error, try again"));
    }
  }

  void _delete(Emitter emit) async {
    try {
      emit(const BloodSugarState.loading());
      await _bloodSugarUseCase.delete(bloodSugarSelected.id!);
      _filter(dateFilter, emit);
      emit(const BloodSugarState.deleteSuccess());
    } catch (e) {
      emit(const BloodSugarState.error("Delete error, try again"));
    }
  }

  void _update(BloodSugarModel model, Emitter emit) async {
    try {
      emit(const BloodSugarState.loading());
      await _bloodSugarUseCase.update(bloodSugarSelected.id!, model);
      emit(const BloodSugarState.changeSuccess());
    } catch (e) {
      emit(const BloodSugarState.error("Delete error, try again"));
    }
  }

  double get min {
    if (listBloodSugars.isEmpty) {
      return 0;
    }
    final List<double> list =
        listBloodSugars.map((e) => e.bloodSugar ?? 0).toList();
    list.sort();
    return list.first;
  }

  double get max {
    if (listBloodSugars.isEmpty) {
      return 0;
    }
    final List<double> list =
        listBloodSugars.map((e) => e.bloodSugar ?? 0).toList();
    list.sort();
    return list.last;
  }

  double get average {
    if (listBloodSugars.isEmpty) {
      return 0;
    }
    double total = 0;
    for (var e in listBloodSugars) {
      total += e.bloodSugar ?? 0;
    }
    return total;
  }

  void _onChangetype(BloodSugarTypeState type, Emitter emit) {
    typeSelected = type;
    _filter(dateFilter, emit);
  }

  void _onChangeMode(Emitter emit) {
    emit(const BloodSugarState.loading());
    isMgDl = !isMgDl;
    if (isMgDl) {
      currentBlood = currentBlood.mmToMg;
    } else {
      currentBlood = currentBlood.mgToMm;
    }
    emit(const BloodSugarState.loaded());
  }

  BloodSugarType get typeBlood {
    return isMgDl ? convertTypeMg(currentBlood) : convertTypeMm(currentBlood);
  }

  void _onchangeBlood(String value, Emitter emit) {
    emit(const BloodSugarState.loading());
    currentBlood = double.parse(value);
    emit(const BloodSugarState.loaded());
  }

  void _add(BloodSugarModel model, Emitter emit) async {
    try {
      emit(const BloodSugarState.loading());
      await _bloodSugarUseCase.add(model);
      currentBlood = 80;
      emit(const BloodSugarState.addSuccess());
      _filter(null, emit);
    } catch (e) {
      emit(const BloodSugarState.error("Add failure, try again"));
    }
  }

  _onChangeSelected(BloodSugarModel model, Emitter emit) {
    emit(const BloodSugarState.loading());
    bloodSugarSelected = model;
    emit(const BloodSugarState.loaded());
  }
}
