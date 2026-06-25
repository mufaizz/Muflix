import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const CustomLoading({
    super.key,
    this.width = 140,
    this.height = 2,
    this.color = AppColors.primaryContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(seconds: 3),
        builder: (context, value, child) {
          return FractionallySizedBox(
            widthFactor: value,
            child: Container(
              height: height,
              color: color,
            ),
          );
        },
      ),
    );
  }
}