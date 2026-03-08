import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';

class TheReverieJournalCardWidget extends StatelessWidget {
  const TheReverieJournalCardWidget({
    super.key,
    required this.image,
    required this.date,
    required this.title,
    required this.description,
    required this.photoPerson,
    required this.name,
    required this.namePhoto,
  });

  final Widget image;
  final String namePhoto;
  final String date;
  final String title;
  final String description;
  final Widget photoPerson;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470.0,
      height: 486.0,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: image,
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      namePhoto,
                      style: AppTypography.anyText2.copyWith(
                        color: AppColors.thirdColor,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      width: 3.0,
                      height: 3.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9999.0),
                        color: AppColors.thirdColor,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      date,
                      style: AppTypography.anyText2.copyWith(
                        color: AppColors.thirdColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                Text(
                  title,
                  style: AppTypography.cardTitleText2.copyWith(
                    color: AppColors.secondTitleColor,
                  ),
                ),
                SizedBox(height: 13.0),
                Text(
                  description,
                  style: AppTypography.anyText.copyWith(
                    color: AppColors.secondColor,
                  ),
                ),
                SizedBox(height: 21.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(9999.0),
                          child: photoPerson,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          name,
                          style: AppTypography.anyText.copyWith(
                            color: AppColors.secondColor,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size(78.0, 38.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(
                            color: AppColors.mainColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Read',
                        style: AppTypography.buttonText.copyWith(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
