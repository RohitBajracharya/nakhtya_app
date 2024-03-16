import 'package:flutter/material.dart';

class TSlideAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Offset beginOffset;
  final Offset endOffset;
  const TSlideAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 1500),
    this.beginOffset = const Offset(-1, 0),
    this.endOffset = Offset.zero,
  });

  @override
  State<TSlideAnimation> createState() => _TSlideAnimationState();
}

class _TSlideAnimationState extends State<TSlideAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: widget.duration);
    _slideAnimation = Tween<Offset>(begin: widget.beginOffset, end: widget.endOffset).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: widget.child,
    );
  }
}
