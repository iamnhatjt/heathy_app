import 'package:heathy_app/config/hive/hive_constansts.dart';
import 'package:heathy_app/data/enums/sex.dart';
import 'package:hive/hive.dart';

part 'heart_rate_model.g.dart';

@HiveType(typeId: HiveConst.heartRate)
class HeartRateModel extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  int? heartRate;
  @HiveField(2)
  DateTime? dateTime;
  @HiveField(3)
  int? age;
  @HiveField(4)
  SexEnum? sex;

  HeartRateModel({
    this.id,
    this.heartRate,
    this.dateTime,
    this.age,
    this.sex,
  });
}
