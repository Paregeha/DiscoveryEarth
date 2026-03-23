import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../gen/assets.gen.dart';

class LivingGallerySection extends StatelessWidget {
  const LivingGallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final horizontalPadding = ResponsiveValue<double>(
      context,
      defaultValue: 224.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 60.0),
        Condition.equals(name: MOBILE, value: 24.0),
      ],
    ).value;

    final crossAxisCount = ResponsiveValue<int>(
      context,
      defaultValue: 3,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 2),
        Condition.equals(name: MOBILE, value: 1),
      ],
    ).value;

    final childAspectRatio = ResponsiveValue<double>(
      context,
      defaultValue: 1.15,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 475 / 384),
        Condition.equals(name: DESKTOP, value: 475 / 384),
      ],
    ).value;

    final description = ResponsiveValue<String>(
      context,
      defaultValue:
          'Immerse yourself in Earths most breathtaking landscapes through full-screen films and 3D audio experiences.',
      conditionalValues: const [
        Condition.equals(
          name: TABLET,
          value:
              'Immerse yourself in Earths most breathtaking landscapes through full-\n'
              'screen films and 3D audio experiences.',
        ),
        Condition.equals(
          name: DESKTOP,
          value:
              'Immerse yourself in Earths most breathtaking landscapes through full-\n'
              'screen films and 3D audio experiences.',
        ),
      ],
    ).value;

    final verticalPadding = ResponsiveValue<double>(
      context,
      defaultValue: 56.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 72.0),
        Condition.equals(name: DESKTOP, value: 80.0),
      ],
    ).value;

    final titleBottomSpacing = ResponsiveValue<double>(
      context,
      defaultValue: 12.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 16.0),
        Condition.equals(name: DESKTOP, value: 16.0),
      ],
    ).value;

    final gridTopSpacing = ResponsiveValue<double>(
      context,
      defaultValue: 40.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 56.0),
        Condition.equals(name: DESKTOP, value: 64.0),
      ],
    ).value;

    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
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
            SizedBox(height: titleBottomSpacing),
            Text(
              description,
              style: AppTypography.infoTextSection.copyWith(
                color: AppColors.secondColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: gridTopSpacing),
            responsive.isMobile
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 24,
                      children: [
                        expeditionImage(Assets.images.amazonRainforest),
                        expeditionImage(Assets.images.himalayanPeaks),
                        expeditionImage(Assets.images.greatBarrierReef),
                        expeditionImage(Assets.images.serengetiPlains),
                        expeditionImage(Assets.images.icelandicAurora),
                        expeditionImage(Assets.images.redwoodForest),
                      ],
                    ),
                  )
                : GridView.count(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 24.0,
                    mainAxisSpacing: 24.0,
                    childAspectRatio: childAspectRatio,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      expeditionImage(Assets.images.amazonRainforest),
                      expeditionImage(Assets.images.himalayanPeaks),
                      expeditionImage(Assets.images.greatBarrierReef),
                      expeditionImage(Assets.images.serengetiPlains),
                      expeditionImage(Assets.images.icelandicAurora),
                      expeditionImage(Assets.images.redwoodForest),
                    ],
                  ),
            const SizedBox(height: 40.0),
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
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget expeditionImage(AssetGenImage image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: image.image(fit: BoxFit.cover),
    );
  }
}
