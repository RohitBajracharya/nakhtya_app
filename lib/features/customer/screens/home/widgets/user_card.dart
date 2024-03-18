import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/common/widgets/normal_title_text.dart';
import 'package:nakhtya_app/common/widgets/small_text.dart';
import 'package:nakhtya_app/features/customer/model/cleaner.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/rating_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class UserCard<T> extends StatelessWidget {
  final T user;
  final VoidCallback onTap;
  const UserCard({
    super.key,
    required this.onTap,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: TColors.containerDark,
              boxShadow: const [
                BoxShadow(
                  color: TColors.primary,
                  blurRadius: 1,
                  spreadRadius: 1.5,
                  offset: Offset.zero,
                ),
              ],
            ),
            child: Column(
              children: [
                //profile picture part
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.asset(
                    (user is Cook) ? (user as Cook).image : (user as Cleaner).image,
                  ),
                ),
                //bottom part
                Container(
                  height: 100,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                    color: TColors.containerLight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name and rating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //name
                            Expanded(child: NormalTitleText(text: (user is Cook) ? (user as Cook).name : (user as Cleaner).name, color: TColors.textPrimary)),
                            //rating with star
                            RatingWithStar(rating: (user is Cook) ? (user as Cook).rating : (user as Cleaner).rating),
                          ],
                        ),
                        const SizedBox(height: 5),
                        //price
                        NormalText(text: "${(user is Cook) ? (user as Cook).price : (user as Cleaner).price}", color: TColors.textPrimary),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const SmallText(text: "Last Online: "),
                            SmallText(text: (user is Cook) ? (user as Cook).onlineHour : (user as Cleaner).onlineHour),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
