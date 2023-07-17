import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResturantDetailsCard extends StatelessWidget {
  const ResturantDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          AppText(
            title: "Mayfiled Backery & Cake",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            titleColor: themeColor?.activeBlack,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              const AppText(
                title: "\$\$",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(width: 12),
              Container(
                height: 4,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: themeColor?.activeGrey,
                ),
              ),
              const SizedBox(width: 8),
              const AppText(
                title: 'Chinese',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(width: 14),
              Container(
                height: 4,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: themeColor?.activeGrey,
                ),
              ),
              const SizedBox(width: 8),
              const AppText(
                title: 'American',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(width: 14),
              Container(
                height: 4,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: themeColor?.activeGrey,
                ),
              ),
              const SizedBox(width: 8),
              const AppText(
                title: 'Deshi food',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const AppText(
                title: "4.3",
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(ImageConstants.startIcon),
              const SizedBox(width: 2),
              const AppText(
                title: "200+ Ratings",
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              SvgPicture.asset(
                ImageConstants.dollarIcon,
                color: themeColor?.activeOrange,
              ),
              const SizedBox(width: 6),
              AppText(
                title: "Free Delivery",
                fontSize: 16,
                fontWeight: FontWeight.w300,
                titleColor: themeColor?.activeBlack,
              ),
              const SizedBox(
                width: 27,
              ),
              SvgPicture.asset(
                ImageConstants.clockIcon,
                color: themeColor?.activeOrange,
              ),
              const SizedBox(width: 6),
              AppText(
                title: "25 Minutes",
                fontSize: 16,
                fontWeight: FontWeight.w300,
                titleColor: themeColor?.activeBlack,
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: themeColor?.activeOrange ?? Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: AppText(
                  title: "Take away",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  titleColor: themeColor?.activeOrange,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
