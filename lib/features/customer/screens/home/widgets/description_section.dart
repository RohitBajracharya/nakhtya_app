import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/common/widgets/normal_title_text.dart';
import 'package:nakhtya_app/features/customer/model/cleaner.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/rating_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class DescriptionWidget<T> extends StatelessWidget {
  final T user;
  const DescriptionWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //name and rating
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NormalTitleText(
              text: (user is Cook) ? (user as Cook).name : (user as Cleaner).name,
              color: TColors.textPrimary,
              fontSize: 20,
            ),
            RatingWithStar(
              rating: (user is Cook) ? (user as Cook).rating : (user as Cleaner).rating,
              size: 28,
            ),
          ],
        ),
        //adress
        NormalText(
          text: (user is Cook) ? (user as Cook).address : (user as Cleaner).address,
          color: TColors.textPrimary,
        ),
        Row(
          children: [
            NormalText(
              text: "Last Online: ",
              color: TColors.textPrimary.withOpacity(0.5),
            ),
            NormalText(
              text: (user is Cook) ? (user as Cook).onlineHour : (user as Cleaner).onlineHour,
              color: TColors.textPrimary.withOpacity(0.5),
            ),
          ],
        ),
      ],
    );
  }
}
