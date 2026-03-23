import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/digital_nature_art_value_card_widget.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DigitalNatureArtValueSection extends StatelessWidget {
  const DigitalNatureArtValueSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final items = [
      {
        'title': 'Coral Resonance',
        'image': Assets.images.coralResonance.image(fit: BoxFit.cover),
        'photoPerson': Assets.images.mayaChen.image(),
        'description':
            'An immersive digital representation of the Great Barrier '
            'Reef\'s vibrant ecosystem, with proceeds supporting coral '
            'restoration initiatives.',
        'price': '8.5 ETH',
        'edition': 'Edition 3 of 10',
        'name': 'By Maya Chen',
      },
      {
        'title': 'Ancient Whispers',
        'image': Assets.images.ancientWhispers.image(fit: BoxFit.cover),
        'photoPerson': Assets.images.jamesThornton.image(),
        'description':
            'A meditative exploration of ancient redwood forests, '
            'capturing the timeless wisdom and quiet majesty of these '
            'endangered giants.',
        'price': '12.2 ETH',
        'edition': 'Edition 2 of 7',
        'name': 'By James Thornton',
      },
      {
        'title': 'Aurora Eternal',
        'image': Assets.images.auroraEternal.image(fit: BoxFit.cover),
        'photoPerson': Assets.images.anikaLarsen.image(),
        'description':
            'A dynamic digital interpretation of the Arctic\'s aurora '
            'borealis, with proceeds supporting indigenous-led '
            'conservation initiatives.',
        'price': '15.8 ETH',
        'edition': 'Edition 1 of 5',
        'name': 'By Anika Larsen',
      },
    ];

    final horizontalPadding = ResponsiveValue(
      context,
      defaultValue: 80.0,
      conditionalValues: [
        Condition.equals(name: TABLET, value: 60.0),
        Condition.equals(name: MOBILE, value: 20.0),
        Condition.equals(name: DESKTOP, value: 224.0),
      ],
    ).value;

    return Container(
      width: double.infinity,
      color: AppColors.backgroundSecond,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 80.0,
          horizontal: horizontalPadding,
        ),
        child: Column(
          children: [
            Text(
              'Digital Nature Art Vault',
              style: AppTypography.titleSection.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Limited edition digital masterpieces by renowned nature artists, with AR\n'
              'enhancement capabilities and conservation impact tracking.',
              style: AppTypography.infoTextSection.copyWith(
                color: AppColors.secondColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64.0),
            ResponsiveBreakpoints.of(context).isDesktop
                ? GridView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 32.0,
                      crossAxisSpacing: 32.0,
                      mainAxisExtent: 512,
                      // childAspectRatio: 470 / 512,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final item = items[index];
                      return DigitalNatureArtValueCardWidget(
                        title: item['title'] as String,
                        image: item['image'] as Widget,
                        photoPerson: item['photoPerson'] as Widget,
                        description: item['description'] as String,
                        price: item['price'] as String,
                        edition: item['edition'] as String,
                        name: item['name'] as String,
                      );
                    },
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 16.0,
                      children: items.map((item) {
                        return SizedBox(
                          width: 470,
                          height: 512,
                          child: DigitalNatureArtValueCardWidget(
                            title: item['title'] as String,
                            image: item['image'] as Widget,
                            photoPerson: item['photoPerson'] as Widget,
                            description: item['description'] as String,
                            price: item['price'] as String,
                            edition: item['edition'] as String,
                            name: item['name'] as String,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
            const SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                minimumSize: const Size(224.0, 46.0),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.1),
                  side: BorderSide(color: AppColors.mainColor, width: 1.0),
                ),
              ),
              child: Text(
                'Explore Full Collection',
                style: AppTypography.buttonText.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
