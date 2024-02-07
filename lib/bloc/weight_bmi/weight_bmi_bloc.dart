import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_bmi_event.dart';
part 'weight_bmi_state.dart';
part 'weight_bmi_bloc.freezed.dart';

class WeightBmiBloc extends Bloc<WeightBmiEvent, WeightBmiState> {
  WeightBmiBloc() : super(const _Initial()) {
    on<WeightBmiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
