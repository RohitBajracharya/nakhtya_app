import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final String text;
  const CategoryText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}
