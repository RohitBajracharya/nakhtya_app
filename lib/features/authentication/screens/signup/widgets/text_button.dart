import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class TTextButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final VoidCallback? onTap;
  const TTextButton({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color = TColors.buttonSecondary,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: "Poppins",
          color: color,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
