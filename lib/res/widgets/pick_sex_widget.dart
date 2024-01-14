import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/base_dialog.dart';

class PickSexButton extends StatefulWidget {
  final SexEnum? initSex;
  final Function(SexEnum value) onChangeSex;
  const PickSexButton({super.key, this.initSex, required this.onChangeSex});

  @override
  State<PickSexButton> createState() => _PickSexButtonState();
}

class _PickSexButtonState extends State<PickSexButton> {
  late SexEnum currentSex = widget.initSex ?? SexEnum.male;

  void _onTap() {
    final dialogSex = PickSexDialog(
      initSex: currentSex,
      confirmSex: (value) {
        setState(() {
          currentSex = value;

          widget.onChangeSex(value);
        });
      },
    );
    dialogSex.show();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoundedButton(
      onTap: _onTap,
      child: Text(
        "Sex: ${currentSex.name}",
        style: const TextStyle(
          shadows: [Shadow(offset: Offset(0, -8), color: Colors.black)],
          decoration: TextDecoration.underline,
        ).copyWith(color: Colors.transparent),
      ),
    );
  }
}

final class PickSexDialog extends BaseDialog {
  final SexEnum initSex;
  final Function(SexEnum value) confirmSex;
  PickSexDialog({required this.initSex, required this.confirmSex}) {
    body(pickAge());
  }

  late SexEnum currentSex = initSex;

  Widget pickAge() {
    const listSexs = SexEnum.values;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: CupertinoPicker(
          itemExtent: 50,
          diameterRatio: 2,
          offAxisFraction: 0.3,
          scrollController: FixedExtentScrollController(
            initialItem: SexEnum.values
                .indexWhere((element) => element.name == currentSex.name),
          ),
          onSelectedItemChanged: (value) {
            currentSex = SexEnum.values[value];
          },
          children: listSexs
              .map(
                (e) => Center(
                  child: Text(
                    e.toString(),
                    style: AppStyle.buttonLarge,
                  ),
                ),
              )
              .toList()),
    );
  }

  @override
  void confirmAction(BuildContext context) {
    confirmSex(currentSex);
    context.pop();
  }

  @override
  Widget? get title => const Text(
        "Choose gender",
      );
}
