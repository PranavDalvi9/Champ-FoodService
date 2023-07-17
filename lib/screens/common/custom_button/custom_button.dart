import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final double? leftRightPadding;
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.leftRightPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: leftRightPadding ?? leftRightPadding!),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            color: themeColor?.accentYellow,
            borderRadius: BorderRadius.circular(8),
          ),
          child: AppText(
            title: title,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            titleColor: themeColor?.activePureWhite,
            titleTextAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
