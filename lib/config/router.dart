import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:heathy_app/bloc/heart_rate_bloc.dart';
import 'package:heathy_app/res/util/navigation_service.dart';
import 'package:heathy_app/ui/heart_rate/heart_rate_screen.dart';
import 'package:heathy_app/ui/home/home_screen.dart';

import 'di.dart';

class RouterUri {
  RouterUri._();
  static const home = '/';
  static const heartRate = '/heartRateScreen';
  static const weightBMI = '/weightBMI';
  static const bloodPressure = '/bloodPressure';
  static const bloodSugar = '/bloodSugar';
  static const foodScanner = '/foodScanner';
  static const insights = '/insights';
  static const alarm = '/alarm';
}

class AppRouter {
  AppRouter._();
  static final List<RouteBase> _listRouter = [
    GoRoute(
      path: RouterUri.home,
      builder: (context, state) => HomeScreen(key: state.pageKey),
    ),
    GoRoute(
      path: RouterUri.heartRate,
      builder: (context, state) => BlocProvider(
        create: (context) => HeartRateBloc(),
        child: HeartRateScreen(
          key: state.pageKey,
        ),
      ),
    ),
  ];

  static final GoRouter router = GoRouter(
    routes: _listRouter,
    navigatorKey: getIt<NavigationService>().navigatorKey,
  );
}
