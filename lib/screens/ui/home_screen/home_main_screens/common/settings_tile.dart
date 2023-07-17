import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String leadingIcon;
  final String trallingIcon;
  const SettingsTile(
      {super.key, required this.title, required this.subTitle, required this.leadingIcon, required this.trallingIcon});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          SvgPicture.asset(leadingIcon),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: title,
                fontSize: 16,
                titleColor: themeColor?.activeBlack,
              ),
              AppText(title: subTitle, fontSize: 12),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(trallingIcon),
        ],
      ),
    );
  }
}
