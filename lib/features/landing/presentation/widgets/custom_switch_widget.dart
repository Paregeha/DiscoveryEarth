import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';

class CustomSwitchWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;
  final Duration duration;

  const CustomSwitchWidget({
    super.key,
    required this.value,
    required this.onChanged,
    this.width = 60,
    this.height = 32,
    this.activeColor = AppColors.textButton,
    this.inactiveColor = AppColors.textButton,
    this.thumbColor = AppColors.white,
    this.duration = const Duration(milliseconds: 250),
  });

  @override
  Widget build(BuildContext context) {
    final thumbSize = height - 4;

    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: duration,
        width: width,
        height: height,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: value ? activeColor : inactiveColor.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(height / 2),
        ),
        child: AnimatedAlign(
          duration: duration,
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: thumbSize,
            height: thumbSize,
            decoration: BoxDecoration(
              color: thumbColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
