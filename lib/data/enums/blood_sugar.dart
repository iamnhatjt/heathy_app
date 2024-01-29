import 'package:flutter/material.dart';

enum BloodSugarState {
  duringFasting,
  beforeEating,
  afterEating,
  beforeBedTime,
  beforeWorkout,
  afterWorkout,
}

extension ExtendsionBloodSugarState on BloodSugarState {
  String get toText {
    switch (this) {
      case BloodSugarState.duringFasting:
        return "During fasting";
      case BloodSugarState.beforeEating:
        return "Before eating";
      case BloodSugarState.afterEating:
        return "After eating";
      case BloodSugarState.beforeBedTime:
        return "Before bed time";
      case BloodSugarState.beforeWorkout:
        return "Before workout";
      case BloodSugarState.afterWorkout:
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
