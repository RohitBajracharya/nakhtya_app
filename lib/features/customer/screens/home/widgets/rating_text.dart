import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class RatingWithStar extends StatelessWidget {
  final String rating;
  const RatingWithStar({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NormalText(
          text: rating,
          color: TColors.primary,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(width: 5),
        const Icon(
          Iconsax.star4,
          size: 14,
          color: TColors.primary,
        ),
      ],
    );
  }
}
