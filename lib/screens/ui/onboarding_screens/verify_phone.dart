import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({super.key});

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: CommonAppBarWidget(
        centerTitle: true,
        isBack: true,
        appTitle: AppText(
          title: "Login to champ Food Services",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          titleColor: themeColor?.activeBlack,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Center(
              child: AppText(
                title: 'Verify phone number',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                titleColor: themeColor?.activeBlack,
              ),
            ),
            const SizedBox(height: 20),
            AppText(
              title: 'Enter the 4-Digit code sent to you at',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              titleTextAlign: TextAlign.center,
              titleColor: themeColor?.activeBlack,
            ),
            const SizedBox(height: 10),
            AppText(
              title: '+610489632578',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              titleTextAlign: TextAlign.center,
              titleColor: themeColor?.activeBlack,
            ),
            const SizedBox(height: 40),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width - 80,
              fieldWidth: 80,
              style: TextStyle(fontSize: 17, color: themeColor?.activeBlack),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {},
            ),
            const SizedBox(height: 34),
            CustomButton(
              title: "Continue".toUpperCase(),
              onTap: () {},
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(
                  title: 'Didn’t receive code?',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                const SizedBox(width: 20),
                AppText(
                  title: 'Resend Again.',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  titleColor: themeColor?.activeOrange,
                ),
              ],
            ),
            const SizedBox(height: 34),
            const AppText(
              title: 'By Signing up you agree to our Terms Conditions & Privacy Policy.',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              titleTextAlign: TextAlign.center,
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
