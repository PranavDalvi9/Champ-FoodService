import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetEmailSent extends StatefulWidget {
  const ResetEmailSent({super.key});

  @override
  State<ResetEmailSent> createState() => _ResetEmailSentState();
}

class _ResetEmailSentState extends State<ResetEmailSent> {
  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: CommonAppBarWidget(
        centerTitle: true,
        isBack: true,
        appTitle: AppText(
          title: "Forgot Password",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          titleColor: themeColor?.activeBlack,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            AppText(
              title: 'Reset email sent',
              fontSize: 34,
              fontWeight: FontWeight.w300,
              titleColor: themeColor?.activeBlack,
              overflow: TextOverflow.visible,
            ),
            const SizedBox(height: 14),
            AppText(
              title: 'We have sent a instructions email to',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              titleColor: themeColor?.activeGrey,
              overflow: TextOverflow.visible,
            ),
            RichText(
                text: TextSpan(
              text: "sajin tamang@figma.com.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: themeColor?.activeGrey,
                fontSize: 16,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: ' Having problem?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: themeColor?.accentYellow,
                      fontSize: 16,
                    )),
              ],
            )),
            const SizedBox(height: 34),
            CustomButton(title: "Send again".toUpperCase(), onTap: () {}),
            const Spacer(),
            Center(
              child: SvgPicture.asset(
                ImageConstants.resentEmailImg,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width - 90,
              ),
            ),
            const Spacer(),
          ],
        )),
      ),
    );
  }
}
