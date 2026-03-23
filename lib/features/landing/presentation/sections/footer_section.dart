import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants/app_constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = ResponsiveValue<double>(
      context,
      defaultValue: 192.0,
      conditionalValues: [
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 100.0),
        Condition.equals(name: TABLET, value: 60.0),
        Condition.equals(name: MOBILE, value: 20.0),
      ],
    ).value;

    final crossAxisCount = ResponsiveValue<int>(
      context,
      defaultValue: 4,
      conditionalValues: [
        Condition.equals(name: TABLET, value: 2),
        Condition.equals(name: MOBILE, value: 1),
      ],
    ).value;

    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.only(
          left: horizontalPadding,
          right: horizontalPadding,
          top: 64.0,
          bottom: 32.0,
        ),
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              mainAxisExtent: 300,
              children: [
                _buildBrandColumn(),
                _buildLinksColumn(
                  title: 'Explore',
                  items: const [
                    'Living Gallery',
                    'Eco-Expeditions',
                    'Nature Patrons Club',
                    'Digital Art Vault',
                    'Reverie Journal',
                  ],
                ),
                _buildLinksColumn(
                  title: 'Information',
                  items: const [
                    'About Us',
                    'Conservation Partners',
                    'Impact Reports',
                    'Press & Media',
                    'Contact Us',
                  ],
                ),
                _buildLinksColumn(
                  title: 'Legal',
                  items: const [
                    'Privacy Policy',
                    'Terms of Service',
                    'Cookie Policy',
                    'Ethical Guidelines',
                    'Accessibility',
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 24.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.borderTop, width: 1.0),
                ),
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 16.0,
                spacing: 16.0,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    '© 2025 Eden Reverie. All rights reserved.',
                    style: AppTypography.anyText.copyWith(
                      color: AppColors.thirdColor,
                    ),
                  ),
                  Wrap(
                    spacing: 24.0,
                    runSpacing: 12.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.icons.visa.path),
                      SvgPicture.asset(Assets.icons.mastercard.path),
                      SvgPicture.asset(Assets.icons.paypal.path),
                      SvgPicture.asset(Assets.icons.applepay.path),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBrandColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Eden Reverie',
          style: AppTypography.logo.copyWith(color: AppColors.mainColor),
        ),
        const SizedBox(height: 25.0),
        Text(
          'A digital sanctuary celebrating Earth\'s most\n'
          'sacred natural spaces through immersive\n'
          'experiences and conscious stewardship.',
          style: AppTypography.anyText.copyWith(color: AppColors.secondColor),
        ),
        const SizedBox(height: 25.0),
        Expanded(
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              _socialIcon(Assets.icons.instagram.path),
              _socialIcon(Assets.icons.twitter.path),
              _socialIcon(Assets.icons.linkedin.path),
              _socialIcon(Assets.icons.youtube.path),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLinksColumn({
    required String title,
    required List<String> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.footerHeadText.copyWith(
            color: AppColors.secondTitleColor,
          ),
        ),
        const SizedBox(height: 26.0),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 21.0),
            child: Text(
              item,
              style: AppTypography.cardDescriptionText.copyWith(
                color: AppColors.secondColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _socialIcon(String assetPath) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: AppColors.backIconColor,
        borderRadius: BorderRadius.circular(9999.0),
      ),
      child: Center(child: SvgPicture.asset(assetPath)),
    );
  }
}
