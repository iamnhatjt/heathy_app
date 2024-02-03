import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/bloc/blood_sugar/blood_sugar_bloc.dart';
import 'package:heathy_app/data/enums/blood_sugar.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/data/model/blood_sugar_model.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/app_dialog.dart';
import 'package:heathy_app/res/widgets/dialog_info.dart';
import 'package:heathy_app/ui/blood_sugar/widgets/pick_type_widget.dart';

AppDialog bloodSugarDialog(
    {BloodSugarModel? model, required BuildContext context}) {
  return AppDialog(
    child: BlocProvider.value(
      value: BlocProvider.of<BloodSugarBloc>(context),
      child: const _BloodSugarDialog(),
    ),
    confirm: (date, age, sex) {
      final mode = context.read<BloodSugarBloc>().isMgDl;
      final currentBlood = context.read<BloodSugarBloc>().currentBlood;
      BloodSugarModel bloodSugarModel = BloodSugarModel(
        bloodSugar: currentBlood,
        age: age,
        dateTime: date,
        bloodSugarType:
            (mode ? convertTypeMg(currentBlood) : convertTypeMm(currentBlood))
                .toString(),
        sex: sex.toString(),
      );
      context.read<BloodSugarBloc>().add(BloodSugarEvent.add(bloodSugarModel));
      context.pop();
    },
    initAge: model?.age,
    initDate: model?.dateTime,
    sex: getSex(model?.sex),
  );
}

class _BloodSugarDialog extends StatelessWidget {
  const _BloodSugarDialog();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PickTypeWidget(),
        SizedBox(height: 20),
        _InputBlood(),
        SizedBox(height: 20),
        _BloodSugarType(),
        SizedBox(height: 20),
        InfoBlood(),
      ],
    );
  }
}

class _InputBlood extends StatelessWidget {
  const _InputBlood();

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController(
        text: context.watch<BloodSugarBloc>().currentBlood.toString());
    Widget changeMode() {
      void onTap() {
        context.read<BloodSugarBloc>().add(const BloodSugarEvent.onChangMode());
      }

      final textMode =
          context.watch<BloodSugarBloc>().isMgDl ? "mg/dL" : 'mmol/l';
      return BaseRoundedButton.all(
        onTap: onTap,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Row(
          children: [
            const Spacer(),
            Text(
              textMode,
              style: AppStyle.normalText,
            ),
            const Spacer(),
            const Icon(
              Icons.change_circle_outlined,
              color: Colors.blueAccent,
            )
          ],
        ),
      );
    }

    return AppButtonInner(
        child: SizedBox(
      width: 200,
      child: Column(
        children: [
          changeMode(),
          inputValue(textEditingController, context),
        ],
      ),
    ));
  }

  TextField inputValue(
      TextEditingController textEditingController, BuildContext context) {
    return TextField(
      onSubmitted: (value) => context
          .read<BloodSugarBloc>()
          .add(BloodSugarEvent.onChangeBlood(value)),
      controller: textEditingController,
      inputFormatters: [
        TextInputFormatter.withFunction((oldValue, newValue) {
          final newString = newValue.text.replaceAll(',', '.');
          final dotCount = newString.split('.').length - 1;
          if (dotCount > 1) {
            return oldValue;
          }
          return newValue.copyWith(text: newString);
        })
      ],
      maxLength: 6,
      keyboardType: TextInputType.number,
      maxLines: 1,
      style: AppStyle.buttonLarge,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8)),
    );
  }
}

class _BloodSugarType extends StatelessWidget {
  const _BloodSugarType();

  @override
  Widget build(BuildContext context) {
    final type = context.watch<BloodSugarBloc>().typeBlood;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          type.toText,
          style: AppStyle.buttonLarge.copyWith(color: type.getColorText),
        )
      ],
    );
  }
}

class InfoBlood extends StatelessWidget {
  const InfoBlood({super.key});

  @override
  Widget build(BuildContext context) {
    final typeBlood = context.watch<BloodSugarBloc>().typeBlood;
    final mode = context.watch<BloodSugarBloc>().isMgDl;
    final unit = mode ? "mg/dl" : 'mmol/l';
    final displayText =
        mode ? "${typeBlood.infoMg} $unit" : '${typeBlood.infoMMol} $unit';

    void onTap() {
      DialogInfo(
        'Blood Sugar',
        bloodShowInfo(context),
        context,
      ).show();
    }

    return BaseRoundedButton.all(
        onTap: onTap,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            Expanded(child: Center(child: Text(displayText))),
            const Icon(
              Icons.info_outline_rounded,
            )
          ],
        ));
  }

  Widget bloodShowInfo(BuildContext context) {
    Widget eachRow(BloodSugarType type) {
      String display =
          context.read<BloodSugarBloc>().isMgDl ? type.infoMg : type.infoMMol;
      return BaseRoundedButton.all(
          margin: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 8,
          ),
          backgroundColor: type.getColor,
          child: Row(
            children: [
              Text(type.toText, style: AppStyle.normalText),
              const Spacer(),
              Text(display, style: AppStyle.normalText),
            ],
          ));
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: BloodSugarType.values.map((e) => eachRow(e)).toList(),
    );
  }
}
