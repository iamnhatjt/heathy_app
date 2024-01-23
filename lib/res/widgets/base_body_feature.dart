import 'package:flutter/material.dart';
import 'package:heathy_app/gen/assets.gen.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_button_inner.dart';
import 'package:lottie/lottie.dart';

class BaseBody extends StatelessWidget {
  const BaseBody(
      {super.key,
      required this.onChangeDateRange,
      this.onTapAdd,
      this.onTapAlarm,
      required this.child,
      this.padding});

  final Function(DateTimeRange value) onChangeDateRange;
  final VoidCallback? onTapAdd;
  final VoidCallback? onTapAlarm;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        children: [
          handleFilterExport(),
          Expanded(child: child),
          handleAddMethod(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Row handleFilterExport() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _PickDateTime(onChangeDateRange: onChangeDateRange),
        const AppButtonInner(
          radius: 12,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          innerColors: Colors.blueAccent,
          child: Text(
            'Export',
            style: TextStyle(color: Colors.blueAccent),
          ),
        )
      ],
    );
  }

  Row handleAddMethod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BaseRoundedButton.all(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            onTap: onTapAlarm,
            child: Column(
              children: [
                SizedBox(height: 40, child: Lottie.asset(Assets.jsons.alarm)),
                const Text("Set Alarm"),
              ],
            )),
        BaseRoundedButton.all(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            onTap: onTapAdd,
            backgroundColor: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(
                    height: 40,
                    child: Lottie.asset(
                      Assets.jsons.alarm,
                    )),
                Text(
                  "Add Data",
                  style: AppStyle.normalText.copyWith(color: Colors.white),
                ),
              ],
            )),
      ],
    );
  }
}

class _PickDateTime extends StatefulWidget {
  const _PickDateTime({
    required this.onChangeDateRange,
  });
  final Function(DateTimeRange value) onChangeDateRange;

  @override
  State<_PickDateTime> createState() => _PickDateTimeState();
}

class _PickDateTimeState extends State<_PickDateTime> {
  DateTimeRange dateTimeRange = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 7)),
      end: DateTime.now());

  void onTap() async {
    final newDateRange = await showDateRangePicker(
        barrierDismissible: false,
        context: context,
        initialDateRange: dateTimeRange,
        firstDate: DateTime(2002),
        lastDate: DateTime.now());

    setState(() {
      dateTimeRange = newDateRange ?? dateTimeRange;
      widget.onChangeDateRange(dateTimeRange);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppButtonInner(
      onTap: onTap,
      innerColors: Colors.blueAccent,
      radius: 12,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        dateTimeRange.convertDate(),
        style: const TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }
}
