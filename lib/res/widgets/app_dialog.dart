import 'package:flutter/material.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:heathy_app/res/util/extensions/datetime_extension.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/base_dialog.dart';
import 'package:heathy_app/res/widgets/pick_age_widget.dart';
import 'package:heathy_app/res/widgets/pick_sex_widget.dart';

class AppDialog extends BaseDialog {
  final DateTime? initDate;
  final int? initAge;
  final SexEnum? sex;
  Widget? child;
  Function(DateTime, int age, SexEnum sex)? confirm;

  AppDialog({this.initDate, this.initAge, this.sex, this.child, this.confirm}) {
    body(Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        pickDate(),
        const SizedBox(
          height: 30,
        ),
        child ?? const SizedBox.shrink(),
        const SizedBox(
          height: 30,
        ),
        pickAgeSex(),
        const SizedBox(
          height: 30,
        ),
      ],
    ));
  }

  late DateTime _currentDate = initDate ?? DateTime.now();
  late TimeOfDay _currentTime = _currentDate.convertToTimeOfDay!;

  late int _currentAge = initAge ?? 20;
  late SexEnum _currentSex = sex ?? SexEnum.male;

  void _onchangeDate(DateTime value) {
    _currentDate = value;
  }

  void _onchangeTime(TimeOfDay value) {
    _currentTime = value;
  }

  void _onChangeAge(int value) {
    _currentAge = value;
  }

  void _onChangeSex(SexEnum value) {
    _currentSex = value;
  }

  Widget pickDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DateTimeButtonPick(initDate: initDate, onChange: _onchangeDate),
        TimePickButton(
          initDate: initDate.convertToTimeOfDay,
          onChange: _onchangeTime,
        )
      ],
    );
  }

  Widget pickAgeSex() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PickAgeButton(age: initAge, onChange: _onChangeAge),
        PickSexButton(
          initSex: sex,
          onChangeSex: _onChangeSex,
        )
      ],
    );
  }

  @override
  void confirmAction(BuildContext context) {
    final dateTime = DateTime(_currentDate.year, _currentDate.month,
        _currentDate.day, _currentTime.hour, _currentTime.minute);
    confirm!(dateTime, _currentAge, _currentSex);
  }
}

class DateTimeButtonPick extends StatefulWidget {
  const DateTimeButtonPick({super.key, this.initDate, required this.onChange});
  final DateTime? initDate;
  final Function(DateTime value) onChange;

  @override
  State<DateTimeButtonPick> createState() => _DateTimeButtonPickState();
}

class _DateTimeButtonPickState extends State<DateTimeButtonPick> {
  late DateTime currentDate = widget.initDate ?? DateTime.now();

  @override
  Widget build(BuildContext context) {
    void onTap() async {
      final newDate = await showDatePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime.now(),
        initialDate: currentDate,
      );
      setState(() {
        currentDate = newDate ?? currentDate;
        widget.onChange(currentDate);
      });
    }

    return BaseRoundedButton.all(
        onTap: onTap, child: Text(currentDate.defaultFormat()));
  }
}

class TimePickButton extends StatefulWidget {
  const TimePickButton({super.key, this.initDate, required this.onChange});
  final Function(TimeOfDay value) onChange;

  final TimeOfDay? initDate;

  @override
  State<TimePickButton> createState() => _TimePickButtonState();
}

class _TimePickButtonState extends State<TimePickButton> {
  late TimeOfDay currentTime = widget.initDate ?? TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    void onTap() async {
      final newTime =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      setState(() {
        currentTime = newTime ?? currentTime;
        widget.onChange(currentTime);
      });
    }

    return BaseRoundedButton.all(
      onTap: onTap,
      child: Text(currentTime.defaultFormat()),
    );
  }
}
