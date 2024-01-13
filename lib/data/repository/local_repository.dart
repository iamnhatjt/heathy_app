import 'package:heathy_app/config/hive/hive_config.dart';

import '../model/heart_rate_model.dart';

class LocalRepository {
  final HiveConfig _hiveConfig;

  LocalRepository(this._hiveConfig);

  //handle heart rate

  List<HeartRateModel> getAllHeartRate() {
    return _hiveConfig.heartRateBox.values.toList();
  }
}
