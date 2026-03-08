import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';

class DigitalNatureArtValueCardWidget extends StatelessWidget {
  const DigitalNatureArtValueCardWidget({
    super.key,
    required this.title,
    required this.image,
    required this.photoPerson,
    required this.description,
    required this.price,
    required this.edition,
    required this.name,
  });

  final String title;
  final Widget image;
  final Widget photoPerson;
  final String description;
  final String price;
  final String edition;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470.0,
      height: 512.0,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  topLeft: Radius.circular(16.0),
                ),
                child: image,
              ),
              Positioned(
                right: 16.0,
                top: 16.0,
                child: Container(
                  width: 108.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(9999.0),
                    boxShadow: [
                      BoxShadow(blurStyle: BlurStyle.inner, blurRadius: 4.0),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      edition,
                      style: AppTypography.anyText2.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppTypography.cardTitleText2.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: AppColors.backIconColor,
                            borderRadius: BorderRadius.circular(9999.0),
                          ),
                          child: Center(
                            child: Container(
                              width: 13.33,
                              height: 13.33,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(1000.0),
                                border: Border.all(
                                  width: 1.0,
                                  color: AppColors.secondColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 32.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: AppColors.backIconColor,
                            borderRadius: BorderRadius.circular(9999.0),
                          ),
                          child: Center(
                            child: Container(
                              width: 13.33,
                              height: 13.33,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(1000.0),
                                border: Border.all(
                                  width: 1.0,
                                  color: AppColors.secondColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 14.0),
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
                SizedBox(height: 17.0),
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
                    Text(
                      price,
                      style: AppTypography.cardDescriptionText.copyWith(
                        color: AppColors.textButton,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'View Details',
                        style: AppTypography.buttonText.copyWith(
                          color: AppColors.white,
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
