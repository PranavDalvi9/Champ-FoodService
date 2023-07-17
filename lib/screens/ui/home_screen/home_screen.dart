import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/infrastructure/providers/provider_registration.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();
    final homeProviderWatch = ref.watch(homeDataProvider);
    final homeProviderRead = ref.read(homeDataProvider);

    void onItemTapped(int index) {
      homeProviderRead.setSelectedHomeIndex(index);
    }

    return Scaffold(
      // appBar: CommonAppBarWidget(),
      body: homeProviderWatch.homeNavigation[homeProviderWatch.selectedHomeIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: themeColor?.accentYellow,
        unselectedItemColor: themeColor?.activeGrey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: homeProviderWatch.selectedHomeIndex,
        backgroundColor: themeColor?.activeWhite,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstants.homeIcon),
            activeIcon: SvgPicture.asset(ImageConstants.homeIconSelected),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstants.searchIcon),
            activeIcon: SvgPicture.asset(ImageConstants.searchIconSelected),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstants.ordersIcon),
            activeIcon: SvgPicture.asset(ImageConstants.ordersIconSelected),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageConstants.profileIcon),
            activeIcon: SvgPicture.asset(ImageConstants.profileIconSelected),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
