import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakhtya_app/common/animation/slide_animation.dart';
import 'package:nakhtya_app/common/widgets/app_title_text.dart';
import 'package:nakhtya_app/common/widgets/rounded_button.dart';
import 'package:nakhtya_app/common/widgets/sub_title_text.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/text_button.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/image_strings.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';
import 'package:nakhtya_app/utils/routes/route.dart';

class OnBoardingLoginScreen extends StatefulWidget {
  const OnBoardingLoginScreen({super.key});

  @override
  State<OnBoardingLoginScreen> createState() => _OnBoardingLoginScreenState();
}

class _OnBoardingLoginScreenState extends State<OnBoardingLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(TImages.boardingBg),
            fit: BoxFit.cover,
          ),
        ),
        //button container section
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TSlideAnimation(
                  beginOffset: Offset(1, 0),
                  duration: Duration(milliseconds: 1600),
                  child: AppTitleText(text: TTexts.appName),
                ),
                const TSlideAnimation(
                  beginOffset: Offset(1, 0),
                  duration: Duration(milliseconds: 1500),
                  child: SubTitleText(text: TTexts.boardingSubTitle),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    TSlideAnimation(
                      beginOffset: const Offset(1, 0),
                      duration: const Duration(milliseconds: 1400),
                      child: RoundedButton(
                        onTap: () => Get.toNamed(TRoutes.getCustomerLoginScreen()),
                        name: TTexts.loginCustomer,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TSlideAnimation(
                      beginOffset: const Offset(1, 0),
                      duration: const Duration(milliseconds: 1300),
                      child: RoundedButton(
                        onTap: () => Get.toNamed(TRoutes.getCookLoginScreen()),
                        name: TTexts.loginCook,
                        buttonColor: TColors.buttonSecondary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TSlideAnimation(
                      beginOffset: const Offset(1, 0),
                      duration: const Duration(milliseconds: 1200),
                      child: RoundedButton(
                        onTap: () => Get.toNamed(TRoutes.getCleanerLoginScreen()),
                        name: TTexts.loginCleaner,
                        buttonColor: TColors.buttonSecondary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TSlideAnimation(
                      beginOffset: const Offset(1, 0),
                      duration: const Duration(milliseconds: 1100),
                      child: Divider(color: Colors.white.withOpacity(0.5), thickness: 2),
                    ),
                    TSlideAnimation(
                      beginOffset: const Offset(1, 0),
                      duration: const Duration(milliseconds: 1000),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            TTexts.dontHaveAccount,
                            style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: TColors.textWhite),
                          ),
                          TTextButton(
                            text: TTexts.signUp,
                            onTap: () => Get.toNamed(TRoutes.getOnBoardingSignupScreen()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
