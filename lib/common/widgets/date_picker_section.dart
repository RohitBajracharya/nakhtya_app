import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

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
