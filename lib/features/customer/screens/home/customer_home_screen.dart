import 'package:flutter/material.dart';
import 'package:nakhtya_app/common/widgets/normal_text.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/category_section.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: TColors.primary,
          centerTitle: true,
          title: const NormalText(text: TTexts.home),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                CategorySection(categoryTitle: TTexts.availableCooks, categorySubtitle: TTexts.viewAllCooks),
                SizedBox(height: 10),
                CategorySection(categoryTitle: TTexts.availableCleaners, categorySubtitle: TTexts.viewAllCleaners),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
