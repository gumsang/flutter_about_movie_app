import 'package:flutter/material.dart';

class OnHoverAnimation extends StatefulWidget {
  final Widget child;
  const OnHoverAnimation({super.key, required this.child});

  @override
  State<OnHoverAnimation> createState() => _OnHoverAnimationState();
}

class _OnHoverAnimationState extends State<OnHoverAnimation> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoverdTransform = Matrix4.identity()..translate(0.0, -8.0, 0.0);
    // final hoverdTransform = Matrix4.identity()..scale(1.2);
    final transform = isHovered ? hoverdTransform : Matrix4.identity();
    return MouseRegion(
      onHover: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
