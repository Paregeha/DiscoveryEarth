import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/the_reverie_journal_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class TheReverieJournal extends StatelessWidget {
  const TheReverieJournal({super.key});

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
            Wrap(
              children: [
                TheReverieJournalCardWidget(
                  image: Assets.images.indigenousWisdom.image(),
                  date: 'April 8, 2025',
                  title:
                      'The Sacred Relationship: Indigenous Perspectives on\n'
                      'Nature\'s Balance',
                  description:
                      'Elder Mateo Santana shares ancient wisdom on the\n'
                      'reciprocal relationship between humans and the natural\n'
                      'world, offering insights into sustainable coexistence.',
                  photoPerson: Assets.images.mateoSantana.image(),
                  name: 'By Mateo Santana',
                  namePhoto: 'Indigenous Voices',
                ),
                TheReverieJournalCardWidget(
                  image: Assets.images.photographyJournal.image(),
                  date: 'April 5, 2025',
                  title:
                      'The Patience of Seeing: Capturing Earth\'s Fleeting\n'
                      'Moments',
                  description:
                      'Award-winning photographer Sophia Lin discusses the\n'
                      'meditative practice of nature photography and the\n'
                      'profound moments of connection it creates.',
                  photoPerson: Assets.images.sophiaLin.image(),
                  name: 'By Sophia Lin',
                  namePhoto: 'Photography',
                ),
                TheReverieJournalCardWidget(
                  image: Assets.images.conservationScience.image(),
                  date: 'April 2, 2025',
                  title:
                      'Coral Renaissance: The Science and Soul of Reef\n'
                      'Restoration',
                  description:
                      'Marine biologist Dr. Marcus Trent explores innovative\n'
                      'approaches to coral reef restoration and the emotional\n'
                      'journey of witnessing ecosystem rebirth.',
                  photoPerson: Assets.images.drMarcusTrent.image(),
                  name: 'By Dr. Marcus Trent',
                  namePhoto: 'Conservation',
                ),
              ],
            ),
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
