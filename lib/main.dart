import 'package:champ_food_service/infrastructure/commons/constants/app_routers.dart';
import 'package:champ_food_service/infrastructure/commons/utils/navigation_constants.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Champ FoodService',
      darkTheme: darkTheme,
      theme: darkTheme,
      initialRoute: '/',
      onGenerateRoute: Routers.generateRoute,
      navigatorKey: NavigationService.navigatorKey,
    );
  }
}
