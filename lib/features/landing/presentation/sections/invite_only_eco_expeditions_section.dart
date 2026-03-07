import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/invite_only_eco_expeditions_cards_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/upcoming_expeditions_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class InviteOnlyEcoExpeditionsSection extends StatelessWidget {
  const InviteOnlyEcoExpeditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.backgroundSecond),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80.0),
            child: Column(
              children: [
                Text(
                  'Invite-Only Eco-Expeditions',
                  style: AppTypography.titleSection.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Join our exclusive journeys to Earths most pristine and sacred locations,\n'
                  'guided by renowned naturalists and indigenous wisdom keepers.',
                  style: AppTypography.infoTextSection.copyWith(
                    color: AppColors.secondColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 64.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 40,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      InviteOnlyEcoExpeditionsCardsWidget(
                        image: Assets.images.patagonianWilderness.image(),
                        title: 'Patagonian Wilderness',
                        description:
                            'A 12-day immersive journey through the pristine landscapes of Torres del Paine '
                            'and the remote Aysen region, guided by local conservationists and '
                            'photographers.',
                        date: 'September 15-26, 2025',
                        group: 'Group Size: 8 Patrons',
                      ),
                      InviteOnlyEcoExpeditionsCardsWidget(
                        image: Assets.images.mongolianSteppes.image(),
                        title: 'Mongolian Steppes',
                        description:
                            'A 10-day nomadic journey across the vast Mongolian steppes, connecting with '
                            'traditional herders and experiencing one of Earth s last great wilderness areas.',
                        date: 'July 5-14, 2025',
                        group: 'Group Size: 6 Patrons',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 64.0),
                Text(
                  'Upcoming Expeditions',
                  style: AppTypography.cardTitleText.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
                SizedBox(height: 32.0),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    UpcomingExpeditionsWidget(
                      title: 'Bhutanese Highlands',
                      month: 'October 2025',
                      description:
                          'Sacred monasteries and untouched mountain ecosystems in\n'
                          'the world\'s most carbon-negative country.',
                    ),
                    UpcomingExpeditionsWidget(
                      title: 'New Zealand Fiordlands',
                      month: 'November 2025',
                      description:
                          'Ancient rainforests and pristine fjords with Māori cultural\n'
                          'immersion and conservation initiatives.',
                    ),
                    UpcomingExpeditionsWidget(
                      title: 'Madagascar Rainforests',
                      month: 'January 2026',
                      description:
                          'Encounter unique endemic species and support critical\n'
                          'conservation efforts in biodiversity hotspots.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
