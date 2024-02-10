import 'package:get_it/get_it.dart';
import 'package:heathy_app/config/hive/hive_config.dart';
import 'package:heathy_app/data/repository/local_repository.dart';
import 'package:heathy_app/data/usecase/blood_sugar_usecase.dart';
import 'package:heathy_app/data/usecase/heart_rate_usecase.dart';
import 'package:heathy_app/data/usecase/weight_bmi_usecase.dart';
import 'package:heathy_app/res/util/navigation_service.dart';

final getIt = GetIt.instance;
void getItSetUp() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerLazySingleton(() => HiveConfig());

  getIt.registerLazySingleton(() => LocalRepository(getIt()));
  getIt.registerLazySingleton(() => HeartRateUseCase(getIt()));
  getIt.registerLazySingleton(() => BloodSugarUseCase(getIt()));
  getIt.registerLazySingleton(() => WeightBmiUseCase(getIt()));
}
