import 'package:heathy_app/config/hive/hive_constansts.dart';
import 'package:heathy_app/data/model/blood_sugar_model.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:heathy_app/data/model/weight_bmi_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  late final Box<HeartRateModel> heartRateBox;
  late final Box<BloodSugarModel> bloodSugarBox;
  late final Box<WeightBMIModel> weightBmiBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(HeartRateModelAdapter());
    heartRateBox = await Hive.openBox(HiveBox.heartRate);
    Hive.registerAdapter(BloodSugarModelAdapter());
    bloodSugarBox = await Hive.openBox(HiveBox.bloodSugar);
    Hive.registerAdapter(WeightBMIModelAdapter());
    weightBmiBox = await Hive.openBox(HiveBox.weightBmi);
  }
}
