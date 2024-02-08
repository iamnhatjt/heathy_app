import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_bmi_bloc.freezed.dart';
part 'weight_bmi_event.dart';
part 'weight_bmi_state.dart';

class WeightBmiBloc extends Bloc<WeightBmiEvent, WeightBmiState> {
  WeightBmiBloc() : super(const _Initial()) {
    on<_ChangeModeHeight>((event, emit) => _changeHeightMode(emit));
    on<_ChangeModeWeight>((event, emit) => _changeWeightMode(emit));
  }

  bool isWeightKG = true;
  bool isHeightCM = true;

  void _changeHeightMode(Emitter emit) {
    emit(const _Loading());
    isHeightCM = !isHeightCM;
    emit(const _Loaded());
  }

  void _changeWeightMode(Emitter emit) {
    emit(const _Loading());
    isWeightKG = !isWeightKG;
    emit(const _Loaded());
  }
}
