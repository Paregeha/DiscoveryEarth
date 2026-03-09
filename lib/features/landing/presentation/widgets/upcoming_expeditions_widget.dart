import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';

class UpcomingExpeditionsWidget extends StatelessWidget {
  const UpcomingExpeditionsWidget({
    super.key,
    required this.title,
    required this.month,
    required this.description,
    required this.width,
    required this.isMobile,
  });

  final String title;
  final String month;
  final String description;
  final double width;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: const BoxConstraints(minHeight: 210.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 20.0 : 24.0),
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
                  width: 40.0,
                  height: 40.0,
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
              height: 38.0,
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
