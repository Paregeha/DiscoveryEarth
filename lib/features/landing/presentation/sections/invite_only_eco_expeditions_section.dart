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

        final bool isDesktop = width >= 1200;
        final bool isTablet = width >= 768 && width < 1200;
        final bool isMobile = width < 768;

        final double horizontalPadding = isDesktop
            ? 120.0
            : isTablet
            ? 48.0
            : 20.0;

        final double sectionVerticalPadding = isDesktop
            ? 80.0
            : isTablet
            ? 64.0
            : 48.0;

        final double expeditionSpacing = isDesktop ? 40.0 : 24.0;
        final double upcomingSpacing = isDesktop ? 24.0 : 16.0;

        final double availableWidth = width - (horizontalPadding * 2);

        final double expeditionCardWidth = isDesktop
            ? (availableWidth - expeditionSpacing) / 2
            : availableWidth;

        final double upcomingCardWidth = isDesktop
            ? (availableWidth - (upcomingSpacing * 2)) / 3
            : isTablet
            ? (availableWidth - upcomingSpacing) / 2
            : availableWidth;

        return Container(
          width: double.infinity,
          color: AppColors.backgroundSecond,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: sectionVerticalPadding,
            ),
            child: Column(
              children: [
                Text(
                  'Invite-Only Eco-Expeditions',
                  textAlign: TextAlign.center,
                  style: AppTypography.titleSection.copyWith(
                    color: AppColors.mainColor,
                    fontSize: isDesktop ? null : (isTablet ? 40.0 : 30.0),
                  ),
                ),
                const SizedBox(height: 16.0),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 820.0),
                  child: Text(
                    'Join our exclusive journeys to Earths most pristine and sacred locations, guided by renowned naturalists and indigenous wisdom keepers.',
                    textAlign: TextAlign.center,
                    style: AppTypography.infoTextSection.copyWith(
                      color: AppColors.secondColor,
                      fontSize: isDesktop ? null : (isTablet ? 18.0 : 16.0),
                      height: 1.5,
                    ),
                  ),
                ),
                SizedBox(height: isMobile ? 40.0 : 64.0),

                /// instead of GridView.count
                Wrap(
                  spacing: expeditionSpacing,
                  runSpacing: expeditionSpacing,
                  children: [
                    SizedBox(
                      width: expeditionCardWidth,
                      child: InviteOnlyEcoExpeditionsCardsWidget(
                        isMobile: isMobile,
                        isTablet: isTablet,
                        image: Assets.images.patagonianWilderness.image(
                          fit: BoxFit.cover,
                        ),
                        title: 'Patagonian Wilderness',
                        description:
                            'A 12-day immersive journey through the pristine landscapes of Torres del Paine and the remote Aysen region, guided by local conservationists and photographers.',
                        date: 'September 15-26, 2025',
                        group: 'Group Size: 8 Patrons',
                      ),
                    ),
                    SizedBox(
                      width: expeditionCardWidth,
                      child: InviteOnlyEcoExpeditionsCardsWidget(
                        isMobile: isMobile,
                        isTablet: isTablet,
                        image: Assets.images.mongolianSteppes.image(
                          fit: BoxFit.cover,
                        ),
                        title: 'Mongolian Steppes',
                        description:
                            'A 10-day nomadic journey across the vast Mongolian steppes, connecting with traditional herders and experiencing one of Earth’s last great wilderness areas.',
                        date: 'July 5-14, 2025',
                        group: 'Group Size: 6 Patrons',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: isMobile ? 48.0 : 64.0),

                Text(
                  'Upcoming Expeditions',
                  textAlign: TextAlign.center,
                  style: AppTypography.cardTitleText.copyWith(
                    color: AppColors.mainColor,
                    fontSize: isDesktop ? null : (isTablet ? 28.0 : 24.0),
                  ),
                ),
                const SizedBox(height: 32.0),

                Wrap(
                  spacing: upcomingSpacing,
                  runSpacing: upcomingSpacing,
                  children: [
                    UpcomingExpeditionsWidget(
                      width: upcomingCardWidth,
                      isMobile: isMobile,
                      title: 'Bhutanese Highlands',
                      month: 'October 2025',
                      description:
                          'Sacred monasteries and untouched mountain ecosystems in the world\'s most carbon-negative country.',
                    ),
                    UpcomingExpeditionsWidget(
                      width: upcomingCardWidth,
                      isMobile: isMobile,
                      title: 'New Zealand Fiordlands',
                      month: 'November 2025',
                      description:
                          'Ancient rainforests and pristine fjords with Māori cultural immersion and conservation initiatives.',
                    ),
                    UpcomingExpeditionsWidget(
                      width: upcomingCardWidth,
                      isMobile: isMobile,
                      title: 'Madagascar Rainforests',
                      month: 'January 2026',
                      description:
                          'Encounter unique endemic species and support critical conservation efforts in biodiversity hotspots.',
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
