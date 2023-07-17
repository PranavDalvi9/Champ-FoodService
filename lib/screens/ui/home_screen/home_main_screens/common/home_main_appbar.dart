import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeMainAppbar extends StatelessWidget {
  final EdgeInsets? padding;
  const HomeMainAppbar({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: padding ?? EdgeInsets.zero,
      height: 70,
      child: Column(
        children: [
          AppText(
            title: "Delivery to",
            fontSize: 12,
            titleColor: themeColor?.accentYellow,
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              const Spacer(),
              AppText(
                title: " HayStreet, Perth",
                fontSize: 20,
                titleColor: themeColor?.activeBlack,
              ),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(ImageConstants.downArrow),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.14,
              ),
              AppText(
                title: "Filter",
                fontSize: 16,
                titleColor: themeColor?.activeBlack,
              ),
              const SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
