import 'package:get/get.dart';
import 'package:nakhtya_app/features/authentication/screens/login/cleaner_login_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/login/cook_login_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/login/customer_login_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/cleaner_signup_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/cook_signup_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/customer_signup_screen.dart';
import 'package:nakhtya_app/features/authentication/screens/splash_screen/splash_screen.dart';

class TRoutes {
  TRoutes._();

  static const String _initial = "/";
  static const String _onBoardingScreen = "/onboarding";
  static const String _customerSignUpScreen = "/customer-signup";
  static const String _cookSignUpScreen = "/cook-signup";
  static const String _cleanerSignUpScreen = "/cleaner-signup";
  static const String _customerLoginScreen = "/customer-login";
  static const String _cookLoginScreen = "/cook-login";
  static const String _cleanerLoginScreen = "/cleaner-login";

  static String getInitial() => _initial;
  static String getOnBoardingScreen() => _onBoardingScreen;
  static String getCustomerSignupScreen() => _customerSignUpScreen;
  static String getCookSignupScreen() => _cookSignUpScreen;
  static String getCleanerSignupScreen() => _cleanerSignUpScreen;
  static String getCustomerLoginScreen() => _customerLoginScreen;
  static String getCookLoginScreen() => _cookLoginScreen;
  static String getCleanerLoginScreen() => _cleanerLoginScreen;

  static List<GetPage> routes = [
    //splash screen
    GetPage(name: _initial, page: () => const SplashScreen()),

    //onboarding screen
    GetPage(
      name: _onBoardingScreen,
      page: () => const OnBoardingScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 10),
    ),

    //customer signup screen
    GetPage(
      name: _customerSignUpScreen,
      page: () => const CustomerSignupScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 1),
    ),

    //cook signup screen
    GetPage(
      name: _cookSignUpScreen,
      page: () => const CookSignupScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 1),
    ),

    //cleaner signup screen
    GetPage(
      name: _cleanerSignUpScreen,
      page: () => const CleanerSignupScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 1),
    ),

    //customer login screen
    GetPage(
      name: _customerLoginScreen,
      page: () => const CustomerLoginScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(seconds: 1),
    ),
    //cook login screen
    GetPage(
      name: _cookLoginScreen,
      page: () => const CookLoginScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(seconds: 1),
    ),
    //cleaner login screen
    GetPage(
      name: _cleanerLoginScreen,
      page: () => const CleanerLoginScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
