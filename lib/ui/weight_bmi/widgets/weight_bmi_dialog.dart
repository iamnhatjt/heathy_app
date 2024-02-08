import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/weight_bmi/weight_bmi_bloc.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/data/model/weight_bmi_model.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_dialog.dart';
import 'package:heathy_app/res/widgets/app_input.dart';
import 'package:heathy_app/ui/weight_bmi/widgets/weight_bmi_info.dart';

AppDialog weightBMIDialog({
  required BuildContext context,
  final WeightBMIModel? model,
  Function(DateTime, int, SexEnum)? confirm,
}) {
  Widget child() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        children: [
          _WeightInput(model),
          const Spacer(),
          const _HeightInput(),
        ],
      ),
      const WeightBmiInfo(),
    ]);
  }

  return AppDialog(
    initAge: model?.age,
    sex: getSex(model?.sex),
    initDate: model?.dateTime,
    confirm: confirm,
    child: BlocProvider.value(
      value: context.read<WeightBmiBloc>(),
      child: child(),
    ),
  );
}

class _WeightInput extends StatelessWidget {
  const _WeightInput(this.model);
  final WeightBMIModel? model;

  @override
  Widget build(BuildContext context) {
    return AppButtonInner(
        child: Column(
      children: [
        changeMode(),
        AppInput(
          inputText: model?.weight?.toString(),
          width: 120,
        ),
      ],
    ));
  }

  Widget changeMode() {
    return Builder(
      builder: (context) {
        final unit = context.watch<WeightBmiBloc>().isWeightKG ? "Kg" : 'Ib';
        return BaseRoundedButton.all(
          onTap: () => context
              .read<WeightBmiBloc>()
              .add(const WeightBmiEvent.changeModeWeight()),
          padding: const EdgeInsets.all(8),
          radius: 8,
          margin: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Weight ($unit)"),
              const SizedBox(width: 4),
              const Icon(
                Icons.change_circle,
                color: Colors.blueAccent,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _HeightInput extends StatelessWidget {
  const _HeightInput();

  @override
  Widget build(BuildContext context) {
    return AppButtonInner(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          changeMode(),
          const AppInput(
            width: 120,
          ),
        ],
      ),
    );
  }

  Widget changeMode() {
    return Builder(
      builder: (context) {
        final unit = context.watch<WeightBmiBloc>().isHeightCM ? 'Cm' : 'Fit';
        return BaseRoundedButton.all(
          onTap: () => context
              .read<WeightBmiBloc>()
              .add(const WeightBmiEvent.changeModeHeight()),
          padding: const EdgeInsets.all(8),
          radius: 8,
          margin: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Height ($unit)"),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.change_circle,
                color: Colors.blueAccent,
              )
            ],
          ),
        );
      },
    );
  }
}
