import 'package:heathy_app/config/hive/hive_constansts.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

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
  String? sex;

  HeartRateModel({
    this.heartRate,
    this.dateTime,
    this.age,
    this.sex,
  }) {
    id = const Uuid().v1();
  }
}
