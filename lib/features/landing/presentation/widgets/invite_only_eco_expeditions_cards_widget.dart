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
    required this.isMobile,
    required this.isTablet,
  });

  final Widget image;
  final String title;
  final String description;
  final String date;
  final String group;
  final bool isMobile;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = !isMobile && !isTablet;

    final double imageHeight = isDesktop
        ? 320.0
        : isTablet
        ? 280.0
        : 220.0;

    final double horizontalPadding = isDesktop
        ? 32.0
        : isTablet
        ? 24.0
        : 20.0;

    final double verticalPadding = isDesktop
        ? 32.0
        : isTablet
        ? 24.0
        : 20.0;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: imageHeight,
                  child: image,
                ),
              ),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99999.0),
                    color: AppColors.textButton,
                  ),
                  child: Text(
                    'Limited Spaces',
                    style: AppTypography.anyText2.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isMobile) ...[
                  Text(
                    title,
                    style: AppTypography.cardTitleText.copyWith(
                      color: AppColors.secondTitleColor,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: AppColors.textButton,
                          borderRadius: BorderRadius.circular(1000.0),
                        ),
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        'Accepting Applications',
                        style: AppTypography.anyText.copyWith(
                          color: AppColors.secondColor,
                        ),
                      ),
                    ],
                  ),
                ] else ...[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppTypography.cardTitleText.copyWith(
                            color: AppColors.secondTitleColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: AppColors.textButton,
                                borderRadius: BorderRadius.circular(1000.0),
                              ),
                            ),
                            const SizedBox(width: 4.0),
                            Flexible(
                              child: Text(
                                'Accepting Applications',
                                overflow: TextOverflow.ellipsis,
                                style: AppTypography.anyText.copyWith(
                                  color: AppColors.secondColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
                const SizedBox(height: 18.0),
                Text(
                  description,
                  style: AppTypography.cardDescriptionText.copyWith(
                    color: AppColors.secondColor,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24.0),
                if (isMobile) ...[
                  Text(
                    date,
                    style: AppTypography.anyText.copyWith(
                      color: AppColors.thirdColor,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    group,
                    style: AppTypography.anyText.copyWith(
                      color: AppColors.thirdColor,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    height: 44.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.mainColor,
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
                  ),
                ] else ...[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              date,
                              style: AppTypography.anyText.copyWith(
                                color: AppColors.thirdColor,
                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              group,
                              style: AppTypography.anyText.copyWith(
                                color: AppColors.thirdColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.mainColor,
                          minimumSize: const Size(178.0, 36.0),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
