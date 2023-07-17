import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  final String title;
  final String content;
  final String image;
  const OrdersCard({super.key, required this.title, required this.content, required this.image});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 130,
          fit: BoxFit.fill,
        ),
        const SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: title,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              titleColor: themeColor?.activeBlack,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.56,
              child: AppText(
                title: content,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                titleColor: themeColor?.activeBlack,
                overflow: TextOverflow.visible,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.56,
              child: Row(
                children: [
                  AppText(
                    title: "\$\$",
                    fontSize: 14,
                    titleColor: themeColor?.activeBlack,
                  ),
                  const SizedBox(width: 11),
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
                    title: "Chinese",
                    fontSize: 14,
                    titleColor: themeColor?.activeBlack,
                  ),
                  const Spacer(),
                  AppText(
                    title: "AUD\$10",
                    fontSize: 14,
                    titleColor: themeColor?.activeOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
