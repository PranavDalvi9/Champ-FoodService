import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final String image;
  final String title;
  final String rating;
  final String time;
  final String address;
  final String deliveryMode;
  const FeaturedCard(
      {super.key,
      required this.image,
      required this.title,
      required this.rating,
      required this.time,
      required this.deliveryMode,
      required this.address,
      this.padding,
      this.margin});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      width: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 200, //160
            width: 240, // 200
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 14),
          AppText(
            title: title,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            titleColor: themeColor?.activeBlack,
          ),
          AppText(
            title: address,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: themeColor?.activeOrange,
                ),
                child: AppText(
                  title: rating,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  titleColor: themeColor?.activeWhite,
                ),
              ),
              const Spacer(),
              AppText(
                title: time,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                titleColor: themeColor?.activeBlack,
              ),
              const Spacer(),
              Container(
                height: 4,
                width: 4,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: themeColor?.activeGrey),
              ),
              const SizedBox(width: 8),
              AppText(
                title: deliveryMode,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                titleColor: themeColor?.activeBlack,
              ),
            ],
          )
        ],
      ),
    );
  }
}
