import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/cupertino.dart';

class ConservationImpactWidget extends StatelessWidget {
  const ConservationImpactWidget({
    super.key,
    required this.icon,
    required this.count,
    required this.title,
  });

  final Widget icon;
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.0,
      height: 224.0,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 2.0,
            offset: Offset(0.0, 1.0),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              color: AppColors.mainColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(9999.0),
            ),
            child: Center(child: icon),
          ),
          SizedBox(height: 24.0),
          Text(
            count,
            style: AppTypography.countImpact.copyWith(
              color: AppColors.mainColor,
            ),
          ),
          Text(
            title,
            style: AppTypography.cardDescriptionText.copyWith(
              color: AppColors.secondColor,
            ),
          ),
        ],
      ),
    );
  }
}
