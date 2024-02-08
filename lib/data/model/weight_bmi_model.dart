// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:heathy_app/config/hive/hive_constansts.dart';
import 'package:heathy_app/data/enums/bmi.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

part 'weight_bmi_model.g.dart';

@HiveType(typeId: HiveConst.weightBmi)
class WeightBMIModel extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  DateTime? dateTime;
  @HiveField(2)
  double? weight; //default kg
  @HiveField(3)
  double? height; // default cm
  @HiveField(4)
  int? age;
  @HiveField(5)
  String? sex;
  @HiveField(6)
  WeightBMIModel({
    this.id,
    this.dateTime,
    this.weight,
    this.height,
    this.age,
    this.sex,
  }) {
    id = const Uuid().v1();
  }
}

extension WeightBmiExtention on WeightBMIModel {
  BmiTypeEnum get toBmi {
    final double bmi = weight! / height! / height!;
    if (bmi < 16.0) {
      return BmiTypeEnum.verySeverelyUnderWeight;
    }
    if (bmi < 16.9) {
      return BmiTypeEnum.severelyUnderWeight;
    }
    if (bmi < 18.4) {
      return BmiTypeEnum.underWeight;
    }
    if (bmi < 24.9) {
      return BmiTypeEnum.normal;
    }
    if (bmi < 29.9) {
      return BmiTypeEnum.overWeight;
    }
    if (bmi < 34.9) {
      return BmiTypeEnum.obeseclassI;
    }
    if (bmi < 39.9) {
      return BmiTypeEnum.obeseclassII;
    } else {
      return BmiTypeEnum.obeseclassIII;
    }
  }
}
