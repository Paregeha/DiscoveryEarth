import 'package:discover_earth/features/landing/presentation/widgets/conservation_impact_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/current_conservation_initiatives_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConservationImpactSection extends StatelessWidget {
  const ConservationImpactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Conservation Impact'),
        Text(
          'Track the real-time impact of our collective efforts to preserve Earth\'s most\n'
          'sacred natural spaces.',
        ),
        Wrap(
          children: [
            ConservationImpactWidget(
              icon: SvgPicture.asset(Assets.icons.acresProtected.path),
              count: '2.8M',
              title: 'Acres Protected',
            ),
            ConservationImpactWidget(
              icon: SvgPicture.asset(Assets.icons.conservationProjects.path),
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
        Text('Current Conservation Initiatives'),
        Wrap(
          children: [
            CurrentConservationInitiativesWidget(
              title: 'Great Barrier Reef Restoration',
              description:
                  'Supporting innovative coral regeneration techniques and marine protected areas to\n'
                  'preserve the world\'s largest reef system.',
              totalText: '\$4.5M goal',
              countText: '\$3.2M raised',
              total: 3.2,
              count: 4.5,
            ),
            CurrentConservationInitiativesWidget(
              title: 'Arctic Wilderness Protection',
              description:
                  'Advocating for expanded protected areas in the Arctic to preserve critical habitats for polar\n'
                  'species facing climate threats.',
              totalText: '\$3.0M goal',
              countText: '\$1.2M raised',
              total: 1.2,
              count: 3.0,
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
        ElevatedButton(onPressed: () {}, child: Text('View Impact Report')),
      ],
    );
  }
}
