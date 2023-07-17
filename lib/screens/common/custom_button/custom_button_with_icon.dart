import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String title;
  final String icon;
  final Color bgColor;
  const CustomButtonWithIcon({super.key, required this.title, required this.icon, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: bgColor,
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(
            width: 30,
          ),
          AppText(
            title: title,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            titleColor: themeColor?.activePureWhite,
          )
        ],
      ),
    );
  }
}
