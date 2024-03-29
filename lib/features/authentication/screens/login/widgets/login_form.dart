import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakhtya_app/common/widgets/rounded_button.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/text_button.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/text_formfield.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';
import 'package:nakhtya_app/utils/routes/route.dart';

class LoginForm extends StatefulWidget {
  final bool isCustomer;
  final bool isCook;
  final bool isCleaner;
  const LoginForm({
    super.key,
    this.isCustomer = true,
    this.isCook = false,
    this.isCleaner = false,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TTextFormField(
          labelText: TTexts.phoneNumber,
          icon: Icon(Icons.phone),
          isNumber: true,
        ),
        const SizedBox(height: 10),
        const TTextFormField(
          labelText: TTexts.password,
          icon: Icon(Icons.password),
          isPassword: true,
          suffixIcon: Icon(Icons.remove_red_eye),
        ),
        const SizedBox(height: 20),
        RoundedButton(
          name: TTexts.login,
          onTap: () {
            if (widget.isCustomer) {
              Get.toNamed(TRoutes.getCustomerNavigationMenu());
            }
          },
          buttonColor: TColors.buttonSecondary,
        ),
        const SizedBox(height: 10),
        Divider(color: Colors.white.withOpacity(0.5), thickness: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              TTexts.dontHaveAccount,
              style: TextStyle(fontFamily: "Poppins", fontSize: 14),
            ),
            TTextButton(
                text: TTexts.signUp,
                onTap: () {
                  if (widget.isCustomer) {
                    Get.toNamed(TRoutes.getCustomerSignupScreen());
                  } else if (widget.isCook) {
                    Get.toNamed(TRoutes.getCookSignupScreen());
                  } else if (widget.isCleaner) {
                    Get.toNamed(TRoutes.getCleanerSignupScreen());
                  }
                }),
          ],
        )
      ],
    );
  }
}
