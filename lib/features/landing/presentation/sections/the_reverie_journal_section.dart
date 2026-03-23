import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/the_reverie_journal_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../gen/assets.gen.dart';

class TheReverieJournal extends StatelessWidget {
  const TheReverieJournal({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    final items = [
      {
        'image': Assets.images.indigenousWisdom.image(fit: BoxFit.cover),
        'date': 'April 8, 2025',
        'title':
            'The Sacred Relationship: Indigenous Perspectives on '
            'Nature\'s Balance',
        'description':
            'Elder Mateo Santana shares ancient wisdom on the '
            'reciprocal relationship between humans and the natural '
            'world, offering insights into sustainable coexistence.',
        'photoPerson': Assets.images.mateoSantana.image(),
        'name': 'By Mateo Santana',
        'namePhoto': 'Indigenous Voices',
      },
      {
        'image': Assets.images.photographyJournal.image(fit: BoxFit.cover),
        'date': 'April 5, 2025',
        'title':
            'The Patience of Seeing: Capturing Earth\'s Fleeting '
            'Moments',
        'description':
            'Award-winning photographer Sophia Lin discusses the '
            'meditative practice of nature photography and the '
            'profound moments of connection it creates.',
        'photoPerson': Assets.images.sophiaLin.image(),
        'name': 'By Sophia Lin',
        'namePhoto': 'Photography',
      },
      {
        'image': Assets.images.conservationScience.image(fit: BoxFit.cover),
        'date': 'April 2, 2025',
        'title':
            'Coral Renaissance: The Science and Soul of Reef '
            'Restoration',
        'description':
            'Marine biologist Dr. Marcus Trent explores innovative '
            'approaches to coral reef restoration and the emotional '
            'journey of witnessing ecosystem rebirth.',
        'photoPerson': Assets.images.drMarcusTrent.image(),
        'name': 'By Dr. Marcus Trent',
        'namePhoto': 'Conservation',
      },
    ];

    final horizontalPadding = ResponsiveValue(
      context,
      defaultValue: 80.0,
      conditionalValues: [
        Condition.equals(name: MOBILE, value: 20.0),
        Condition.equals(name: TABLET, value: 60.0),
        Condition.equals(name: DESKTOP, value: 224.0),
      ],
    ).value;

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
              'The Reverie Journal',
              style: AppTypography.titleSection.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Thoughtful explorations of the sacred, silent, and sublime in nature,\n'
              'written by renowned naturalists, indigenous wisdom keepers, and\n'
              'visionary photographers.',
              style: AppTypography.infoTextSection.copyWith(
                color: AppColors.secondColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 67.0),

            responsive.isDesktop
                ? GridView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 486,
                      mainAxisSpacing: 32.0,
                      crossAxisSpacing: 32.0,
                    ),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return TheReverieJournalCardWidget(
                        image: item['image'] as Widget,
                        date: item['date'] as String,
                        title: item['title'] as String,
                        description: item['description'] as String,
                        photoPerson: item['photoPerson'] as Widget,
                        name: item['name'] as String,
                        namePhoto: item['namePhoto'] as String,
                      );
                    },
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 16.0,
                      children: items.map((item) {
                        return SizedBox(
                          height: 486,
                          width: 470,
                          child: TheReverieJournalCardWidget(
                            image: item['image'] as Widget,
                            date: item['date'] as String,
                            title: item['title'] as String,
                            description: item['description'] as String,
                            photoPerson: item['photoPerson'] as Widget,
                            name: item['name'] as String,
                            namePhoto: item['namePhoto'] as String,
                          ),
                        );
                      }).toList(),
                    ),
                  ),

            // Wrap(
            //   children: [
            //     TheReverieJournalCardWidget(
            //       image: Assets.images.indigenousWisdom.image(),
            //       date: 'April 8, 2025',
            //       title:
            //           'The Sacred Relationship: Indigenous Perspectives on\n'
            //           'Nature\'s Balance',
            //       description:
            //           'Elder Mateo Santana shares ancient wisdom on the\n'
            //           'reciprocal relationship between humans and the natural\n'
            //           'world, offering insights into sustainable coexistence.',
            //       photoPerson: Assets.images.mateoSantana.image(),
            //       name: 'By Mateo Santana',
            //       namePhoto: 'Indigenous Voices',
            //     ),
            //     TheReverieJournalCardWidget(
            //       image: Assets.images.photographyJournal.image(),
            //       date: 'April 5, 2025',
            //       title:
            //           'The Patience of Seeing: Capturing Earth\'s Fleeting\n'
            //           'Moments',
            //       description:
            //           'Award-winning photographer Sophia Lin discusses the\n'
            //           'meditative practice of nature photography and the\n'
            //           'profound moments of connection it creates.',
            //       photoPerson: Assets.images.sophiaLin.image(),
            //       name: 'By Sophia Lin',
            //       namePhoto: 'Photography',
            //     ),
            //     TheReverieJournalCardWidget(
            //       image: Assets.images.conservationScience.image(),
            //       date: 'April 2, 2025',
            //       title:
            //           'Coral Renaissance: The Science and Soul of Reef\n'
            //           'Restoration',
            //       description:
            //           'Marine biologist Dr. Marcus Trent explores innovative\n'
            //           'approaches to coral reef restoration and the emotional\n'
            //           'journey of witnessing ecosystem rebirth.',
            //       photoPerson: Assets.images.drMarcusTrent.image(),
            //       name: 'By Dr. Marcus Trent',
            //       namePhoto: 'Conservation',
            //     ),
            //   ],
            // ),
            SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                minimumSize: Size(180.0, 46.0),
                side: BorderSide(color: AppColors.mainColor, width: 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'View All Articles',
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
