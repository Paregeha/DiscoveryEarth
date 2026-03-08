import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Column(
        children: [
          SizedBox(height: 64.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Eden Reverie',
                    style: AppTypography.logo.copyWith(
                      color: AppColors.mainColor,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    'A digital sanctuary celebrating Earth\'s most\n'
                    'sacred natural spaces through immersive\n'
                    'experiences and conscious stewardship.',
                    style: AppTypography.anyText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.backIconColor,
                          borderRadius: BorderRadius.circular(9999.0),
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.icons.instagram.path),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.backIconColor,
                          borderRadius: BorderRadius.circular(9999.0),
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.icons.twitter.path),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.backIconColor,
                          borderRadius: BorderRadius.circular(9999.0),
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.icons.linkedin.path),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: AppColors.backIconColor,
                          borderRadius: BorderRadius.circular(9999.0),
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.icons.youtube.path),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: AppTypography.footerHeadText.copyWith(
                      color: AppColors.secondTitleColor,
                    ),
                  ),
                  SizedBox(height: 26.0),
                  Text(
                    'Living Gallery',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),
                  Text(
                    'Eco-Expeditions',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Nature Patrons Club',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Digital Art Vault',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Reverie Journal',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Information',
                    style: AppTypography.footerHeadText.copyWith(
                      color: AppColors.secondTitleColor,
                    ),
                  ),
                  SizedBox(height: 26.0),

                  Text(
                    'About Us',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Conservation Partners',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Impact Reports',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Press & Media',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Contact Us',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Legal',
                    style: AppTypography.footerHeadText.copyWith(
                      color: AppColors.secondTitleColor,
                    ),
                  ),
                  SizedBox(height: 26.0),

                  Text(
                    'Privacy Policy',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Terms of Service',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Cookie Policy',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Ethical Guidelines',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  SizedBox(height: 21.0),

                  Text(
                    'Accessibility',
                    style: AppTypography.cardDescriptionText.copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 64.0),
          Container(
            width: double.infinity,
            height: 65.0,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.borderTop, width: 1.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 39.0, bottom: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '© 2025 Eden Reverie. All rights reserved.',
                    style: AppTypography.anyText.copyWith(
                      color: AppColors.thirdColor,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Assets.icons.visa.path),
                      SizedBox(width: 34.0),
                      SvgPicture.asset(Assets.icons.mastercard.path),
                      SizedBox(width: 34.0),
                      SvgPicture.asset(Assets.icons.paypal.path),
                      SizedBox(width: 34.0),
                      SvgPicture.asset(Assets.icons.applepay.path),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
