import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class AppTitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const AppTitleText({
    super.key,
    required this.text,
    this.color = TColors.textWhite,
    this.fontSize = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
      ),
    );
  }
}
