import 'package:champ_food_service/infrastructure/commons/constants/image_constants.dart';
import 'package:champ_food_service/screens/common/app_text/app_text.dart';
import 'package:champ_food_service/screens/common/appbar/custom_appbar.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/common/settings_tile.dart';
import 'package:champ_food_service/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMainScreen extends StatelessWidget {
  const ProfileMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MyColors? themeColor = Theme.of(context).extension<MyColors>();

    return Scaffold(
      appBar: CommonAppBarWidget(
        appTitle: AppText(
          title: "Account Settings",
          fontSize: 24,
          fontWeight: FontWeight.w600,
          titleColor: themeColor?.activeBlack,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppText(
                title: "Update your settings like notifications, payments, profile edit etc.",
                fontSize: 16,
                overflow: TextOverflow.visible,
              ),
              SizedBox(height: 24),
              for (int i = 0; i < data.length; i++)
                SettingsTile(
                  title: data[i]["title"] ?? '',
                  subTitle: data[i]["subTitle"] ?? '',
                  leadingIcon: data[i]["leadingIcon"] ?? '',
                  trallingIcon: data[i]["trallingIcon"] ?? '',
                ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(ImageConstants.logoutIcon),
                    const SizedBox(width: 16),
                    AppText(
                      title: "Logout",
                      fontSize: 16,
                      titleColor: themeColor?.activeBlack,
                    ),
                    const Spacer(),
                    SvgPicture.asset(ImageConstants.rightIcon),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const data = [
  {
    'title': "Profile Information",
    'subTitle': "Change your account information",
    'leadingIcon': ImageConstants.profileIconSetting,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "Change Password",
    'subTitle': "Change your password",
    'leadingIcon': ImageConstants.changePasswordIcon,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "Payment Methods",
    'subTitle': "Add your credit & debit cards",
    'leadingIcon': ImageConstants.paymentMethodIcon,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "Locations",
    'subTitle': "Add or remove your delivery locations",
    'leadingIcon': ImageConstants.locationIconSetting,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "Add Social Account",
    'subTitle': "Add Facebook, Twitter etc ",
    'leadingIcon': ImageConstants.socialFbIcon,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "Refer to Friends",
    'subTitle': "Get \$10 for reffering friends",
    'leadingIcon': ImageConstants.referFriendIcon,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "Rate Us",
    'subTitle': "Rate us playstore, appstor",
    'leadingIcon': ImageConstants.startIcon,
    'trallingIcon': ImageConstants.rightIcon,
  },
  {
    'title': "FAQ",
    'subTitle': "Frequently asked questions",
    'leadingIcon': ImageConstants.faqIcon,
    'trallingIcon': ImageConstants.rightIcon,
  },
];
