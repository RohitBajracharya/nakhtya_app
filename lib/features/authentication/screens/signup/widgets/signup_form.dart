import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/rounded_button.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/gender_formfield.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/text_button.dart';
import 'package:nakhtya_app/features/authentication/screens/signup/widgets/text_formfield.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class SignUpForm extends StatefulWidget {
  final bool isCustomer;
  const SignUpForm({
    super.key,
    this.isCustomer = true,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TTextFormField(labelText: TTexts.fullName, icon: Icon(Icons.person)),
        const SizedBox(height: 10),
        const TTextFormField(labelText: TTexts.address, icon: Icon(Icons.location_on)),
        const SizedBox(height: 10),
        const TTextFormField(
          labelText: TTexts.phoneNumber,
          icon: Icon(Icons.phone),
          isNumber: true,
        ),
        const SizedBox(height: 10),
        if (!widget.isCustomer) const GenderFormField(),
        const SizedBox(height: 20),
        RoundedButton(
          name: TTexts.signUp,
          onTap: () {},
          buttonColor: TColors.buttonSecondary,
        ),
        const SizedBox(height: 10),
        Divider(color: Colors.white.withOpacity(0.5), thickness: 2),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TTexts.alreadyHaveAccount,
              style: TextStyle(fontFamily: "Poppins", fontSize: 14),
            ),
            TTextButton(text: TTexts.login),
          ],
        )
      ],
    );
  }
}
