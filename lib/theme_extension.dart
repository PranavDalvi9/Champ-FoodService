import 'package:flutter/material.dart';

import 'infrastructure/commons/constants/color_constants.dart';

@immutable
class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.activeOrange,
    required this.activeBlack,
    required this.activeGrey,
    required this.activeWhite,
    required this.activePureWhite,
    required this.accentYellow,
    required this.accentLightlue,
    required this.accentDarkblue,
  });

  final Color? primaryColor;
  final Color? secondaryColor;
  final Color? activeOrange;
  final Color? activeBlack;
  final Color? activeGrey;
  final Color? activeWhite;
  final Color? activePureWhite;
  final Color? accentYellow;
  final Color? accentLightlue;
  final Color? accentDarkblue;

  @override
  MyColors copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? activeOrange,
    Color? activeBlack,
    Color? activeGrey,
    Color? activeWhite,
    Color? activePureWhite,
    Color? accentYellow,
    Color? accentLightlue,
    Color? accentDarkblue,
  }) {
    return MyColors(
      primaryColor: primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      activeOrange: activeOrange ?? this.activeOrange,
      activeBlack: activeBlack ?? this.activeBlack,
      activeGrey: activeGrey ?? this.activeGrey,
      activeWhite: activeWhite ?? this.activeWhite,
      activePureWhite: activePureWhite ?? this.activePureWhite,
      accentYellow: accentYellow ?? this.accentYellow,
      accentLightlue: accentLightlue ?? this.accentLightlue,
      accentDarkblue: accentDarkblue ?? this.accentDarkblue,
    );
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t),
      activeOrange: Color.lerp(activeOrange, other.activeOrange, t),
      activeBlack: Color.lerp(activeBlack, other.activeBlack, t),
      activeGrey: Color.lerp(activeGrey, other.activeGrey, t),
      activeWhite: Color.lerp(activeWhite, other.activeWhite, t),
      activePureWhite: Color.lerp(activePureWhite, other.activePureWhite, t),
      accentYellow: Color.lerp(accentYellow, other.accentYellow, t),
      accentLightlue: Color.lerp(accentLightlue, other.accentLightlue, t),
      accentDarkblue: Color.lerp(accentDarkblue, other.accentDarkblue, t),
    );
  }
}

ThemeData darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(backgroundColor: ColorConstants.activePureWhite, elevation: 0, scrolledUnderElevation: 0),
  scaffoldBackgroundColor: ColorConstants.activePureWhite,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: ColorConstants.activePureWhite),
  extensions: <ThemeExtension<dynamic>>[
    const MyColors(
      primaryColor: ColorConstants.primary,
      secondaryColor: ColorConstants.secondary,
      activeOrange: ColorConstants.activeOrange,
      activeBlack: ColorConstants.activeBlack,
      activeGrey: ColorConstants.activeGrey,
      activeWhite: ColorConstants.activeWhite,
      activePureWhite: ColorConstants.activePureWhite,
      accentYellow: ColorConstants.accentYellow,
      accentLightlue: ColorConstants.accentLightlue,
      accentDarkblue: ColorConstants.accentDarkblue,
    ),
  ],
);
