import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_title_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final Color buttonColor;
  final VoidCallback onTap;
  const RoundedButton({
    super.key,
    required this.name,
    required this.onTap,
    this.buttonColor = TColors.buttonPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttonColor,
        ),
        child: Center(
          child: NormalTitleText(
            text: name,
          ),
        ),
      ),
    );
  }
}
