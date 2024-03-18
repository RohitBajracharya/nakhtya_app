import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/features/customer/model/cleaner.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class PriceSection<T> extends StatelessWidget {
  const PriceSection({
    super.key,
    required this.user,
  });

  final T user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const NormalText(
          text: TTexts.basePrice,
          color: TColors.textPrimary,
        ),
        NormalText(
          text: "Rs: ${(user is Cook) ? (user as Cook).price : (user as Cleaner).price}",
          color: TColors.textPrimary,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
