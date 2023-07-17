import 'package:champ_food_service/infrastructure/commons/constants/custom_page_route.dart';
import 'package:champ_food_service/infrastructure/commons/constants/route_constants.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/home_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/orders_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/profile_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/featured_partners.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/screens/resturant_page.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_main_screens/search_main.dart';
import 'package:champ_food_service/screens/ui/home_screen/home_screen.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/create_account.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/find_resturant_location.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/forgot_password.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/phone_screen.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/reset_email_sent.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/sign_in.dart';
import 'package:champ_food_service/screens/ui/onboarding_screens/verify_phone.dart';
import 'package:champ_food_service/screens/ui/walkthrough_screens/walkthrough_1.dart';
import 'package:champ_food_service/screens/ui/walkthrough_screens/walkthrough_2.dart';
import 'package:champ_food_service/screens/ui/walkthrough_screens/walkthrough_3.dart';
import 'package:champ_food_service/screens/ui/walkthrough_screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.initialRoute:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());

      case RouteConstants.welcomeRoute:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());

      case RouteConstants.walkthrough1Route:
        return MaterialPageRoute(builder: (context) => const Walkthrough1());

      case RouteConstants.walkthrough2Route:
        return MaterialPageRoute(builder: (context) => const Walkthrough2());

      case RouteConstants.walkthrough3Route:
        return MaterialPageRoute(builder: (context) => const Walkthrough3());
      case RouteConstants.signInRoute:
        return MaterialPageRoute(builder: (context) => const SignIn());
      case RouteConstants.forgotPasswordRoute:
        return MaterialPageRoute(builder: (context) => const ForgotPassword());
      case RouteConstants.resetEmailSentRoute:
        return MaterialPageRoute(builder: (context) => const ResetEmailSent());
      case RouteConstants.createAccountRoute:
        return MaterialPageRoute(builder: (context) => const CreateAccount());
      case RouteConstants.phoneScreenRoute:
        return MaterialPageRoute(builder: (context) => const PhoneScreen());
      case RouteConstants.verifyPhoneRoute:
        return MaterialPageRoute(builder: (context) => const VerifyPhone());
      case RouteConstants.findResturantLocationRoute:
        return MaterialPageRoute(builder: (context) => const FindResturantLocation());
      case RouteConstants.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteConstants.homeMainRoute:
        return MaterialPageRoute(builder: (context) => const HomeMainScreen());
      case RouteConstants.searchMainRoute:
        return MaterialPageRoute(builder: (context) => const SearchMainScreen());
      case RouteConstants.ordersMainRoute:
        return MaterialPageRoute(builder: (context) => const OrdersMainScreen());
      case RouteConstants.profileMainRoute:
        return MaterialPageRoute(builder: (context) => const ProfileMainScreen());
      case RouteConstants.featuredPartnersRoute:
        return MaterialPageRoute(builder: (context) => const FeaturedPartners());
      case RouteConstants.resturantPageRoute:
        return MaterialPageRoute(builder: (context) => const ResturantPage());

      default:
        return CustomMaterialPageRoute(builder: (context) => Container());
    }
  }
}
