import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/infrastructure/commons/utils/navigation_constants.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/common/featured_card.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/common/home_main_appbar.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/common/main_sub_title_row.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/common/resturants_card.dart';
import 'package:flutter/material.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 60,
        ),
        const HomeMainAppbar(
          padding: EdgeInsets.symmetric(horizontal: 20),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 210,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            ImageConstants.landingImage,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 20),
        MainSubTitleRow(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          title: "Featured Partners",
          subTitle: "See all",
          onTabSubtitle: () {
            Navigator.pushNamed(
              NavigationService.context,
              RouteConstants.featuredPartnersRoute,
            );
          },
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 336,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: featuredCardData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var temp = featuredCardData[index];
              return FeaturedCard(
                margin: const EdgeInsets.only(left: 20),
                image: temp["image"] ?? "",
                title: temp["title"] ?? '',
                rating: temp["rating"] ?? '',
                time: temp["time"] ?? '',
                deliveryMode: temp["deliveryMode"] ?? '',
                address: temp["address"] ?? '',
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.asset(ImageConstants.banner),
        ),
        const SizedBox(height: 20),
        MainSubTitleRow(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          title: "Best Picks",
          subTitle: "See all",
          onTabSubtitle: () {},
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 336,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: bestPickData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var temp = bestPickData[index];
              return FeaturedCard(
                margin: const EdgeInsets.only(left: 20),
                image: temp["image"] ?? "",
                title: temp["title"] ?? '',
                rating: temp["rating"] ?? '',
                time: temp["time"] ?? '',
                deliveryMode: temp["deliveryMode"] ?? '',
                address: temp["address"] ?? '',
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        MainSubTitleRow(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          title: "All Restaurants",
          subTitle: "See all",
          onTabSubtitle: () {},
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            for (int i = 0; i < resturantData.length; i++)
              ResturantCard(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                image: resturantData[i]['image'] ?? '',
                title: resturantData[i]['title'] ?? '',
                price: resturantData[i]['price'] ?? '',
                foodCategory1: resturantData[i]['foodCategory1'] ?? '',
                foodCategory2: resturantData[i]['foodCategory2'] ?? '',
                foodCategory3: resturantData[i]['foodCategory3'] ?? '',
                rating: resturantData[i]['rating'] ?? '',
                customerRating: resturantData[i]['customerRating'] ?? '',
                deiveryTime: resturantData[i]['deiveryTime'] ?? '',
                deliveryMode: resturantData[i]['deliveryMode'] ?? '',
              )
          ],
        ),
      ],
    );
  }
}

const featuredCardData = [
  {
    "image": ImageConstants.featuredImg1,
    "title": 'Krispy Creme',
    "rating": '4.5',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": 'St Georgece Terrace, Perth',
  },
  {
    "image": ImageConstants.featuredImg2,
    "title": 'Mario Italiano',
    "rating": '4.5',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": 'Hay street , Perth City',
  },
  {
    "image": ImageConstants.featuredImg1,
    "title": 'Krispy Creme',
    "rating": '4.5',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": 'St Georgece Terrace, Perth',
  },
  {
    "image": ImageConstants.featuredImg2,
    "title": 'Mario Italiano',
    "rating": '4.5',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": 'Hay street , Perth City',
  },
];

const bestPickData = [
  {
    "image": ImageConstants.bestPicked1,
    "title": 'McDonald’s',
    "rating": '4.5',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": "Hay street , Perth City",
  },
  {
    "image": ImageConstants.bestPicked2,
    "title": 'The Halal Guys',
    "rating": '4.4',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": 'St Georgece Terrace, Perth',
  },
  {
    "image": ImageConstants.bestPicked1,
    "title": 'McDonald’s',
    "rating": '4.5',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": "Hay street , Perth City",
  },
  {
    "image": ImageConstants.bestPicked2,
    "title": 'The Halal Guys',
    "rating": '4.4',
    "time": '25min',
    "deliveryMode": 'Free delivery',
    "address": 'St Georgece Terrace, Perth',
  },
];

const resturantData = [
  {
    'image': ImageConstants.resturantImage1,
    'title': "Cafe Brichor’s",
    'price': "\$\$",
    'foodCategory1': "Chinese",
    'foodCategory2': "American",
    'foodCategory3': "Deshi food",
    'rating': "4.3 ",
    'customerRating': "200+ Ratings",
    'deiveryTime': "25 Min",
    'deliveryMode': "Free",
  },
  {
    'image': ImageConstants.resturantimage2,
    'title': "Cafe Brichor’s",
    'price': "\$\$",
    'foodCategory1': "Chinese",
    'foodCategory2': "American",
    'foodCategory3': "Deshi food",
    'rating': "4.3 ",
    'customerRating': "200+ Ratings",
    'deiveryTime': "25 Min",
    'deliveryMode': "Free",
  },
  {
    'image': ImageConstants.resturantimage3,
    'title': "McDonald's",
    'price': "\$\$",
    'foodCategory1': "Chinese",
    'foodCategory2': "American",
    'foodCategory3': "Deshi food",
    'rating': "4.3 ",
    'customerRating': "200+ Ratings",
    'deiveryTime': "25 Min",
    'deliveryMode': "Free",
  },
];
