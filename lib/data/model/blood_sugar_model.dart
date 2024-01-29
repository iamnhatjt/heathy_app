// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:heathy_app/config/hive/hive_constansts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

part 'blood_sugar_model.g.dart';

@HiveType(typeId: HiveConst.bloodSugar)
class BloodSugarModel extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  DateTime? dateTime;
  @HiveField(2)
  // BloodSugartype enum
  String? bloodSugarType;
  @HiveField(3)
  int? age;
  @HiveField(4)
  String? sex;
  @HiveField(5)
  BloodSugarModel({
    this.id,
    this.dateTime,
    this.bloodSugarType,
    this.age,
    this.sex,
  }) {
    id = const Uuid().v1();
  }
}
