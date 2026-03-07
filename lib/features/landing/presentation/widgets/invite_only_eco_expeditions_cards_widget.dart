import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';

class InviteOnlyEcoExpeditionsCardsWidget extends StatelessWidget {
  const InviteOnlyEcoExpeditionsCardsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
    required this.group,
  });

  final Widget image;
  final String title;
  final String description;
  final String date;
  final String group;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 716.0,
      height: 572.0,
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
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: image,
              ),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: Container(
                  width: 124.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99999.0),
                    color: AppColors.textButton,
                  ),
                  child: Center(
                    child: Text(
                      'Limited Spaces',
                      style: AppTypography.anyText2.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppTypography.cardTitleText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: AppColors.textButton,
                            borderRadius: BorderRadius.circular(1000.0),
                          ),
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          'Accepting Applications',
                          style: AppTypography.anyText.copyWith(
                            color: AppColors.secondColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 18.0),
                Text(
                  description,
                  style: AppTypography.cardDescriptionText.copyWith(
                    color: AppColors.secondColor,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 27.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: AppTypography.anyText.copyWith(
                            color: AppColors.thirdColor,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          group,
                          style: AppTypography.anyText.copyWith(
                            color: AppColors.thirdColor,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.mainColor,
                        minimumSize: Size(178, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Request Invitation',
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
