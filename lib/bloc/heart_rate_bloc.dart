import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_rate_event.dart';
part 'heart_rate_state.dart';
part 'heart_rate_bloc.freezed.dart';

class HeartRateBloc extends Bloc<HeartRateEvent, HeartRateState> {
  HeartRateBloc() : super(const HeartRateState.initial()) {
    on<HeartRateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
