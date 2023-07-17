import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/infrastructure/commons/utils/navigation_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Walkthrough2 extends StatelessWidget {
  const Walkthrough2({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -50,
                  left: -100,
                  child: SvgPicture.asset(
                    ImageConstants.welcomeImage,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * 1.22,
                  ),
                ),
              ],
            ),
          ),
          AppText(
            title: 'Free delivery offers',
            fontSize: 28,
            fontWeight: FontWeight.w700,
            titleColor: themeColor?.activeBlack,
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: AppText(
              title: 'Free delivery for new customers via Apple Pay and others payment methods.',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.visible,
              titleTextAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomButton(
              title: "Get Started",
              onTap: () {
                Navigator.pushReplacementNamed(context, RouteConstants.walkthrough3Route);
              },
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
