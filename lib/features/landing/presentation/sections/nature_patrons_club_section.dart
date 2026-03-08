import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/text_info_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class NaturePatronsClubSection extends StatelessWidget {
  const NaturePatronsClubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nature Patrons Club',
                  style: AppTypography.titleSection.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
                SizedBox(height: 27.0),
                Text(
                  'An exclusive circle of visionaries committed to preserving Earth\'s most sacred\n'
                  'natural spaces through strategic philanthropy and conscious stewardship.',
                  style: AppTypography.infoTextSection.copyWith(
                    color: AppColors.secondColor,
                  ),
                ),
                SizedBox(height: 35.0),
                TextInfoWidget(
                  title: 'Direct Conservation Impact',
                  description:
                      'Your membership directly funds the preservation of critical habitats and\n'
                      'endangered species through our network of conservation partners.',
                ),
                TextInfoWidget(
                  title: 'Exclusive Access',
                  description:
                      'Priority invitations to our limited eco-expeditions, private viewings of the Art Vault,\n'
                      'and personal connections with leading conservationists.',
                ),
                TextInfoWidget(
                  title: 'Legacy Creation',
                  description:
                      'Opportunities to create lasting conservation legacies through named initiatives\n'
                      'and long-term preservation projects.',
                ),
                SizedBox(height: 43.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(306.0, 44.0),
                    backgroundColor: AppColors.textButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Request Membership Information',
                    style: AppTypography.buttonText.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Assets.images.naturePatronsClub.image(
                  width: 704.0,
                  height: 521.0,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -24.0,
                  right: -24.0,
                  child: Container(
                    width: 320.0,
                    height: 192.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.1),
                          blurRadius: 4.0,
                          offset: const Offset(0.0, 2.0),
                          spreadRadius: -2.0,
                        ),
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.1),
                          blurRadius: 6.0,
                          offset: const Offset(0.0, 4.0),
                          spreadRadius: -1.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9999.0),
                                child: Assets.images.drEleanorHarrington.image(
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Eleanor Harrington',
                                    style: AppTypography.infoTextSection
                                        .copyWith(
                                          color: AppColors.secondTitleColor,
                                        ),
                                  ),
                                  Text(
                                    'Founding Patron',
                                    style: AppTypography.anyText.copyWith(
                                      color: AppColors.thirdColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 17.0),
                          Text(
                            '"Our collective commitment to these\n'
                            'sacred spaces creates a legacy that\n'
                            'will endure for generations. This is\n'
                            'philanthropy with profound purpose."',
                            style: AppTypography.anyText.copyWith(
                              color: AppColors.secondColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
