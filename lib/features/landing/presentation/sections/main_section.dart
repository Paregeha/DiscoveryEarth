import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/custom_switch_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/navbar_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key, required this.onScrollToSection});

  final void Function(String section) onScrollToSection;

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  bool isAmbientSoundEnabled = true;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    const double fixedButtonWidth = 204.0;
    const double fixedButtonHeight = 44.0;

    final sectionHeight = ResponsiveValue<double>(
      context,
      defaultValue: 760.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 900.0),
        Condition.equals(name: DESKTOP, value: 1200.0),
      ],
    ).value;

    final horizontalPadding = ResponsiveValue<double>(
      context,
      defaultValue: 20.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 48.0),
        Condition.equals(name: DESKTOP, value: 120.0),
      ],
    ).value;

    final topContentOffset = ResponsiveValue<double>(
      context,
      defaultValue: 180.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 240.0),
        Condition.equals(name: DESKTOP, value: 320.0),
      ],
    ).value;

    final titleFontSize = ResponsiveValue<double>(
      context,
      defaultValue: 34.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 52.0),
        Condition.equals(name: DESKTOP, value: 72.0),
      ],
    ).value;

    final descriptionFontSize = ResponsiveValue<double>(
      context,
      defaultValue: 16.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 18.0),
        Condition.equals(name: DESKTOP, value: 22.0),
      ],
    ).value;

    final contentMaxWidth = ResponsiveValue<double>(
      context,
      defaultValue: double.infinity,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 580.0),
        Condition.equals(name: DESKTOP, value: 720.0),
      ],
    ).value;

    final titleText = ResponsiveValue<String>(
      context,
      defaultValue: 'Discover Earth\'s Most Sacred Sanctuaries',
      conditionalValues: const [
        Condition.equals(
          name: TABLET,
          value: 'Discover Earth\'s Most\nSacred Sanctuaries',
        ),
        Condition.equals(
          name: DESKTOP,
          value: 'Discover Earth\'s Most\nSacred Sanctuaries',
        ),
        Condition.equals(
          name: MOBILE,
          value: 'Discover Earth\'s Most\nSacred Sanctuaries',
        ),
      ],
    ).value;

    final descriptionText = ResponsiveValue<String>(
      context,
      defaultValue:
          'An immersive journey into the world\'s most untouched \nnatural wonders, curated for those who seek the extraordinary.',
      conditionalValues: const [
        Condition.equals(
          name: TABLET,
          value:
              'An immersive journey into the world\'s most untouched\nnatural wonders, curated for those who seek the\nextraordinary.',
        ),
        Condition.equals(
          name: DESKTOP,
          value:
              'An immersive journey into the world\'s most untouched\nnatural wonders, curated for those who seek the\nextraordinary.',
        ),
      ],
    ).value;

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
                      alpha: responsive.isMobile ? 0.88 : 0.80,
                    ),
                    AppColors.mainColor.withValues(
                      alpha: responsive.isMobile ? 0.60 : 0.40,
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
                          titleText,
                          style: AppTypography.mainHeadText.copyWith(
                            color: AppColors.white,
                            fontSize: titleFontSize,
                            height: 1.1,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Text(
                          descriptionText,
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
                                    borderRadius: BorderRadius.circular(8.0),
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavbarWidget(onScrollToSection: widget.onScrollToSection),
          ),
        ],
      ),
    );
  }
}
