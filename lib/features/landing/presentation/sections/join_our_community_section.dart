import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';

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
    return Container(
      width: double.infinity,
      color: AppColors.backgroundSecond,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
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
