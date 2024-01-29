import 'package:heathy_app/config/hive/hive_config.dart';
import 'package:heathy_app/data/model/blood_sugar_model.dart';

import '../model/heart_rate_model.dart';

class LocalRepository {
  final HiveConfig _hiveConfig;

  LocalRepository(this._hiveConfig);

  //handle heart rate box
  List<HeartRateModel> getAllHeartRate() {
    return _hiveConfig.heartRateBox.values.toList();
  }

  Future<void> addHeartRate(HeartRateModel heartRateModel) {
    return _hiveConfig.heartRateBox.add(heartRateModel);
  }

  HeartRateModel getHeartRate(String id) {
    return getAllHeartRate().firstWhere((element) => element.id == id);
  }

  Future<void> updateHeartRate(String id, HeartRateModel heartRateModel) {
    List<HeartRateModel> listHeartRates = getAllHeartRate();
    final int at = listHeartRates.indexWhere((element) => element.id == id);
    return _hiveConfig.heartRateBox.putAt(at, heartRateModel);
  }

  Future<void> deleteHeartRate(String id) {
    final index = getAllHeartRate().indexWhere((element) => element.id == id);
    return _hiveConfig.heartRateBox.deleteAt(index);
  }

  // handle blood sugar box
  List<BloodSugarModel> getAllSugarBox() {
    return _hiveConfig.bloodSugarBox.values.toList();
  }

  Future<void> addBloodSugar(BloodSugarModel bloodSugar) {
    return _hiveConfig.bloodSugarBox.add(bloodSugar);
  }

  BloodSugarModel getBloodSugar(String id) {
    return getAllSugarBox().firstWhere((element) => element.id == id);
  }

  Future<void> updateBloodSugar(String id, BloodSugarModel bloodSugar) {
    List<BloodSugarModel> listSugars = getAllSugarBox();
    final int at = listSugars.indexWhere((element) => element.id == id);
    return _hiveConfig.bloodSugarBox.putAt(at, bloodSugar);
  }

  Future<void> deleteBloodSugar(String id) {
    final index = getAllSugarBox().indexWhere((element) => element.id == id);
    return _hiveConfig.bloodSugarBox.deleteAt(index);
  }
}
