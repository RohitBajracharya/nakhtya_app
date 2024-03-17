import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/common/widgets/normal_title_text.dart';
import 'package:nakhtya_app/common/widgets/small_text.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/rating_text.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/image_strings.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  TImages.cookuser1,
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
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name and rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //name
                          NormalTitleText(text: "John Doe", color: TColors.textPrimary),
                          //rating with star
                          RatingWithStar(rating: "4.5"),
                        ],
                      ),
                      SizedBox(height: 5),
                      //price
                      NormalText(text: "Rs. 3000", color: TColors.textPrimary),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SmallText(text: "Last Online: "),
                          SmallText(text: "1 Hours Ago"),
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
    );
  }
}
