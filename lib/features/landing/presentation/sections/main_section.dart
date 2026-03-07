import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/custom_switch_widget.dart';
import 'package:discover_earth/features/landing/presentation/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  bool isAmbientSoundEnabled = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1200.0,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.background.image(fit: BoxFit.fill),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.mainColor.withValues(alpha: 0.8),
                    AppColors.mainColor.withValues(alpha: 0.4),
                    AppColors.mainColor.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),

          Positioned.fill(
            top: 424.0,
            left: 224.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover Earth\'s Most\n'
                  'Sacred Sanctuaries',
                  style: AppTypography.mainHeadText.copyWith(
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 24.0),
                Text(
                  'An immersive journey into the world\'s most untouched\n'
                  'natural wonders, curated for those who seek the\n'
                  'extraordinary.',
                  style: AppTypography.secondHeadText.copyWith(
                    color: AppColors.white.withValues(alpha: 0.9),
                  ),
                ),
                SizedBox(height: 40.0),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.textButton,
                        minimumSize: Size(204.0, 44.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Text(
                        'Begin Your Journey',
                        style: AppTypography.anyText.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 24.0),
                    CustomSwitchWidget(
                      value: isAmbientSoundEnabled,
                      onChanged: (value) {
                        setState(() {
                          isAmbientSoundEnabled = value;
                        });
                      },
                      width: 50.0,
                      height: 24.0,
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      'Ambient Sound',
                      style: AppTypography.anyText.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Navbar
          const NavbarWidget(),
        ],
      ),
    );
  }
}
