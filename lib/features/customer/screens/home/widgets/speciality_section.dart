import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/common/widgets/title_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class SpecialitySection extends StatelessWidget {
  const SpecialitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(
          text: TTexts.speciality,
          color: TColors.textPrimary,
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: TColors.backgroundDark.withOpacity(0.1),
                spreadRadius: 4,
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: const NormalText(
            text: "Newari Khana, Nepali Khana Set, Biryani, Momo",
            color: TColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
