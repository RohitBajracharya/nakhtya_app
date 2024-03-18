// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:nakhtya_app/utils/constants/colors.dart';

class CustomSlider extends StatefulWidget {
  final double value;
  final double min;
  final int divisions;
  final ValueChanged<double>? onChanged;

  const CustomSlider({
    super.key,
    required this.value,
    required this.min,
    this.divisions = 1,
    this.onChanged,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double _currentSliderValue;

  @override
  void initState() {
    super.initState();
    _currentSliderValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Slider(
          label: _currentSliderValue.round().toString(),
          thumbColor: TColors.primary,
          value: _currentSliderValue,
          min: 1000,
          max: 10000,
          divisions: 10000,
          activeColor: Colors.green,
          onChanged: (double value) {
            double newValue = (value / 100).round() * 100;

            setState(() {
              _currentSliderValue = newValue;
            });

            if (widget.onChanged != null) {
              widget.onChanged!(_currentSliderValue);
            }
          },
          semanticFormatterCallback: (double value) {
            return '${value.toInt()}'; // Generate label for each division
          },
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("1000"),
            Text('5000'),
            Text('10000'),
          ],
        ),
      ],
    );
  }
}
