import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
import 'package:heathy_app/data/enums/blood_sugar.dart';
import 'package:heathy_app/data/model/blood_sugar_model.dart';
import 'package:heathy_app/data/usecase/blood_sugar_usecase.dart';

part 'blood_sugar_bloc.freezed.dart';
part 'blood_sugar_event.dart';
part 'blood_sugar_state.dart';

class BloodSugarBloc extends Bloc<BloodSugarEvent, BloodSugarState> {
  BloodSugarBloc() : super(const BloodSugarState.initial()) {
    on<_Started>((event, emit) => _filter(event.value, emit));
    on<_Delete>((event, emit) => _delete(emit));
    on<_Change>((event, emit) => _update(event.newModel, emit));
    on<_OnChangeType>((event, emit) => _onChangetype(event.value, emit));
  }

  final BloodSugarUseCase _bloodSugarUseCase = getIt();

  DateTimeRange dateFilter = DateTimeRange(
      end: DateTime.now(),
      start: DateTime.now().subtract(const Duration(days: 7)));

  late List<BloodSugarModel> listBloodSugars = [];
  late BloodSugarModel bloodSugarSelected = listBloodSugars.last;
  late BloodSugarTypeState typeSelected = BloodSugarTypeState.allType;

  void _filter(DateTimeRange? dateRange, Emitter emit) {
    dateFilter = dateRange ?? dateFilter;
    try {
      emit(const BloodSugarState.loading());
      listBloodSugars = _bloodSugarUseCase.filter(dateFilter);
      if (listBloodSugars.isEmpty) {
        emit(const BloodSugarState.empty());
      } else {
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
      total += e.bloodSugar!;
    }
    return total;
  }

  void _onChangetype(BloodSugarTypeState type, Emitter emit) {
    typeSelected = type;
    _filter(dateFilter, emit);
  }
}
