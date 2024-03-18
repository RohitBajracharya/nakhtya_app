import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class NormalText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  const NormalText({
    Key? key,
    required this.text,
    this.color = TColors.textWhite,
    this.fontWeight = FontWeight.normal,
    this.size = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
