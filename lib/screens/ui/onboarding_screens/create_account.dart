import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button_with_icon.dart';
import 'package:champ_food_service/screens/common/textform_field_widget/textform_field_widget.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  String fullName = '';
  String email = '';
  String password = '';
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  AppText(
                    title: 'Create Account',
                    fontSize: 34,
                    fontWeight: FontWeight.w300,
                    titleColor: themeColor?.activeBlack,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: RichText(
                        text: TextSpan(
                      text: "Enter your Name, Email and Password for sign up.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: themeColor?.activeGrey,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Already have account?',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: themeColor?.accentYellow,
                              fontSize: 16,
                            )),
                      ],
                    )),
                  ),
                  const SizedBox(height: 35),
                  const AppText(
                    title: "Full name",
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                  const TextFormFieldWidget(
                    textFormFieldKey: ValueKey('fullName'),
                    hintText: "Enter Your Full Name",
                    // validator: (value) {
                    // if (value!.isEmpty || !value.contains('@')) {
                    //   return 'Please Enter valid Email';
                    // } else {
                    //   return null;
                    // }
                    // },
                    // onChanged: (value) {
                    //   setState(() {
                    //     fullName = value;
                    //   });
                    // },
                  ),
                  const SizedBox(height: 20),
                  const AppText(
                    title: "Email address",
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                  const TextFormFieldWidget(
                    textFormFieldKey: ValueKey('email'),
                    hintText: "Enter Your Email address",
                    // validator: (value) {
                    // if (value!.isEmpty || !value.contains('@')) {
                    //   return 'Please Enter valid Email';
                    // } else {
                    //   return null;
                    // }
                    // },
                    // onChanged: (value) {
                    //   setState(() {
                    //     fullName = value;
                    //   });
                    // },
                  ),
                  const SizedBox(height: 20),
                  const AppText(
                    title: "Password",
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                  const TextFormFieldWidget(
                    textFormFieldKey: ValueKey('password'),
                    hintText: "Enter Your Password",
                    obscureText: true,
                    // validator: (value) {
                    // if (value!.isEmpty || !value.contains('@')) {
                    //   return 'Please Enter valid Email';
                    // } else {
                    //   return null;
                    // }
                    // },
                    // onChanged: (value) {
                    //   setState(() {
                    //     fullName = value;
                    //   });
                    // },
                  ),
                  const SizedBox(height: 24),
                  CustomButton(
                      title: "Sign Up".toUpperCase(),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pushNamedAndRemoveUntil(context, RouteConstants.homeRoute, (Route<dynamic> route) => false);
                        }
                      }),
                  const SizedBox(height: 24),
                  const AppText(
                    title: "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.visible,
                    titleTextAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 34),
                  Center(
                    child: AppText(
                      title: "Or",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      titleTextAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      titleColor: themeColor?.activeBlack,
                    ),
                  ),
                  CustomButtonWithIcon(
                    title: "Connect with Facebook".toUpperCase(),
                    icon: ImageConstants.facebookIcon,
                    bgColor: themeColor?.accentDarkblue ?? Colors.transparent,
                  ),
                  const SizedBox(height: 16),
                  CustomButtonWithIcon(
                    title: "Connect with google".toUpperCase(),
                    icon: ImageConstants.googleIcon,
                    bgColor: themeColor?.accentLightlue ?? Colors.transparent,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
