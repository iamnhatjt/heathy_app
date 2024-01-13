import 'package:heathy_app/data/repository/local_repository.dart';

import '../model/heart_rate_model.dart';

class HeartRateUseCase {
  final LocalRepository _localRepository;
  HeartRateUseCase(this._localRepository);

  List<HeartRateModel> getAllHeartRate() => _localRepository.getAllHeartRate();
}
