import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants/app_constants.dart';

class JoinOurCommunity extends StatefulWidget {
  const JoinOurCommunity({super.key});

  @override
  State<JoinOurCommunity> createState() => _JoinOurCommunityState();
}

class _JoinOurCommunityState extends State<JoinOurCommunity> {
  final TextEditingController controllerEmail = TextEditingController();

  @override
  void dispose() {
    controllerEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);

    final horizontalPadding = ResponsiveValue(
      context,
      defaultValue: 224.0,
      conditionalValues: [
        Condition.equals(name: AppConstants.MEDIUM_DESKTOP, value: 100.0),
        Condition.equals(name: MOBILE, value: 20.0),
        Condition.equals(name: TABLET, value: 40.0),
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
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Join Our Community',
                  style: AppTypography.titleSection.copyWith(
                    color: AppColors.mainColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 27.0),
                Text(
                  'Subscribe to receive curated insights from our journal, '
                  'invitations to exclusive events,'
                  'and updates on our conservation initiatives.',
                  style: AppTypography.infoTextSection.copyWith(
                    color: AppColors.secondColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 43.0),

                responsive.isMobile
                    ? Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 361.59,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.05,
                                      ),
                                      offset: const Offset(0, 1),
                                      blurRadius: 2,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: controllerEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Your email address',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: AppTypography.montserrat,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF9CA3AF),
                                    ),

                                    filled: true,
                                    fillColor: Colors.white,

                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16.0),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.textButton,
                              minimumSize: Size(134.0, 44.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              'Subscribe',
                              style: AppTypography.buttonText.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 351,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  offset: const Offset(0, 1),
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: controllerEmail,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Your email address',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontFamily: AppTypography.montserrat,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF9CA3AF),
                                ),

                                filled: true,
                                fillColor: Colors.white,

                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.textButton,
                              minimumSize: Size(134.0, 44.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Text(
                              'Subscribe',
                              style: AppTypography.buttonText.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                SizedBox(height: 16.0),
                Text(
                  'By subscribing, you agree to our Privacy Policy '
                  'and consent to receive updates from Eden Reverie.',
                  style: AppTypography.anyText.copyWith(
                    color: AppColors.thirdColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
