import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class RatingWithStar extends StatelessWidget {
  final String rating;
  final double size;
  const RatingWithStar({
    super.key,
    required this.rating,
    this.size = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NormalText(
          text: rating,
          color: TColors.primary,
          fontWeight: FontWeight.w600,
          size: size,
        ),
        const SizedBox(width: 5),
        Icon(
          Iconsax.star4,
          size: size,
          color: TColors.primary,
        ),
      ],
    );
  }
}
