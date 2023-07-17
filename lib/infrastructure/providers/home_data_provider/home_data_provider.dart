import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/home_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/orders_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/profile_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/search_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeDataProvider extends ChangeNotifier {
  late ChangeNotifierProviderRef<HomeDataProvider> ref;
  HomeDataProvider(this.ref);

  final List<Widget> homeNavigation = [
    const HomeMainScreen(),
    const SearchMainScreen(),
    const OrdersMainScreen(),
    const ProfileMainScreen(),
  ];

  int selectedHomeIndex = 0;

  setSelectedHomeIndex(int index) {
    selectedHomeIndex = index;
    notifyListeners();
  }
}
