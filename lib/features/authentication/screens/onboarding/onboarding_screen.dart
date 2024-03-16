import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/animation/slide_animation.dart';
import 'package:nakhtya_app/common/widgets/rounded_button.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/image_strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
                TSlideAnimation(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    "NAKHTYA",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 60, color: TColors.textWhite),
                  ),
                ),
                TSlideAnimation(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    "Book your Cook and Cleaner",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: TColors.textWhite),
                  ),
                ),
                const SizedBox(height: 50),
                const Column(
                  children: [
                    TSlideAnimation(
                      duration: Duration(milliseconds: 1700),
                      child: RoundedButton(name: "Sign In as Customer"),
                    ),
                    SizedBox(height: 20),
                    TSlideAnimation(
                      duration: Duration(milliseconds: 1800),
                      child: RoundedButton(name: "Sign In as Cook", buttonColor: TColors.buttonSecondary),
                    ),
                    SizedBox(height: 20),
                    TSlideAnimation(
                      duration: Duration(milliseconds: 1400),
                      child: RoundedButton(name: "Sign In as Cleaner", buttonColor: TColors.buttonSecondary),
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
