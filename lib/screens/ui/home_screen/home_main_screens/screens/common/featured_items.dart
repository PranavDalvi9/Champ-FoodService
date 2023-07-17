import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/common/fetaured_item_card.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppText(
            title: "Featured Items",
            fontSize: 20,
            fontWeight: FontWeight.w300,
            titleColor: themeColor?.activeBlack,
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 240,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredItemCardData.length,
            itemBuilder: (context, ind) {
              return FeaturedItemCard(
                image: featuredItemCardData[ind]['image'] ?? "",
                title: featuredItemCardData[ind]['title'] ?? "",
              );
            },
          ),
        )
      ],
    );
  }
}

const featuredItemCardData = [
  {
    'image': ImageConstants.fetauredItem01,
    'title': 'Cookie Sandwich',
  },
  {
    'image': ImageConstants.fetauredItem02,
    'title': 'Chow Fun',
  },
  {
    'image': ImageConstants.fetauredItem03,
    'title': 'Dim SUm',
  },
];
