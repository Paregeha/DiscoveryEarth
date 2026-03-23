import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/core/constants/app_constants.dart';
import 'package:discover_earth/features/landing/presentation/widgets/text_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../gen/assets.gen.dart';

class NaturePatronsClubSection extends StatelessWidget {
  const NaturePatronsClubSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final horizontalPadding = ResponsiveValue(
      context,
      defaultValue: 40.0,
      conditionalValues: [
        Condition.equals(name: DESKTOP, value: 224.0),
        Condition.equals(name: MOBILE, value: 20.0),
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 100.0),
      ],
    ).value;

    return Container(
      color: AppColors.white,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 80,
        ),
        child: responsive.isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nature Patrons Club',
                          style: AppTypography.titleSection.copyWith(
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(height: 27.0),
                        Text(
                          'An exclusive circle of visionaries committed to preserving Earth\'s most sacred '
                          'natural spaces through strategic philanthropy and conscious stewardship.',
                          style: AppTypography.infoTextSection.copyWith(
                            color: AppColors.secondColor,
                          ),
                        ),
                        SizedBox(height: 35.0),
                        TextDesc(
                          title: 'Direct Conservation Impact',
                          description:
                              'Your membership directly funds the preservation of critical habitats and '
                              'endangered species through our network of conservation partners.',
                        ),
                        SizedBox(height: 27.0),
                        TextDesc(
                          title: 'Exclusive Access',
                          description:
                              'Priority invitations to our limited eco-expeditions, private viewings of the Art Vault,'
                              'and personal connections with leading conservationists.',
                        ),
                        SizedBox(height: 27.0),
                        TextDesc(
                          title: 'Legacy Creation',
                          description:
                              'Opportunities to create lasting conservation legacies through named initiatives and long-term preservation projects.',
                        ),

                        SizedBox(height: 43.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 32.0,
                              vertical: 13.0,
                            ),
                            elevation: 0,
                            backgroundColor: AppColors.textButton,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Request Membership Information',
                            style: AppTypography.buttonText.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Flexible(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 450,
                          maxWidth: 704,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: AspectRatio(
                                aspectRatio: 704 / 560,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Assets.images.naturePatronsClub.image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: _MessageWindow(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : responsive.isMobile || responsive.isTablet
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nature Patrons Club',
                        style: AppTypography.titleSection.copyWith(
                          color: AppColors.mainColor,
                        ),
                      ),
                      SizedBox(height: 27.0),
                      Text(
                        'An exclusive circle of visionaries committed to preserving Earth\'s most sacred '
                        'natural spaces through strategic philanthropy and conscious stewardship.',
                        style: AppTypography.infoTextSection.copyWith(
                          color: AppColors.secondColor,
                        ),
                      ),
                      SizedBox(height: 35.0),
                      TextDesc(
                        title: 'Direct Conservation Impact',
                        description:
                            'Your membership directly funds the preservation of critical habitats and '
                            'endangered species through our network of conservation partners.',
                      ),
                      SizedBox(height: 27.0),
                      TextDesc(
                        title: 'Exclusive Access',
                        description:
                            'Priority invitations to our limited eco-expeditions, private viewings of the Art Vault,'
                            'and personal connections with leading conservationists.',
                      ),
                      SizedBox(height: 27.0),
                      TextDesc(
                        title: 'Legacy Creation',
                        description:
                            'Opportunities to create lasting conservation legacies through named initiatives and long-term preservation projects.',
                      ),

                      SizedBox(height: 43.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.0,
                            vertical: 13.0,
                          ),
                          elevation: 0,
                          backgroundColor: AppColors.textButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Request Membership Information',
                          style: AppTypography.buttonText.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(height: 20.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: AspectRatio(
                          aspectRatio: 704 / 560,
                          child: Assets.images.naturePatronsClub.image(
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      _MessageWindow(),
                    ],
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nature Patrons Club',
                              style: AppTypography.titleSection.copyWith(
                                color: AppColors.mainColor,
                              ),
                            ),
                            SizedBox(height: 27.0),
                            Text(
                              'An exclusive circle of visionaries committed to preserving Earth\'s most sacred '
                              'natural spaces through strategic philanthropy and conscious stewardship.',
                              style: AppTypography.infoTextSection.copyWith(
                                color: AppColors.secondColor,
                              ),
                            ),
                            SizedBox(height: 35.0),
                            TextDesc(
                              title: 'Direct Conservation Impact',
                              description:
                                  'Your membership directly funds the preservation of critical habitats and '
                                  'endangered species through our network of conservation partners.',
                            ),
                            SizedBox(height: 27.0),
                            TextDesc(
                              title: 'Exclusive Access',
                              description:
                                  'Priority invitations to our limited eco-expeditions, private viewings of the Art Vault,'
                                  'and personal connections with leading conservationists.',
                            ),
                            SizedBox(height: 27.0),
                            TextDesc(
                              title: 'Legacy Creation',
                              description:
                                  'Opportunities to create lasting conservation legacies through named initiatives and long-term preservation projects.',
                            ),

                            SizedBox(height: 43.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 32.0,
                                  vertical: 13.0,
                                ),
                                elevation: 0,
                                backgroundColor: AppColors.textButton,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Request Membership Information',
                                style: AppTypography.buttonText.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: _MessageWindow()),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 704 / 560,
                      child: Assets.images.naturePatronsClub.image(
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class TextDesc extends StatelessWidget {
  const TextDesc({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: AppColors.mainColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(9999),
          ),
          child: Center(child: SvgPicture.asset(Assets.icons.ready.path)),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.cardTitleText2.copyWith(
                  color: AppColors.secondTitleColor,
                ),
              ),
              SizedBox(height: 1.0),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.cardDescriptionText.copyWith(
                  color: AppColors.secondColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MessageWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthMessage = ResponsiveValue(
      context,
      defaultValue: double.infinity,
      conditionalValues: [Condition.equals(name: DESKTOP, value: 320.0)],
    ).value;

    return Container(
      width: widthMessage,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -2,
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -1,
          ),
        ],
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9999),
                  child: Assets.images.drEleanorHarrington.image(),
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Eleanor Harrington'),
                    Text('Founding Patron'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              '"Our collective commitment to these sacred spaces '
              'creates a legacy that will endure for generations. '
              'This is philanthropy with profound purpose."',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.anyText.copyWith(
                color: AppColors.secondColor,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
