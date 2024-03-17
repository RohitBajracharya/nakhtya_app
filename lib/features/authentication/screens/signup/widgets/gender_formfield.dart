import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';
import 'package:nakhtya_app/utils/constants/text_strings.dart';

class GenderFormField extends StatelessWidget {
  const GenderFormField({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedGender;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.male, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: DropdownButton<String>(
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              hint: const Text(
                TTexts.selectGender,
                style: TextStyle(color: TColors.textWhite),
              ),
              value: selectedGender,
              onChanged: (String? newValue) {
                // setState(() {
                //   _selectedGender = newValue;
                // });
              },
              dropdownColor: TColors.secondary.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              items: <String>['Male', 'Female'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: TColors.textWhite),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
