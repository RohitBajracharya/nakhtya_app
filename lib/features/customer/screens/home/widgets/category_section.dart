import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakhtya_app/features/customer/model/cook.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/category_text.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/user_card.dart';
import 'package:nakhtya_app/features/customer/screens/home/widgets/view_all_button.dart';
import 'package:nakhtya_app/utils/routes/route.dart';

class CategorySection extends StatelessWidget {
  final String categoryTitle;
  final String categorySubtitle;
  const CategorySection({
    super.key,
    required this.categoryTitle,
    required this.categorySubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // available cooks and view all cooks section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //available cooks text
            CategoryText(text: categoryTitle),
            //view all cooks textbutton
            ViewAllButton(text: categorySubtitle, onTap: () {}),
          ],
        ),
        const SizedBox(height: 10),
        //available cooks list

        SizedBox(
          width: double.infinity,
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final cook = CookList().cooks[index];
              return UserCard(
                cook: cook,
                onTap: () {
                  Get.toNamed(
                    TRoutes.getCookDetail(),
                    arguments: cook,
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
