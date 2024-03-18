// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nakhtya_app/common/widgets/app_bar.dart';
import 'package:nakhtya_app/common/widgets/rounded_button.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/description_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/negotation_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/price_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/speciality_section.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/user_image_section.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/sizes.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class CookDetailScreen extends StatelessWidget {
  const CookDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Cook cook = Get.arguments;
    return Scaffold(
      appBar: TAppBar(
        title: cook.name,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: TSizes.screenHeight,
          child: Column(
            children: [
              //User Image
              UserImageSection(user: cook),
              //user details
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DescriptionWidget(user: cook),
                      const SizedBox(height: 20),
                      // price
                      PriceSection(user: cook),
                      const SizedBox(height: 20),
                      //speciality
                      const SpecialitySection(),
                      const SizedBox(height: 20),
                      //date
                      const DatePickerSection(),
                      const SizedBox(height: 20),
                      //price negotaion
                      NegotationSection(user: cook),
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

class DatePickerSection extends StatefulWidget {
  const DatePickerSection({
    super.key,
  });

  @override
  State<DatePickerSection> createState() => _DatePickerSectionState();
}

class _DatePickerSectionState extends State<DatePickerSection> {
  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _dateController,
      decoration: const InputDecoration(
        label: Text("Select a Date"),
        labelStyle: TextStyle(
          color: TColors.backgroundDark,
        ),
        filled: true,
        prefixIcon: Icon(Iconsax.calendar),
        iconColor: TColors.primary,
      ),
      readOnly: true,
      onTap: () {
        _selectDate(context);
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
