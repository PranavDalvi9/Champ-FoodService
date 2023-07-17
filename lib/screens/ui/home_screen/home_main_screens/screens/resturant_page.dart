import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/common/featured_items.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/common/popular_card.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/common/resturant_details_card.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResturantPage extends StatefulWidget {
  const ResturantPage({super.key});

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

int isSelectedCategory = 0;

class _ResturantPageState extends State<ResturantPage> {
  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              SvgPicture.asset(
                ImageConstants.shareIcon,
                color: themeColor?.activeOrange,
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(
                ImageConstants.searchIconRes,
                color: themeColor?.activeOrange,
              ),
              const SizedBox(width: 20),
            ],
            iconTheme: const IconThemeData(color: Colors.black),
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                ImageConstants.singleResturantImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: ResturantDetailsCard()),
          const SliverToBoxAdapter(child: FeaturedItems()),
          SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < categoryFoodData.length; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelectedCategory = i;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: AppText(
                            title: categoryFoodData[i],
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            titleColor: isSelectedCategory == i ? themeColor?.activeBlack : themeColor?.activeGrey,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ],
          )),
          SliverToBoxAdapter(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                AppText(
                  title: "Most Populars",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  titleColor: themeColor?.activeBlack,
                ),
                for (int i = 0; i < mostPopularData.length; i++)
                  PopularCard(
                    title: mostPopularData[i]['title'] ?? '',
                    image: mostPopularData[i]['image'] ?? '',
                  )
              ],
            ),
          )),
          SliverToBoxAdapter(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                AppText(
                  title: "Sea Foods",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  titleColor: themeColor?.activeBlack,
                ),
                for (int i = 0; i < seaFoodsData.length; i++)
                  PopularCard(
                    title: seaFoodsData[i]['title'] ?? '',
                    image: seaFoodsData[i]['image'] ?? '',
                  )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

const categoryFoodData = [
  "Beef & Lamb",
  "Seafood",
  "Appetizers",
  "Dim Sum",
];

const mostPopularData = [
  {
    "title": "Cookie Sandwich",
    "image": ImageConstants.mostPopular01,
  },
  {
    "title": "Combo Burger",
    "image": ImageConstants.mostPopular02,
  },
  {
    "title": "Combo Sandwich",
    "image": ImageConstants.mostPopular03,
  },
];

const seaFoodsData = [
  {
    "title": "Cookie Sandwich",
    "image": ImageConstants.seaFood01,
  },
  {
    "title": "Combo Burger",
    "image": ImageConstants.seaFood02,
  },
  {
    "title": "Combo Sandwich",
    "image": ImageConstants.seaFood03,
  },
];
