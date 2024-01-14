import 'package:flutter/material.dart';
import 'package:heathy_app/config/hive/hive_config.dart';
import 'package:heathy_app/config/router.dart';

import 'config/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getItSetUp();
  await getIt<HiveConfig>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
