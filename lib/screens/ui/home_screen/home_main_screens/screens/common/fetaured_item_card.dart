import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class FeaturedItemCard extends StatelessWidget {
  final String title;
  final String image;
  const FeaturedItemCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: MediaQuery.of(context).size.width * 0.42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 10),
          AppText(
            title: title,
            fontSize: 16,
            fontWeight: FontWeight.w300,
            titleColor: themeColor?.activeBlack,
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const AppText(
                title: "\$\$",
                fontSize: 14,
              ),
              const SizedBox(width: 11),
              Container(
                height: 4,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: themeColor?.activeGrey,
                ),
              ),
              const SizedBox(width: 8),
              AppText(
                title: "Chinese",
                fontSize: 14,
                titleColor: themeColor?.activeBlack,
              )
            ],
          )
        ],
      ),
    );
  }
}
