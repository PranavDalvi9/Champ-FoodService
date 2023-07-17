import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/common/custom_button/custom_button.dart';
import 'package:champ_food_service/screens/common/textform_field_widget/textform_field_widget.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
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
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'Forgot password',
                    fontSize: 34,
                    fontWeight: FontWeight.w300,
                    titleColor: themeColor?.activeBlack,
                    overflow: TextOverflow.visible,
                  ),
                  AppText(
                    title: 'Enter your email address and we will send you a reset instructions.',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    titleColor: themeColor?.activeGrey,
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(height: 34),
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
                  const SizedBox(height: 24),
                  CustomButton(
                      title: "Reset password".toUpperCase(),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pushReplacementNamed(context, RouteConstants.resetEmailSentRoute);
                        }
                      }),
                ],
              ))),
    );
  }
}
