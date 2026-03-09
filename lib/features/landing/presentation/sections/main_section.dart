import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/custom_switch_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/navbar_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  bool isAmbientSoundEnabled = true;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final isDesktop = width >= 1200;
        final isTablet = width >= 768 && width < 1200;
        final isMobile = width < 768;

        const double fixedButtonWidth = 204.0;
        const double fixedButtonHeight = 44.0;

        final sectionHeight = isDesktop
            ? 1200.0
            : isTablet
            ? 900.0
            : 760.0;

        final horizontalPadding = isDesktop
            ? 120.0
            : isTablet
            ? 48.0
            : 20.0;

        final topContentOffset = isDesktop
            ? 320.0
            : isTablet
            ? 240.0
            : 180.0;

        final titleFontSize = isDesktop
            ? 72.0
            : isTablet
            ? 52.0
            : 34.0;

        final descriptionFontSize = isDesktop
            ? 22.0
            : isTablet
            ? 18.0
            : 16.0;

        final contentMaxWidth = isDesktop
            ? 720.0
            : isTablet
            ? 580.0
            : double.infinity;

        return SizedBox(
          height: sectionHeight,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Assets.images.background.image(fit: BoxFit.cover),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.mainColor.withValues(
                          alpha: isMobile ? 0.88 : 0.80,
                        ),
                        AppColors.mainColor.withValues(
                          alpha: isMobile ? 0.60 : 0.40,
                        ),
                        AppColors.mainColor.withValues(alpha: 0.0),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: horizontalPadding,
                      right: horizontalPadding,
                      top: topContentOffset,
                      bottom: 40.0,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: contentMaxWidth),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Discover Earth\'s Most\nSacred Sanctuaries',
                              style: AppTypography.mainHeadText.copyWith(
                                color: AppColors.white,
                                fontSize: titleFontSize,
                                height: 1.1,
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            Text(
                              isMobile
                                  ? 'An immersive journey into the world\'s most untouched natural wonders, curated for those who seek the extraordinary.'
                                  : 'An immersive journey into the world\'s most untouched\nnatural wonders, curated for those who seek the\nextraordinary.',
                              style: AppTypography.secondHeadText.copyWith(
                                color: AppColors.white.withValues(alpha: 0.9),
                                fontSize: descriptionFontSize,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 32.0),
                            Wrap(
                              spacing: 16.0,
                              runSpacing: 16.0,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                SizedBox(
                                  width: fixedButtonWidth,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.textButton,
                                      minimumSize: const Size(
                                        fixedButtonWidth,
                                        fixedButtonHeight,
                                      ),
                                      maximumSize: const Size(
                                        fixedButtonWidth,
                                        fixedButtonHeight,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Begin Your Journey',
                                      style: AppTypography.anyText.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomSwitchWidget(
                                      value: isAmbientSoundEnabled,
                                      onChanged: (value) {
                                        setState(() {
                                          isAmbientSoundEnabled = value;
                                        });
                                      },
                                      width: 50.0,
                                      height: 24.0,
                                    ),
                                    const SizedBox(width: 12.0),
                                    Text(
                                      'Ambient Sound',
                                      style: AppTypography.anyText.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: NavbarWidget(),
              ),
            ],
          ),
        );
      },
    );
  }
}
