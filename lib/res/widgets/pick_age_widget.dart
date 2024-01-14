import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/base_dialog.dart';

class PickAgeButton extends StatefulWidget {
  const PickAgeButton({super.key, this.age, required this.onChange});
  final int? age;
  final Function(int value) onChange;

  @override
  State<PickAgeButton> createState() => _PickAgeButtonState();
}

class _PickAgeButtonState extends State<PickAgeButton> {
  late int currentAge = widget.age ?? 20;

  void _onTap() {
    final dialog = PickAgeDialog(
      initAge: currentAge,
      confirmAge: (value) {
        setState(() {
          currentAge = value;
          widget.onChange(value);
        });
      },
    );
    dialog.show();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoundedButton(
      onTap: _onTap,
      child: Text(
        "Age: $currentAge",
        style: const TextStyle(
          shadows: [Shadow(offset: Offset(0, -8), color: Colors.black)],
          decoration: TextDecoration.underline,
        ).copyWith(color: Colors.transparent),
      ),
    );
  }
}

final class PickAgeDialog extends BaseDialog {
  final int initAge;
  final Function(int value) confirmAge;
  PickAgeDialog({required this.initAge, required this.confirmAge}) {
    body(pickAge());
  }

  late int currentAge = initAge;

  Widget pickAge() {
    final listAges = [];
    for (int i = 0; i <= 100; i++) {
      listAges.add(i);
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: CupertinoPicker(
          itemExtent: 50,
          diameterRatio: 2,
          offAxisFraction: 0.3,
          scrollController: FixedExtentScrollController(
            initialItem: initAge,
          ),
          onSelectedItemChanged: (value) {
            currentAge = value;
          },
          children: listAges
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
    confirmAge(currentAge);
    context.pop();
  }

  @override
  Widget? get title => const Text(
        "Choose your age",
      );
}
