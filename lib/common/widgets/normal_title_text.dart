import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class NormalTitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  const NormalTitleText({
    super.key,
    required this.text,
    this.color = TColors.textWhite,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
      ),
    );
  }
}
