import 'package:flutter/material.dart';

enum BmiTypeEnum {
  verySeverelyUnderWeight,
  severelyUnderWeight,
  underWeight,
  normal,
  overWeight,
  obeseclassI,
  obeseclassII,
  obeseclassIII,
}

extension BmiTypeExtention on BmiTypeEnum {
  String get toName {
    late String text;
    switch (this) {
      case BmiTypeEnum.verySeverelyUnderWeight:
        text = 'Very severely underweight';
        break;
      case BmiTypeEnum.severelyUnderWeight:
        text = 'Severely underweight';
        break;
      case BmiTypeEnum.underWeight:
        text = 'Under Weight';
        break;
      case BmiTypeEnum.normal:
        text = 'Normal';
        break;
      case BmiTypeEnum.overWeight:
        text = 'Overweight';
        break;
      case BmiTypeEnum.obeseclassI:
        text = 'Obese class I';
        break;
      case BmiTypeEnum.obeseclassII:
        text = 'Obese class II';
        break;
      case BmiTypeEnum.obeseclassIII:
        text = 'Obese class III';
        break;
    }
    return text;
  }

  String get bmiInfo {
    late String text;
    switch (this) {
      case BmiTypeEnum.verySeverelyUnderWeight:
        text = 'BMI < 16.0';
        break;
      case BmiTypeEnum.severelyUnderWeight:
        text = 'BMI 16.0 -16.9';
        break;
      case BmiTypeEnum.underWeight:
        text = 'BMI 17.0 - 18.4';
        break;
      case BmiTypeEnum.normal:
        text = 'BMI 18.5 - 24.9';
        break;
      case BmiTypeEnum.overWeight:
        text = 'BMI 25.0 - 29.9';
        break;
      case BmiTypeEnum.obeseclassI:
        text = 'BMI 30.0 - 34.9';
        break;
      case BmiTypeEnum.obeseclassII:
        text = 'BMI 35.0 - 39.9';
        break;
      case BmiTypeEnum.obeseclassIII:
        text = 'BMI > 40';
        break;
    }
    return text;
  }

  Color get toColor {
    late Color color;
    switch (this) {
      case BmiTypeEnum.verySeverelyUnderWeight:
        color = Colors.purple;
        break;
      case BmiTypeEnum.severelyUnderWeight:
        color = Colors.blue;
        break;
      case BmiTypeEnum.underWeight:
        color = Colors.blueAccent;
        break;
      case BmiTypeEnum.normal:
        color = Colors.green;
        break;
      case BmiTypeEnum.overWeight:
        color = Colors.orange;
        break;
      case BmiTypeEnum.obeseclassI:
        color = Colors.yellow;
        break;
      case BmiTypeEnum.obeseclassII:
        color = Colors.redAccent;
        break;
      case BmiTypeEnum.obeseclassIII:
        color = Colors.red;
        break;
    }
    return color;
  }
}
