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
  });

  final String title;
  final String month;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 475.0,
      height: 210.0,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTypography.cardTitleText2.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      month,
                      style: AppTypography.anyText.copyWith(
                        color: AppColors.thirdColor,
                      ),
                    ),
                  ],
                ),
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
            SizedBox(height: 17.0),
            Text(
              description,
              style: AppTypography.anyText.copyWith(
                color: AppColors.secondColor,
              ),
            ),
            SizedBox(height: 17.0),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                minimumSize: const Size(double.infinity, 38.0),
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
          ],
        ),
      ),
    );
  }
}
