import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/blood_sugar/blood_sugar_bloc.dart';
import 'package:heathy_app/data/enums/blood_sugar.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:heathy_app/res/widgets/dialog_info.dart';

class PickTypeWidget extends StatelessWidget {
  const PickTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      DialogInfo(
              "State",
              BlocProvider.value(
                value: BlocProvider.of<BloodSugarBloc>(context),
                child: const _PickTypeDialog(),
              ),
              context)
          .show();
    }

    return AppButtonInner(
        padding: const EdgeInsets.all(8),
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<BloodSugarBloc>().typeSelected.toText,
              style: AppStyle.normalText,
            ),
          ],
        ));
  }
}

class _PickTypeDialog extends StatelessWidget {
  const _PickTypeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Widget button(BloodSugarTypeState value) {
      bool isSelected = context.watch<BloodSugarBloc>().typeSelected == value;
      return BaseRoundedButton.all(
          onTap: () {
            context
                .read<BloodSugarBloc>()
                .add(BloodSugarEvent.onChangeType(value));
          },
          backgroundColor: isSelected ? Colors.amber : Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            children: [
              Text(value.toText),
              const Spacer(),
              Icon(
                Icons.circle,
                color: isSelected ? Colors.white : Colors.black,
              )
            ],
          ));
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [...BloodSugarTypeState.values.map((e) => button(e))],
    );
  }
}
