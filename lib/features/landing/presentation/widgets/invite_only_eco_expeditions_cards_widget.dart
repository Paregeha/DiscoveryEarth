import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_typography.dart';

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
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: double.infinity,
                  height: 320.0,
                  child: image,
                ),
              ),
              Positioned(
                top: 16.0,
                right: 16.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
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
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                ResponsiveBreakpoints.of(context).isMobile
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: AppTypography.cardTitleText.copyWith(
                                color: AppColors.secondTitleColor,
                              ),
                            ),
                            const SizedBox(height: 10.0),
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
                                const SizedBox(width: 4.0),
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
                      )
                    : Row(
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
                          const SizedBox(width: 12.0),
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
                              const SizedBox(width: 4.0),
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
                const SizedBox(height: 18.0),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.cardDescriptionText.copyWith(
                    color: AppColors.secondColor,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 27.0),
                ResponsiveBreakpoints.of(context).isMobile
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                            const SizedBox(height: 16.0),
                            SizedBox(
                              width: 180,
                              height: 36.0,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
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
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(
                            width: 180,
                            height: 36.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
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
                                  fontSize: 14.0,
                                ),
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
