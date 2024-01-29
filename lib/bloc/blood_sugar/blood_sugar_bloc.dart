import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
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
  }

  final BloodSugarUseCase _bloodSugarUseCase = getIt();

  DateTimeRange dateFilter = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().subtract(const Duration(days: 7)));

  late List<BloodSugarModel> listBloodSugars = [];
  late BloodSugarModel bloodSugarSelected = listBloodSugars.first;

  void _filter(DateTimeRange? dateRange, Emitter emit) {
    dateFilter = dateRange ?? dateFilter;
    try {
      emit(const BloodSugarState.loading());

      _bloodSugarUseCase.filter(dateFilter);
      emit(const BloodSugarState.loaded());
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
}
