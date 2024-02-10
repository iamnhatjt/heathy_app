import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/weight_bmi/cu_weight_bmi/cu_weight_bmi_bloc.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/data/model/weight_bmi_model.dart';
import 'package:heathy_app/res/util/debouce.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_dialog.dart';
import 'package:heathy_app/res/widgets/app_input.dart';
import 'package:heathy_app/ui/weight_bmi/widgets/weight_bmi_cacular_widget.dart';
import 'package:heathy_app/ui/weight_bmi/widgets/weight_bmi_info.dart';

AppDialog weightBMIDialog({
  required BuildContext context,
  final WeightBMIModel? model,
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
      const SizedBox(height: 12),
      const BMICacularWidget(),
      const SizedBox(height: 12),
      const WeightBmiInfo(),
    ]);
  }

  return AppDialog(
    initAge: model?.age,
    sex: getSex(model?.sex),
    initDate: model?.dateTime,
    confirm: (dateTime, age, sex) {
      if (model == null) {
        context.read<CuWeightBmiBloc>().add(CuWeightBmiEvent.addModel(
            age: age, dateTime: dateTime, sex: sex.toString()));
      }
      //TODO: add update
    },
    child: BlocProvider.value(
      value: context.read<CuWeightBmiBloc>(),
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
          key: UniqueKey(),
          onChange: (value) {
            final Debounce debounce =
                Debounce(const Duration(milliseconds: 1800));
            debounce.call(() {
              context
                  .read<CuWeightBmiBloc>()
                  .add(CuWeightBmiEvent.changeWeight(value));
            });
          },
          inputText:
              context.watch<CuWeightBmiBloc>().currentWeight.toStringAsFixed(1),
          width: 120,
        ),
      ],
    ));
  }

  Widget changeMode() {
    return Builder(
      builder: (context) {
        final unit = context.watch<CuWeightBmiBloc>().isWeightKG ? "Kg" : 'Ib';
        return BaseRoundedButton.all(
          onTap: () => context
              .read<CuWeightBmiBloc>()
              .add(const CuWeightBmiEvent.changeModeWeight()),
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
          AppInput(
            key: UniqueKey(),
            onChange: (value) {
              final Debounce debounce =
                  Debounce(const Duration(milliseconds: 1800));
              debounce.call(() {
                context
                    .read<CuWeightBmiBloc>()
                    .add(CuWeightBmiEvent.changeHeight(value));
              });
            },
            width: 120,
            inputText: context
                .watch<CuWeightBmiBloc>()
                .currentHeight
                .toStringAsFixed(1),
          ),
        ],
      ),
    );
  }

  Widget changeMode() {
    return Builder(
      builder: (context) {
        final unit = context.watch<CuWeightBmiBloc>().isHeightCM ? 'Cm' : 'Fit';
        return BaseRoundedButton.all(
          onTap: () => context
              .read<CuWeightBmiBloc>()
              .add(const CuWeightBmiEvent.changeModeHeight()),
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
