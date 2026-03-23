import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../gen/assets.gen.dart';

class UpcomingExpeditionsWidget extends StatelessWidget {
  const UpcomingExpeditionsWidget({
    super.key,
    required this.title,
    required this.month,
    required this.description,
  });

  final String title;
  final String month;
  final String description;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final width = ResponsiveValue<double>(
      context,
      defaultValue: 320.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 340.0),
        Condition.equals(name: DESKTOP, value: 376.0),
      ],
    ).value;

    final padding = ResponsiveValue<double>(
      context,
      defaultValue: 20.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 24.0),
        Condition.equals(name: DESKTOP, value: 24.0),
      ],
    ).value;

    final minHeight = ResponsiveValue<double>(
      context,
      defaultValue: 210.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 210.0),
        Condition.equals(name: DESKTOP, value: 210.0),
      ],
    ).value;

    final iconSize = ResponsiveValue<double>(
      context,
      defaultValue: 40.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 40.0),
        Condition.equals(name: DESKTOP, value: 40.0),
      ],
    ).value;

    final buttonHeight = ResponsiveValue<double>(
      context,
      defaultValue: 38.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 38.0),
        Condition.equals(name: DESKTOP, value: 38.0),
      ],
    ).value;

    return Container(
      width: width,
      constraints: BoxConstraints(minHeight: minHeight),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      const SizedBox(height: 4.0),
                      Text(
                        month,
                        style: AppTypography.anyText.copyWith(
                          color: AppColors.thirdColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12.0),
                Container(
                  width: iconSize,
                  height: iconSize,
                  decoration: BoxDecoration(
                    color: AppColors.backIconColor,
                    borderRadius: BorderRadius.circular(9999.0),
                  ),
                  child: SvgPicture.asset(
                    Assets.icons.kolokol.path,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 17.0),
            Text(
              description,
              style: AppTypography.anyText.copyWith(
                color: AppColors.secondColor,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 17.0),
            SizedBox(
              width: double.infinity,
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: AppColors.borderColor),
                  ),
                ),
                child: Text(
                  'Join Waitlist',
                  style: AppTypography.anyText.copyWith(
                    color: AppColors.navBarIcon,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
