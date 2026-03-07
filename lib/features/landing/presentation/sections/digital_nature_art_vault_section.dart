import 'package:discover_earth/features/landing/presentation/widgets/digital_nature_art_value_card_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class DigitalNatureArtValueSection extends StatelessWidget {
  const DigitalNatureArtValueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Digital Nature Art Vault'),
        Text(
          'Limited edition digital masterpieces by renowned nature artists, with AR\n'
          'enhancement capabilities and conservation impact tracking.',
        ),
        Wrap(
          children: [
            DigitalNatureArtValueCardWidget(
              title: 'Coral Resonance',
              image: Assets.images.coralResonance.image(),
              photoPerson: Assets.images.mayaChen.image(),
              description:
                  'An immersive digital representation of the Great Barrier\n'
                  'Reef\'s vibrant ecosystem, with proceeds supporting coral\n'
                  'restoration initiatives.',
              price: '8.5 ETH',
              edition: 'Edition 3 of 10',
              name: 'By Maya Chen',
            ),
            DigitalNatureArtValueCardWidget(
              title: 'Ancient Whispers',
              image: Assets.images.ancientWhispers.image(),
              photoPerson: Assets.images.jamesThornton.image(),
              description:
                  'A meditative exploration of ancient redwood forests,\n'
                  'capturing the timeless wisdom and quiet majesty of these\n'
                  'endangered giants.',
              price: '12.2 ETH',
              edition: 'Edition 2 of 7',
              name: 'By James Thornton',
            ),
            DigitalNatureArtValueCardWidget(
              title: 'Aurora Eternal',
              image: Assets.images.auroraEternal.image(),
              photoPerson: Assets.images.anikaLarsen.image(),
              description:
                  'A dynamic digital interpretation of the Arctic\'s aurora\n'
                  'borealis, with proceeds supporting indigenous-led\n'
                  'conservation initiatives.',
              price: '15.8 ETH',
              edition: 'Edition 1 of 5',
              name: 'By Anika Larsen',
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Explore Full Collection'),
        ),
      ],
    );
  }
}
