import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/conservation_impact_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/current_conservation_initiatives_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConservationImpactSection extends StatelessWidget {
  const ConservationImpactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
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
            Wrap(
              children: [
                ConservationImpactWidget(
                  icon: SvgPicture.asset(Assets.icons.acresProtected.path),
                  count: '2.8M',
                  title: 'Acres Protected',
                ),
                ConservationImpactWidget(
                  icon: SvgPicture.asset(
                    Assets.icons.conservationProjects.path,
                  ),
                  count: '42',
                  title: 'Conservation Projects',
                ),
                ConservationImpactWidget(
                  icon: SvgPicture.asset(Assets.icons.activePatrons.path),
                  count: '186',
                  title: 'Active Patrons',
                ),
                ConservationImpactWidget(
                  icon: SvgPicture.asset(Assets.icons.conservationFunding.path),
                  count: '\$18.5M',
                  title: 'Conservation Funding',
                ),
              ],
            ),
            SizedBox(height: 96.0),
            Text(
              'Current Conservation Initiatives',
              style: AppTypography.cardTitleText.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 24.0),
            Wrap(
              children: [
                CurrentConservationInitiativesWidget(
                  title: 'Great Barrier Reef Restoration',
                  description:
                      'Supporting innovative coral regeneration techniques and marine protected areas to\n'
                      'preserve the world\'s largest reef system.',
                  totalText: '\$4.5M goal',
                  countText: '\$3.2M raised',
                  total: 4.5,
                  count: 3.2,
                ),
                CurrentConservationInitiativesWidget(
                  title: 'Arctic Wilderness Protection',
                  description:
                      'Advocating for expanded protected areas in the Arctic to preserve critical habitats for polar\n'
                      'species facing climate threats.',
                  totalText: '\$3.0M goal',
                  countText: '\$1.2M raised',
                  total: 3.0,
                  count: 1.2,
                ),
                CurrentConservationInitiativesWidget(
                  title: 'Amazon Rainforest Corridor',
                  description:
                      'Creating protected wildlife corridors to connect fragmented habitats and preserve\n'
                      'biodiversity in the Amazon basin.',
                  totalText: '\$4.0M goal',
                  countText: '\$2.4M raised',
                  total: 4.0,
                  count: 2.4,
                ),
                CurrentConservationInitiativesWidget(
                  title: 'African Elephant Sanctuary',
                  description:
                      'Supporting community-led conservation efforts to protect elephant migration corridors\n'
                      'and reduce human-wildlife conflict.',
                  totalText: '\$3.0M goal',
                  countText: '\$2.55M raised',
                  total: 3.0,
                  count: 2.55,
                ),
              ],
            ),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainColor,
                minimumSize: Size(206.0, 44.0),
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
