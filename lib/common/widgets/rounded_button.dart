import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final Color buttonColor;
  const RoundedButton({
    super.key,
    required this.name,
    this.buttonColor = TColors.buttonPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: TColors.textWhite),
          ),
        ),
      ),
    );
  }
}
