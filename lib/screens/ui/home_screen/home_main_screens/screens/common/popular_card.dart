import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final String title;
  final String image;
  const PopularCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(255, 209, 209, 209)),
      )),
      child: Row(
        children: [
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.4,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: title,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                titleColor: themeColor?.activeBlack,
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.46,
                child: AppText(
                  title: "Shortbread, chocolate turtle cookies, and red velvet.",
                  fontSize: 16,
                  overflow: TextOverflow.visible,
                  titleColor: themeColor?.activeBlack,
                ),
              ),
              const SizedBox(height: 12),
              Row(
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
                    decoration: BoxDecoration(color: themeColor?.activeGrey, borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(width: 8),
                  AppText(
                    title: "Chinese",
                    fontSize: 14,
                    titleColor: themeColor?.activeBlack,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  AppText(
                    title: "AUD\$10",
                    fontSize: 14,
                    titleColor: themeColor?.activeOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
