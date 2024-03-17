import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class ViewAllButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ViewAllButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: TColors.textSecondary),
          ),
          const SizedBox(width: 5),
          const Icon(
            Iconsax.arrow_circle_right,
            color: TColors.textSecondary,
          ),
        ],
      ),
    );
  }
}
