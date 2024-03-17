import 'package:flutter/material.dart';

class CharacterPosition extends StatelessWidget {
  final double? rightPosition;
  final double? topPositon;
  final double? leftPosition;
  final double? bottomPosition;
  final String image;
  final double imageHeight;
  const CharacterPosition({
    super.key,
    this.rightPosition,
    this.topPositon,
    this.leftPosition,
    this.bottomPosition,
    required this.image,
    this.imageHeight = 210,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottomPosition,
      right: rightPosition,
      top: topPositon,
      left: leftPosition,
      child: Image.asset(
        image,
        height: imageHeight,
      ),
    );
  }
}
