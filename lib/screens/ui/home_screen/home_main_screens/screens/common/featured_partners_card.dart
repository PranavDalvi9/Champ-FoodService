import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeaturedPartnerCard extends StatelessWidget {
  final String image;
  final String time;
  final String mode;
  final String rating;
  final String title;
  final VoidCallback onTap;

  const FeaturedPartnerCard(
      {super.key,
      required this.image,
      required this.time,
      required this.mode,
      required this.rating,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.43,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 280,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    bottom: 38,
                    left: 34,
                    child: AppText(
                      title: time,
                      fontSize: 12,
                      titleColor: themeColor?.activePureWhite,
                    )),
                Positioned(
                  bottom: 40,
                  left: 14,
                  child: SvgPicture.asset(ImageConstants.clockMenu),
                ),
                Positioned(
                    bottom: 13,
                    left: 34,
                    child: AppText(
                      title: mode,
                      fontSize: 12,
                      titleColor: themeColor?.activePureWhite,
                    )),
                Positioned(
                  bottom: 14,
                  left: 14,
                  child: SvgPicture.asset(ImageConstants.dollarIconWhite),
                ),
                Positioned(
                  bottom: 14,
                  right: 14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: themeColor?.activeOrange,
                    ),
                    child: AppText(
                      title: rating,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      titleColor: themeColor?.activePureWhite,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            AppText(
              title: title,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              titleColor: themeColor?.activeBlack,
            ),
            const SizedBox(height: 1),
            Row(
              children: [
                const AppText(
                  title: "Chinese",
                  fontSize: 16,
                ),
                const Spacer(),
                Container(
                  height: 4,
                  width: 4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: themeColor?.activeGrey),
                ),
                const SizedBox(
                  width: 8,
                ),
                const AppText(
                  title: "American",
                  fontSize: 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
