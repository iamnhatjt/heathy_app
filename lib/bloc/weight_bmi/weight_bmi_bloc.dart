import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heathy_app/config/di.dart';
import 'package:heathy_app/data/usecase/weight_bmi_usecase.dart';

part 'weight_bmi_bloc.freezed.dart';
part 'weight_bmi_event.dart';
part 'weight_bmi_state.dart';

class WeightBmiBloc extends Bloc<WeightBmiEvent, WeightBmiState> {
  WeightBmiBloc() : super(const _Initial());

  final WeightBmiUseCase _weightBmiUseCase = getIt();
}
