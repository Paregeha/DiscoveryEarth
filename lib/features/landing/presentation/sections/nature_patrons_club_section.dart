import 'package:discover_earth/features/landing/presentation/widgets/text_info_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class NaturePatronsClubSection extends StatelessWidget {
  const NaturePatronsClubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('Nature Patrons Club'),
            Text(
              'An exclusive circle of visionaries committed to preserving Earth\'s most sacred\n'
              'natural spaces through strategic philanthropy and conscious stewardship.',
            ),
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
            ElevatedButton(
              onPressed: () {},
              child: Text('Request Membership Information'),
            ),
          ],
        ),
        Stack(
          children: [
            Assets.images.naturePatronsClub.image(),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Assets.images.drEleanorHarrington.image(),
                      Column(
                        children: [
                          Text('Dr. Eleanor Harrington'),
                          Text('Founding Patron'),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '\"Our collective commitment to these\n'
                    'sacred spaces creates a legacy that\n'
                    'will endure for generations. This is\n'
                    'philanthropy with profound purpose.\"',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
