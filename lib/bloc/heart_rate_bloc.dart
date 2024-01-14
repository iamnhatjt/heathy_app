import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/data/usecase/heart_rate_usecase.dart';

part 'heart_rate_bloc.freezed.dart';
part 'heart_rate_event.dart';
part 'heart_rate_state.dart';

class HeartRateBloc extends Bloc<HeartRateEvent, HeartRateState> {
  HeartRateBloc() : super(const HeartRateState.initial()) {
    on<HeartRateEvent>((event, emit) {
      if (event is _Started) {
        _addHeartRate(event.heartRateModel);
      }
    });
  }

  final HeartRateUseCase _heartRateUseCase = getIt();

  Future<void> _addHeartRate(HeartRateModel heartRateModel) {
    log("running add heartrate");
    return _heartRateUseCase.addHeartRate(heartRateModel);
  }

  void getHeartRatelist() {
    final listHeartRate = _heartRateUseCase.getAllHeartRate();
    log(listHeartRate.length.toString());
  }
}
