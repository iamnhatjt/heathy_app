import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

enum BloodSugarTypeState {
  allType,
  duringFasting,
  beforeEating,
  afterEating,
  beforeBedTime,
  beforeWorkout,
  afterWorkout,
}

extension ExtendsionBloodSugarState on BloodSugarTypeState {
  String get toText {
    switch (this) {
      case BloodSugarTypeState.allType:
        return "All type";
      case BloodSugarTypeState.duringFasting:
        return "During fasting";
      case BloodSugarTypeState.beforeEating:
        return "Before eating";
      case BloodSugarTypeState.afterEating:
        return "After eating";
      case BloodSugarTypeState.beforeBedTime:
        return "Before bed time";
      case BloodSugarTypeState.beforeWorkout:
        return "Before workout";
      case BloodSugarTypeState.afterWorkout:
        return "After workout";
    }
  }
}

enum BloodSugarType {
  low,
  normal,
  preDiabetes,
  diabetes,
}

extension ExtensionBloodSugarType on BloodSugarType {
  Color get getColor {
    switch (this) {
      case BloodSugarType.low:
        return Colors.purpleAccent;

      case BloodSugarType.normal:
        return Colors.greenAccent;
      case BloodSugarType.preDiabetes:
        return Colors.yellowAccent;
      case BloodSugarType.diabetes:
        return Colors.redAccent;
    }
  }

  Color get getColorText {
    switch (this) {
      case BloodSugarType.low:
        return Colors.purple;

      case BloodSugarType.normal:
        return Colors.green;
      case BloodSugarType.preDiabetes:
        return Colors.yellow;
      case BloodSugarType.diabetes:
        return Colors.red;
    }
  }

  String get toText {
    switch (this) {
      case BloodSugarType.low:
        return "Low";
      case BloodSugarType.normal:
        return "Normal";
      case BloodSugarType.preDiabetes:
        return "Pre-diabetes";
      case BloodSugarType.diabetes:
        return "Diabetes";
    }
  }

  String get infoMMol {
    switch (this) {
      case BloodSugarType.low:
        return "<4.0";
      case BloodSugarType.normal:
        return "4.0-5.5";
      case BloodSugarType.preDiabetes:
        return "5.5-7.0";
      case BloodSugarType.diabetes:
        return ">7.0";
      //trinh duong nhatb
    }
  }

  String get infoMg {
    switch (this) {
      case BloodSugarType.low:
        return "<72";
      case BloodSugarType.normal:
        return "72-99";
      case BloodSugarType.preDiabetes:
        return "99-126";
      case BloodSugarType.diabetes:
        return ">126";
    }
  }
}

BloodSugarType convertTypeMm(double value) {
  switch (value) {
    case <= 4.0:
      return BloodSugarType.low;
    case <= 5.5:
      return BloodSugarType.normal;
    case <= 7.0:
      return BloodSugarType.preDiabetes;
    default:
      return BloodSugarType.diabetes;
  }
}

BloodSugarType convertTypeMg(double value) {
  switch (value) {
    case <= 72:
      return BloodSugarType.low;
    case <= 99:
      return BloodSugarType.normal;
    case <= 126:
      return BloodSugarType.preDiabetes;
    default:
      return BloodSugarType.diabetes;
  }
}

BloodSugarType? convertBloodSugarFromString(String value) {
  return BloodSugarType.values.firstWhereOrNull((e) => e.toString() == value);
}
