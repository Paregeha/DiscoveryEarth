import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class LivingGallerySection extends StatelessWidget {
  const LivingGallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Living Gallery'),
        Text(
          'Immerse yourself in Earths most breathtaking landscapes through full-\n'
          'screen films and 3D audio experiences.',
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            Assets.images.amazonRainforest.image(),
            Assets.images.himalayanPeaks.image(),
            Assets.images.greatBarrierReef.image(),
            Assets.images.serengetiPlains.image(),
            Assets.images.icelandicAurora.image(),
            Assets.images.redwoodForest.image(),
          ],
        ),
        ElevatedButton(onPressed: () {}, child: Text('View All Experiences')),
      ],
    );
  }
}
