import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentConservationInitiativesWidget extends StatelessWidget {
  const CurrentConservationInitiativesWidget({
    super.key,
    required this.title,
    required this.description,
    required this.totalText,
    required this.countText,
    required this.total,
    required this.count,
  });

  final String title;
  final String description;
  final String totalText;
  final String countText;
  final double total;
  final double count;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 35.0,
          height: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9999.0),
            color: AppColors.mainColor.withValues(alpha: 0.1),
          ),
          child: Center(child: SvgPicture.asset(Assets.icons.protection.path)),
        ),
        SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.cardTitleText2.copyWith(
                  color: AppColors.secondTitleColor,
                ),
              ),
              const SizedBox(height: 9),

              Expanded(
                child: SizedBox(
                  width: 636,
                  child: Text(
                    description,
                    style: AppTypography.anyText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: 636.0,
                child: LinearProgressIndicator(
                  value: total == 0 ? 0 : count / total,
                  minHeight: 8.0,
                  borderRadius: BorderRadius.circular(9999.0),
                  backgroundColor: AppColors.borderTop,
                  valueColor: AlwaysStoppedAnimation(AppColors.textButton),
                ),
              ),

              const SizedBox(height: 8),

              Expanded(
                child: SizedBox(
                  width: 636.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        countText,
                        style: AppTypography.anyText2.copyWith(
                          color: AppColors.thirdColor,
                        ),
                      ),
                      Text(
                        totalText,
                        style: AppTypography.anyText2.copyWith(
                          color: AppColors.thirdColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
