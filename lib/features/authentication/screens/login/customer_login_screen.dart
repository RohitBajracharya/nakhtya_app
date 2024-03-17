import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/title_text.dart';
import 'package:nakhtya_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/character_position.dart';
import 'package:nakhtya_app/utils/constants/image_strings.dart';
import 'package:nakhtya_app/utils/constants/sizes.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class CustomerLoginScreen extends StatelessWidget {
  const CustomerLoginScreen({
    super.key,
  });

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
              height: TSizes.screenHeight - 280,
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
                  const CharacterPosition(image: TImages.loginCustomer, leftPosition: 10, topPositon: 20),

                  // customer png 2nd
                  //form container
                  Positioned(
                    top: 250,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      height: TSizes.screenHeight - 420,
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
                          TitleText(text: TTexts.welcomeCustomer),
                          SizedBox(height: 20),
                          LoginForm(),
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
