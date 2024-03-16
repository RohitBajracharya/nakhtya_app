import 'package:get/get.dart';
import 'package:nakhtya_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:nakhtya_app/features/splash_screen/splash_screen.dart';

class TRoutes {
  TRoutes._();

  static const String _initial = "/";
  static const String _onBoardingScreen = "/onboarding";

  static String getInitial() => _initial;
  static String getOnBoardingScreen() => _onBoardingScreen;

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
  ];
}
