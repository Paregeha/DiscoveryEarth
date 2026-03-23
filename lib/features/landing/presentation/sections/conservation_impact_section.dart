import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/core/constants/app_constants.dart';
import 'package:discover_earth/features/landing/presentation/widgets/conservation_impact_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/current_conservation_initiatives_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ConservationImpactSection extends StatelessWidget {
  const ConservationImpactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final horizontalPadding = ResponsiveValue(
      context,
      defaultValue: 224.0,
      conditionalValues: [
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 100.0),
        Condition.equals(name: MOBILE, value: 20.0),
        Condition.equals(name: TABLET, value: 60.0),
      ],
    ).value;

    final crossAxisCount = ResponsiveValue(
      context,
      defaultValue: 4,
      conditionalValues: [
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 2),
        Condition.equals(name: TABLET, value: 2),
      ],
    ).value;

    final crossAxisCountCurrent = ResponsiveValue(
      context,
      defaultValue: 2,
      conditionalValues: [
        Condition.equals(name: MOBILE, value: 1),
        Condition.equals(name: TABLET, value: 1),
      ],
    ).value;

    final itemsCard = [
      {
        'icon': SvgPicture.asset(Assets.icons.acresProtected.path),
        'count': '2.8M',
        'title': 'Acres Protected',
      },
      {
        'icon': SvgPicture.asset(Assets.icons.conservationProjects.path),
        'count': '42',
        'title': 'Conservation Projects',
      },
      {
        'icon': SvgPicture.asset(Assets.icons.activePatrons.path),
        'count': '186',
        'title': 'Active Patrons',
      },
      {
        'icon': SvgPicture.asset(Assets.icons.conservationFunding.path),
        'count': '\$18.5M',
        'title': 'Conservation Funding',
      },
    ];

    final itemsCurrent = [
      {
        'title': 'Great Barrier Reef Restoration',
        'description':
            'Supporting innovative coral regeneration techniques and marine protected areas to '
            'preserve the world\'s largest reef system.',
        'totalText': '\$4.5M goal',
        'countText': '\$3.2M raised',
        'total': 4.5,
        'count': 3.2,
      },
      {
        'title': 'Arctic Wilderness Protection',
        'description':
            'Advocating for expanded protected areas in the Arctic to preserve critical habitats for polar '
            'species facing climate threats.',
        'totalText': '\$3.0M goal',
        'countText': '\$1.2M raised',
        'total': 3.0,
        'count': 1.2,
      },
      {
        'title': 'Amazon Rainforest Corridor',
        'description':
            'Creating protected wildlife corridors to connect fragmented habitats and preserve '
            'biodiversity in the Amazon basin.',
        'totalText': '\$4.0M goal',
        'countText': '\$2.4M raised',
        'total': 4.0,
        'count': 2.4,
      },
      {
        'title': 'African Elephant Sanctuary',
        'description':
            'Supporting community-led conservation efforts to protect elephant migration corridors '
            'and reduce human-wildlife conflict.',
        'totalText': '\$3.0M goal',
        'countText': '\$2.55M raised',
        'total': 3.0,
        'count': 2.55,
      },
    ];

    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 80.0,
          horizontal: horizontalPadding,
        ),
        child: Column(
          children: [
            Text(
              'Conservation Impact',
              style: AppTypography.titleSection.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Track the real-time impact of our collective efforts to preserve Earth\'s most\n'
              'sacred natural spaces.',
              style: AppTypography.infoTextSection.copyWith(
                color: AppColors.secondColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 64.0),
            responsive.isMobile
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: itemsCard.map((item) {
                        return ConservationImpactWidget(
                          icon: item['icon'] as Widget,
                          count: item['count'] as String,
                          title: item['title'] as String,
                        );
                      }).toList(),
                    ),
                  )
                : GridView.builder(
                    itemCount: itemsCard.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisExtent: 224,
                      crossAxisSpacing: 32,
                      mainAxisSpacing: 32.0,
                    ),
                    itemBuilder: (context, index) {
                      final item = itemsCard[index];
                      return ConservationImpactWidget(
                        icon: item['icon'] as Widget,
                        count: item['count'] as String,
                        title: item['title'] as String,
                      );
                    },
                  ),
            SizedBox(height: 96.0),
            Text(
              'Current Conservation Initiatives',
              style: AppTypography.cardTitleText.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 24.0),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemsCurrent.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCountCurrent,
                mainAxisExtent: 200,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
              ),
              itemBuilder: (context, index) {
                final item = itemsCurrent[index];
                return CurrentConservationInitiativesWidget(
                  title: item['title'] as String,
                  description: item['description'] as String,
                  totalText: item['totalText'] as String,
                  countText: item['countText'] as String,
                  total: item['total'] as double,
                  count: item['count'] as double,
                );
              },
            ),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'View Impact Report',
                style: AppTypography.buttonText.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
