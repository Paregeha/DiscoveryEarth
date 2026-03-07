import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class LivingGallerySection extends StatelessWidget {
  const LivingGallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        int crossAxisCount;
        double horizontalPadding;
        double childAspectRatio;
        String description;

        if (width >= 1400) {
          crossAxisCount = 3;
          horizontalPadding = 224.0;
          childAspectRatio = 475 / 384;
          description =
              'Immerse yourself in Earths most breathtaking landscapes through full-\n'
              'screen films and 3D audio experiences.';
        } else if (width >= 800) {
          crossAxisCount = 2;
          horizontalPadding = 80.0;
          childAspectRatio = 475 / 384;
          description =
              'Immerse yourself in Earths most breathtaking landscapes through full-\n'
              'screen films and 3D audio experiences.';
        } else {
          crossAxisCount = 1;
          horizontalPadding = 24.0;
          childAspectRatio = 1.15;
          description =
              'Immerse yourself in Earths most breathtaking landscapes through full-screen films and 3D audio experiences.';
        }

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.white),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 80.0,
              horizontal: horizontalPadding,
            ),
            child: Column(
              children: [
                Text(
                  'Living Gallery',
                  style: AppTypography.titleSection.copyWith(
                    color: AppColors.mainColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0),
                Text(
                  description,
                  style: AppTypography.infoTextSection.copyWith(
                    color: AppColors.secondColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 64.0),
                GridView.count(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 24.0,
                  mainAxisSpacing: 24.0,
                  childAspectRatio: childAspectRatio,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    expeditionImage(Assets.images.amazonRainforest),
                    expeditionImage(Assets.images.himalayanPeaks),
                    expeditionImage(Assets.images.greatBarrierReef),
                    expeditionImage(Assets.images.serengetiPlains),
                    expeditionImage(Assets.images.icelandicAurora),
                    expeditionImage(Assets.images.redwoodForest),
                  ],
                ),
                SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    minimumSize: const Size(212.0, 46.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: AppColors.mainColor, width: 1),
                    ),
                  ),
                  child: Text(
                    'View All Experiences',
                    style: AppTypography.buttonText.copyWith(
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget expeditionImage(AssetGenImage image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: image.image(fit: BoxFit.cover),
    );
  }
}
