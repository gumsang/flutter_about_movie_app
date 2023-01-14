import 'package:flutter/material.dart';

class OnHoverInkAnimation extends StatefulWidget {
  final Widget child;
  const OnHoverInkAnimation({super.key, required this.child});

  @override
  State<OnHoverInkAnimation> createState() => _OnHoverInkAnimationState();
}

class _OnHoverInkAnimationState extends State<OnHoverInkAnimation> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    // final hoverdTransform = Matrix4.identity()..translate(0.0, -8.0, 0.0);
    final hoverdTransform = Matrix4.identity()..scale(1.2);
    final transform = isHovered ? hoverdTransform : Matrix4.identity();
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      transform: transform,
      curve: Curves.fastOutSlowIn,
      child: Material(
        child: InkWell(
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
          child: widget.child,
        ),
      ),
    );
  }
}
