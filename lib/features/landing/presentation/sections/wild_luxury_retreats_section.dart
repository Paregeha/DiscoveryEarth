import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';

import '../widgets/map_widget.dart';

class WildLuxuryRetreatsSection extends StatelessWidget {
  const WildLuxuryRetreatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundSecond,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Column(
          children: [
            Text(
              'Wild Luxury Retreats',
              style: AppTypography.titleSection.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Discover our curated collection of the world\'s most exclusive eco-\n'
              'sanctuaries, where unparalleled luxury meets untouched wilderness.',
              style: AppTypography.infoTextSection.copyWith(
                color: AppColors.secondColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 64.0),
            MapWidget(),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.textButton,
                minimumSize: Size(238.0, 44.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Request Retreat Catalog',
                style: AppTypography.buttonText.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
