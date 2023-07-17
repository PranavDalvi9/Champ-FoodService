import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/textform_field_widget/textform_field_widget.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FindResturantLocation extends StatefulWidget {
  const FindResturantLocation({super.key});

  @override
  State<FindResturantLocation> createState() => _FindResturantLocationState();
}

class _FindResturantLocationState extends State<FindResturantLocation> {
  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: const CommonAppBarWidget(
        isClose: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            AppText(
              title: "Find restaurants near you ",
              fontSize: 24,
              fontWeight: FontWeight.w600,
              titleColor: themeColor?.activeBlack,
              titleTextAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const AppText(
              title: "Please enter your location or allow access to your location to find restaurants near you.",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.visible,
              titleTextAlign: TextAlign.center,
            ),
            const SizedBox(height: 34),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: themeColor?.accentYellow ?? Colors.transparent),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageConstants.locationIcon),
                  const SizedBox(width: 8),
                  AppText(
                    title: "Use current location",
                    fontSize: 16,
                    titleColor: themeColor?.accentYellow,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextFormFieldWidget(
              textAlign: TextAlign.center,
              hintText: "Enter a new address",
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(255, 215, 215, 215)),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(255, 168, 168, 168), width: 2.0),
                borderRadius: BorderRadius.circular(8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
