import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/title_text.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/character_position.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:nakhtya_app/utils/constants/image_strings.dart';
import 'package:nakhtya_app/utils/constants/sizes.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class CookSignupScreen extends StatelessWidget {
  const CookSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade400,
              Colors.orange.shade200,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: TSizes.screenHeight - 180,
              width: TSizes.screenWidth - 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  // customer png 1st
                  const CharacterPosition(
                    image: TImages.cook1,
                    leftPosition: 75,
                    topPositon: 20,
                    imageHeight: 180,
                  ),
                  //form container
                  Positioned(
                    top: 200,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      height: TSizes.screenHeight - 350,
                      width: TSizes.screenWidth - 100,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.red.withOpacity(0.1),
                            Colors.blue.withOpacity(0.05),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TitleText(text: TTexts.cookSignupTitle),
                          SizedBox(height: 20),
                          SignUpForm(isCustomer: false, isCook: true),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
