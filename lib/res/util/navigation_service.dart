import 'package:flutter/cupertino.dart';
import 'package:heathy_app/config/di.dart';

class NavigationService {
  final navigatorKey = GlobalKey<NavigatorState>();
  BuildContext get navigatorContext => navigatorKey.currentState!.context;
}

BuildContext get currentContext => getIt<NavigationService>().navigatorContext;
