import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  const SmallText({
    super.key,
    required this.text,
    this.color = TColors.textSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color.withOpacity(0.5),
        fontSize: 12,
      ),
    );
  }
}
