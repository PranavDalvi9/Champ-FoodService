import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/common/orders_card.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class OrdersMainScreen extends StatelessWidget {
  const OrdersMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: CommonAppBarWidget(
        appTitle: AppText(
          title: "Your Orders",
          fontSize: 24,
          fontWeight: FontWeight.w600,
          titleColor: themeColor?.activeBlack,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 28),
              Container(
                child: Row(
                  children: [
                    const AppText(
                      title: "Upcoming orders",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    const Spacer(),
                    AppText(
                      title: "Clear all",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      titleColor: themeColor?.activeBlack,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              for (int i = 0; i < ordersCard.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: OrdersCard(
                    title: ordersCard[i]['title'],
                    content: ordersCard[i]['content'],
                    image: ordersCard[i]['image'],
                  ),
                ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.maxFinite,
                child: AppText(
                  title: "Proceed Payment",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  titleColor: themeColor?.activeOrange,
                  titleTextAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: Row(
                  children: [
                    const AppText(
                      title: "Past orders",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    const Spacer(),
                    AppText(
                      title: "Clear all",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      titleColor: themeColor?.activeBlack,
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < pastOrderCard.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: OrdersCard(
                    title: pastOrderCard[i]['title'],
                    content: pastOrderCard[i]['content'],
                    image: pastOrderCard[i]['image'],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

final List ordersCard = [
  {
    "image": ImageConstants.orders_01,
    "title": "McDonald's",
    "content": "Shortbread, chocolate turtle cookies, and red velvet.",
  },
  {
    "image": ImageConstants.orders_02,
    "title": "Uncle Boy's",
    "content": "Shortbread, chocolate turtle cookies, and red velvet.",
  },
  {
    "image": ImageConstants.orders_03,
    "title": "The Halal Guys",
    "content": "Shortbread, chocolate turtle cookies, and red velvet.",
  },
];

final List pastOrderCard = [
  {
    "image": ImageConstants.past_order01,
    "title": "McDonald's",
    "content": "Shortbread, chocolate turtle cookies, and red velvet.",
  },
];
