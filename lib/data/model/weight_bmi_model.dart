// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:heathy_app/config/hive/hive_constansts.dart';
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
