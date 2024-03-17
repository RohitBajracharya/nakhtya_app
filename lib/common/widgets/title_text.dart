import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const TitleText({
    super.key,
    required this.text,
    this.color = TColors.textWhite,
    this.fontSize = 24,
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
