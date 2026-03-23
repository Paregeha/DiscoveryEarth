import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_typography.dart';
import '../widgets/map_widget.dart';

class WildLuxuryRetreatsSection extends StatefulWidget {
  const WildLuxuryRetreatsSection({super.key});

  @override
  State<WildLuxuryRetreatsSection> createState() =>
      _WildLuxuryRetreatsSectionState();
}

class _WildLuxuryRetreatsSectionState extends State<WildLuxuryRetreatsSection> {
  bool isMapActive = false;

  void deactivateMap() {
    if (isMapActive) {
      setState(() {
        isMapActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Клік поза картою → деактивація
      onTap: deactivateMap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: double.infinity,
        color: AppColors.backgroundSecond,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0),
          child: Column(
            children: [
              Text(
                'Wild Luxury Retreats',
                style: AppTypography.titleSection.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Discover our curated collection of the world\'s most exclusive eco-\n'
                'sanctuaries, where unparalleled luxury meets untouched wilderness.',
                style: AppTypography.infoTextSection.copyWith(
                  color: AppColors.secondColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 64.0),

              Stack(
                children: [
                  MapWidget(),

                  if (!isMapActive)
                    Positioned.fill(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMapActive = true;
                          });
                        },
                        child: Container(
                          color: Colors.black.withValues(alpha: 0.3),
                          alignment: Alignment.center,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Tap to interact',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 48.0),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.textButton,
                  minimumSize: const Size(238.0, 44.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Request Retreat Catalog',
                  style: AppTypography.buttonText.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
