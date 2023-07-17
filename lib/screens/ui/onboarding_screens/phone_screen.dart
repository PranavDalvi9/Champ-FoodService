import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/screens/common/textform_field_widget/textform_field_widget.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
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
            children: [
              const SizedBox(height: 24),
              AppText(
                title: 'Get started with Foodly',
                fontSize: 24,
                fontWeight: FontWeight.w600,
                titleColor: themeColor?.activeBlack,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 14),
              const AppText(
                title: 'Enter your phone number to use foodly and enjoy your food',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                titleTextAlign: TextAlign.center,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 34),
              const SizedBox(
                width: double.infinity,
                child: AppText(
                  title: "Phone Number",
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  titleTextAlign: TextAlign.start,
                ),
              ),
              Row(
                children: [
                  // GestureDetector(
                  //   onTap: () async {
                  //     showC
                  //   },
                  //   child: Container(
                  //     height: 40,
                  //     width: 40,
                  //     color: Colors.amber,
                  //   ),
                  // )

                  CountryCodePicker(
                    padding: EdgeInsets.zero,
                    textStyle: TextStyle(color: themeColor?.activeBlack),
                    onChanged: (val) {},
                    initialSelection: 'IN',
                  ),

                  const Expanded(
                    child: TextFormFieldWidget(
                      // textFormFieldKey: const ValueKey('password'),
                      hintText: "Enter Phone Number",
                      // obscureText: true,
                      // validator: (value) {
                      //   if (value!.isEmpty || value.length < 7) {
                      //     return 'Please Enter strong password';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      // onChanged: (value) {
                      //   setState(() {
                      //     password = value;
                      //   });
                      // },
                    ),
                  ),
                ],
              ),
              // CustomButton(title: "Sign in".toUpperCase(), onTap: () {}),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(24),
          child: CustomButton(title: "Sign up".toUpperCase(), onTap: () {}),
        ));
  }
}
