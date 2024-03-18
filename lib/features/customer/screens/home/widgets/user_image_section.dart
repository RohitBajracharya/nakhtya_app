import 'package:flutter/material.dart';
import 'package:nakhtya_app/features/customer/model/cleaner.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/sizes.dart';

class UserImageSection<T> extends StatelessWidget {
  final T user;
  const UserImageSection({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: TSizes.screenHeight / 4.0,
      color: TColors.backgroundLight,
      child: Image.asset((user is Cook) ? (user as Cook).image : (user as Cleaner).image),
    );
  }
}
