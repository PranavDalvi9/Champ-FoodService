import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResturantCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String foodCategory1;
  final String foodCategory2;
  final String foodCategory3;
  final String rating;
  final String customerRating;
  final String deiveryTime;
  final String deliveryMode;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const ResturantCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.foodCategory1,
      required this.foodCategory2,
      required this.foodCategory3,
      required this.rating,
      required this.customerRating,
      required this.deiveryTime,
      required this.deliveryMode,
      this.margin,
      this.padding});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          const SizedBox(height: 16),
          AppText(
            title: title,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            titleColor: themeColor?.activeBlack,
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              AppText(
                title: price,
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
              AppText(
                title: foodCategory1,
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
              AppText(
                title: foodCategory2,
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
              AppText(
                title: foodCategory3,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              AppText(
                title: rating,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(ImageConstants.startIcon),
              const SizedBox(width: 2),
              AppText(
                title: customerRating,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(width: 27),
              SvgPicture.asset(ImageConstants.clockIcon),
              const SizedBox(width: 6),
              AppText(
                title: deiveryTime,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const SizedBox(width: 14),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: themeColor?.activeGrey,
                ),
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(ImageConstants.dollarIcon),
              const SizedBox(width: 6),
              AppText(
                title: deliveryMode,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ],
          )
        ],
      ),
    );
  }
}
