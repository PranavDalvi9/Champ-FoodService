import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/common/featured_partners_card.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class FeaturedPartners extends StatelessWidget {
  const FeaturedPartners({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: CommonAppBarWidget(
        isBack: true,
        centerTitle: true,
        appTitle: AppText(
          title: "Featured Partners",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          titleColor: themeColor?.activeBlack,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Wrap(
              spacing: 15.0, // gap between adjacent chips
              runSpacing: 20.0, // gap between lines
              children: <Widget>[
                for (int i = 0; i < featuredPartnersData.length; i++)
                  FeaturedPartnerCard(
                    onTap: () {
                      Navigator.pushNamed(context, RouteConstants.resturantPageRoute);
                    },
                    image: featuredPartnersData[i]['image'] ?? '',
                    time: featuredPartnersData[i]['time'] ?? '',
                    mode: featuredPartnersData[i]['mode'] ?? '',
                    rating: featuredPartnersData[i]['rating'] ?? '',
                    title: featuredPartnersData[i]['title'] ?? '',
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final featuredPartnersData = [
  {
    'image': ImageConstants.featuredPartner01,
    'time': '25min',
    'mode': 'Free',
    'rating': '4.5',
    'title': 'Tacos Nanchas',
  },
  {
    'image': ImageConstants.featuredPartner02,
    'time': '25min',
    'mode': 'Free',
    'rating': '4.5',
    'title': "McDonald's",
  },
  {
    'image': ImageConstants.featuredPartner03,
    'time': '25min',
    'mode': 'Free',
    'rating': '4.5',
    'title': 'KFC Foods',
  },
  {
    'image': ImageConstants.featuredPartner04,
    'time': '25min',
    'mode': 'Free',
    'rating': '4.5',
    'title': "Cafe MayField’s",
  },
  {
    'image': ImageConstants.featuredPartner05,
    'time': '25min',
    'mode': 'Free',
    'rating': '4.5',
    'title': 'Food Nanchas',
  },
  {
    'image': ImageConstants.featuredPartner01,
    'time': '25min',
    'mode': 'Free',
    'rating': '4.5',
    'title': 'Nanchas Tacos',
  },
];
