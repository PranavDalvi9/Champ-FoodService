import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/textform_field_widget/textform_field_widget.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/common/search_card.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class SearchMainScreen extends StatelessWidget {
  const SearchMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: CommonAppBarWidget(
        appTitle: AppText(
          title: "Search",
          fontSize: 24,
          fontWeight: FontWeight.w600,
          titleColor: themeColor?.activeBlack,
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextFormFieldWidget(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintText: "Search on foodly",
                enabledBorder: OutlineInputBorder(),
              ),
              const SizedBox(height: 34),
              AppText(
                title: "Top Restaurants",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                titleColor: themeColor?.activeBlack,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 15.0, // gap between adjacent chips
                    runSpacing: 20.0, // gap between lines
                    children: <Widget>[
                      for (int i = 0; i < searchData.length; i++)
                        SearchCard(
                          image: searchData[i]['image'],
                          title: searchData[i]['title'],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

final List searchData = [
  {
    'image': ImageConstants.search_01,
    'title': 'The Halal Guys',
  },
  {
    'image': ImageConstants.search_02,
    'title': 'Popeyes 1426 Flmst',
  },
  {
    'image': ImageConstants.search_03,
    'title': 'Mixt - Yerba Buena',
  },
  {
    'image': ImageConstants.search_04,
    'title': 'Split Bread - Russian',
  },
  {
    'image': ImageConstants.search_05,
    'title': 'Cookie Sandwich',
  },
  {
    'image': ImageConstants.search_06,
    'title': 'Cookie Sandwich Guys',
  },
];
