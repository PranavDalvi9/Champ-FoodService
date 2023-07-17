import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button_with_icon.dart';
import 'package:champ_food_service/screens/common/textform_field_widget/textform_field_widget.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
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
          title: "Sign In",
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
                AppText(
                  title: "Welcome to Champ Food Services",
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                  titleColor: themeColor?.activeBlack,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 12),
                const AppText(
                  title: "Enter your Phone number or Email address for sign in. Enjoy your food :)",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 25),
                const AppText(
                  title: "EMAIL ADDRESS",
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                TextFormFieldWidget(
                  textFormFieldKey: const ValueKey('email'),
                  hintText: "Enter Your Email Address",
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please Enter valid Email';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                const SizedBox(height: 18),
                const AppText(
                  title: "PASSWORD",
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                TextFormFieldWidget(
                  textFormFieldKey: const ValueKey('password'),
                  hintText: "Enter Your Password",
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 7) {
                      return 'Please Enter strong password';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteConstants.forgotPasswordRoute);
                      },
                      child: const AppText(
                        title: "Forget Password?",
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        titleTextAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                CustomButton(
                    title: "Sign in".toUpperCase(),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Navigator.pushReplacementNamed(context, RouteConstants.homeRoute);
                      }
                    }),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppText(
                      title: "Don’t have account?",
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      titleTextAlign: TextAlign.center,
                    ),
                    const SizedBox(width: 18),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteConstants.createAccountRoute);
                      },
                      child: AppText(
                        title: "Create new account.",
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        titleTextAlign: TextAlign.center,
                        titleColor: themeColor?.accentYellow,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: AppText(
                    title: "Or",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    titleTextAlign: TextAlign.center,
                    titleColor: themeColor?.activeBlack,
                  ),
                ),
                const SizedBox(height: 24),
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
            ),
          ),
        ),
      ),
    );
  }
}
