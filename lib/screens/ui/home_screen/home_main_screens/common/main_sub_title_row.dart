import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class MainSubTitleRow extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTabSubtitle;
  final EdgeInsets? padding;
  const MainSubTitleRow({super.key, required this.title, required this.subTitle, required this.onTabSubtitle, this.padding});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          AppText(
            title: title,
            fontSize: 26,
            fontWeight: FontWeight.w500,
            titleColor: themeColor?.activeBlack,
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTabSubtitle,
            child: AppText(
              title: subTitle,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              titleColor: themeColor?.accentYellow,
            ),
          ),
        ],
      ),
    );
  }
}
