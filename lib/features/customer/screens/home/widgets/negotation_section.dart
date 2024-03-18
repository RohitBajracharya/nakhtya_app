import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/custom_slider.dart';
import 'package:nakhtya_app/common/widgets/sub_title_text.dart';
import 'package:nakhtya_app/features/customer/model/cleaner.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class NegotationSection<T> extends StatelessWidget {
  final T user;
  const NegotationSection({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubTitleText(
          text: TTexts.negotiatePrice,
          color: TColors.textPrimary,
        ),
        CustomSlider(
          value: (user is Cook) ? (user as Cook).price : (user as Cleaner).price,
          min: (user is Cook) ? (user as Cook).price : (user as Cleaner).price,
        ),
      ],
    );
  }
}
