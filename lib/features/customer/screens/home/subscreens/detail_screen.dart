// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakhtya_app/common/widgets/app_bar.dart';
import 'package:nakhtya_app/common/widgets/date_picker_section.dart';
import 'package:nakhtya_app/common/widgets/rounded_button.dart';
import 'package:nakhtya_app/features/customer/model/cleaner.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/description_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/negotation_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/price_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/speciality_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/user_image_section.dart';
import 'package:nakhtya_app/utils/constants/sizes.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class DetailScreen<T> extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final T user = Get.arguments;
    return Scaffold(
      appBar: TAppBar(
        title:(user is Cook)? (user).name:(user as Cleaner).name,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: TSizes.screenHeight,
          child: Column(
            children: [
              //User Image
              UserImageSection(user: user),
              //user details
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DescriptionWidget(user: user),
                      const SizedBox(height: 20),
                      // price
                      PriceSection(user: user),
                      const SizedBox(height: 20),
                      //speciality
                      const SpecialitySection(),
                      const SizedBox(height: 20),
                      //date
                      const DatePickerSection(),
                      const SizedBox(height: 20),
                      //price negotaion
                      NegotationSection(user: user),
                      const SizedBox(height: 20),
                      //chat button
                      RoundedButton(
                        name: TTexts.bookCook,
                        onTap: () {},
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
