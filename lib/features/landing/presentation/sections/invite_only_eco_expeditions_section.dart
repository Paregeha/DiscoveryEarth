import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/core/constants/app_constants.dart';
import 'package:discover_earth/features/landing/presentation/widgets/invite_only_eco_expeditions_cards_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/upcoming_expeditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../gen/assets.gen.dart';

class InviteOnlyEcoExpeditionsSection extends StatelessWidget {
  const InviteOnlyEcoExpeditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final horizontalPadding = ResponsiveValue<double>(
      context,
      defaultValue: 224.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 60.0),
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 60.0),
        Condition.equals(name: MOBILE, value: 24.0),
      ],
    ).value;

    final sectionVerticalPadding = ResponsiveValue<double>(
      context,
      defaultValue: 48.0,
      conditionalValues: const [
        Condition.equals(name: TABLET, value: 64.0),
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 64.0),
        Condition.equals(name: DESKTOP, value: 80.0),
      ],
    ).value;

    final itemWidth = ResponsiveValue<double>(
      context,
      defaultValue: 716.0,
      conditionalValues: [
        Condition.equals(name: TABLET, value: 450.0),
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 450.0),

        Condition.equals(name: MOBILE, value: 400.0),
      ],
    ).value;

    final spacing = ResponsiveValue<double>(
      context,
      defaultValue: 24.0,
      conditionalValues: [
        Condition.equals(name: TABLET, value: 20),
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 20),

        Condition.equals(name: MOBILE, value: 20),
      ],
    ).value;

    final crossAxisCount = ResponsiveValue(
      context,
      defaultValue: 1,
      conditionalValues: [Condition.equals(name: DESKTOP, value: 2)],
    ).value;

    final items = [
      {
        'image': Assets.images.patagonianWilderness.image(fit: BoxFit.cover),
        'title': 'Patagonian Wilderness',
        'description':
            'A 12-day immersive journey through the pristine landscapes '
            'of Torres del Paine and the remote Aysen region,'
            ' guided by local conservationists and photographers.',
        'date': 'September 15-26, 2025',
        'group': 'Group Size: 8 Patrons',
      },
      {
        'image': Assets.images.mongolianSteppes.image(fit: BoxFit.cover),
        'title': 'Mongolian Steppes',
        'description':
            'A 10-day nomadic journey across the vast Mongolian steppes, '
            'connecting with traditional herders and experiencing '
            'one of Earth’s last great wilderness areas.',
        'date': 'July 5-14, 2025',
        'group': 'Group Size: 6 Patrons',
      },
    ];

    final itemsUpcoming = [
      {
        'title': 'Bhutanese Highlands',
        'month': 'October 2025',
        'description':
            'Sacred monasteries and untouched mountain ecosystems in the world\'s most carbon-negative country.',
      },
      {
        'title': 'New Zealand Fiordlands',
        'month': 'November 2025',
        'description':
            'Ancient rainforests and pristine fjords with Māori cultural immersion and conservation initiatives.',
      },
      {
        'title': 'Madagascar Rainforests',
        'month': 'January 2026',
        'description':
            'Encounter unique endemic species and support critical conservation efforts in biodiversity hotspots.',
      },
    ];

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
              ),
            ),
            Text(
              'Join our exclusive journeys to Earths most pristine and sacred locations, \n'
              'guided by renowned naturalists and indigenous wisdom keepers.',
              textAlign: TextAlign.center,
              style: AppTypography.infoTextSection.copyWith(
                color: AppColors.secondColor,
                fontSize: 24,
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),
            responsive.isMobile
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: items.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: SizedBox(
                            width:
                                responsive.screenWidth - horizontalPadding * 2,
                            child: InviteOnlyEcoExpeditionsCardsWidget(
                              image: item['image'] as Widget,
                              title: item['title'] as String,
                              description: item['description'] as String,
                              date: item['date'] as String,
                              group: item['group'] as String,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      mainAxisExtent: 572.0.clamp(572, 620),
                      childAspectRatio: 572 / 716,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final item = items[index];
                      return InviteOnlyEcoExpeditionsCardsWidget(
                        image: item['image'] as Widget,
                        title: item['title'].toString(),
                        description: item['description'].toString(),

                        date: item['date'].toString(),
                        group: item['group'].toString(),
                      );
                    },
                  ),
            SizedBox(height: 64.0),
            Text(
              'Upcoming Expeditions',
              textAlign: TextAlign.center,
              style: AppTypography.cardTitleText.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 32.0),

            responsive.isMobile
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: spacing,
                      children: [
                        UpcomingExpeditionsWidget(
                          title: 'Bhutanese Highlands',
                          month: 'October 2025',
                          description:
                              'Sacred monasteries and untouched mountain ecosystems in the world\'s most carbon-negative country.',
                        ),

                        UpcomingExpeditionsWidget(
                          title: 'New Zealand Fiordlands',
                          month: 'November 2025',
                          description:
                              'Ancient rainforests and pristine fjords with Māori cultural immersion and conservation initiatives.',
                        ),
                        UpcomingExpeditionsWidget(
                          title: 'Madagascar Rainforests',
                          month: 'January 2026',
                          description:
                              'Encounter unique endemic species and support critical conservation efforts in biodiversity hotspots.',
                        ),
                      ],
                    ),
                  )
                : Wrap(
                    spacing: spacing,
                    runSpacing: spacing,
                    children: [
                      UpcomingExpeditionsWidget(
                        title: 'Bhutanese Highlands',
                        month: 'October 2025',
                        description:
                            'Sacred monasteries and untouched mountain ecosystems in the world\'s most carbon-negative country.',
                      ),

                      UpcomingExpeditionsWidget(
                        title: 'New Zealand Fiordlands',
                        month: 'November 2025',
                        description:
                            'Ancient rainforests and pristine fjords with Māori cultural immersion and conservation initiatives.',
                      ),
                      UpcomingExpeditionsWidget(
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
  }
}
