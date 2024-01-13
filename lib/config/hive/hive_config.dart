import 'package:heathy_app/config/hive/hive_constansts.dart';
import 'package:heathy_app/data/model/heart_rate_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  late final Box<HeartRateModel> heartRateBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(HeartRateModelAdapter());
    heartRateBox = await Hive.openBox(HiveBox.heartRate);
  }
}
