import 'package:get_it/get_it.dart';
import 'package:heathy_app/res/util/navigation_service.dart';

final getIt = GetIt.instance;
void getItSetUp() {
  getIt.registerLazySingleton(() => NavigationService());
}
