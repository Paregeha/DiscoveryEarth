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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
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
                              child: SvgPicture.asset(
                                Assets.icons.instagram.path,
                              ),
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
                              child: SvgPicture.asset(
                                Assets.icons.twitter.path,
                              ),
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
                              child: SvgPicture.asset(
                                Assets.icons.linkedin.path,
                              ),
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
                              child: SvgPicture.asset(
                                Assets.icons.youtube.path,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore'),
                      Text('Living Gallery'),
                      Text('Eco-Expeditions'),
                      Text('Nature Patrons Club'),
                      Text('Digital Art Vault'),
                      Text('Reverie Journal'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Information'),
                      Text('About Us'),
                      Text('Conservation Partners'),
                      Text('Impact Reports'),
                      Text('Press & Media'),
                      Text('Contact Us'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Legal'),
                      Text('Privacy Policy'),
                      Text('Terms of Service'),
                      Text('Cookie Policy'),
                      Text('Ethical Guidelines'),
                      Text('Accessibility'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(),
          Row(
            children: [
              Text('© 2025 Eden Reverie. All rights reserved.'),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.visa.path),
                  SvgPicture.asset(Assets.icons.mastercard.path),
                  SvgPicture.asset(Assets.icons.paypal.path),
                  SvgPicture.asset(Assets.icons.applepay.path),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
