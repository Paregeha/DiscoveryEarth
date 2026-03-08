import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  bool rainforestRetreats = false;
  bool coastalSanctuaries = true;
  bool mountainHavens = false;
  bool desertOases = false;
  bool privateIslands = false;

  double value = 0;

  @override
  Widget build(BuildContext context) {
    final center = LatLng(50.4501, 30.5234);

    return Container(
      width: 1472.0,
      height: 600.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 6.0,
            offset: const Offset(0, 4),
            spreadRadius: -4.0,
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 15.0,
            offset: const Offset(0, 10),
            spreadRadius: -3.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: [
            FlutterMap(
              options: MapOptions(initialCenter: center, initialZoom: 13),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: center,
                      width: 80,
                      height: 80,
                      child: const Icon(Icons.location_pin, size: 40),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 24.0,
              left: 24.0,
              child: Container(
                width: 197.0,
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.05),
                      offset: const Offset(0.0, 1.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Explore Sanctuaries',
                        style: AppTypography.cardTitleText2.copyWith(
                          color: AppColors.secondTitleColor,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      _checkboxItem(
                        title: 'Rainforest Retreats',
                        value: rainforestRetreats,
                        onChanged: (value) {
                          setState(() {
                            rainforestRetreats = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 12.0),

                      _checkboxItem(
                        title: 'Coastal Sanctuaries',
                        value: coastalSanctuaries,
                        onChanged: (value) {
                          setState(() {
                            coastalSanctuaries = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 12.0),

                      _checkboxItem(
                        title: 'Mountain Havens',
                        value: mountainHavens,
                        onChanged: (value) {
                          setState(() {
                            mountainHavens = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 12.0),

                      _checkboxItem(
                        title: 'Desert Oases',
                        value: desertOases,
                        onChanged: (value) {
                          setState(() {
                            desertOases = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 12.0),

                      _checkboxItem(
                        title: 'Private Islands',
                        value: privateIslands,
                        onChanged: (value) {
                          setState(() {
                            privateIslands = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        width: 165.0,
                        height: 71.0,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: AppColors.borderTop,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.0),
                            Text(
                              'Conservation Status',
                              style: AppTypography.anyText2.copyWith(
                                color: AppColors.thirdColor,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 4.0,
                                activeTrackColor: const Color(0xFFC8A46B),
                                inactiveTrackColor: const Color(0xFFD9D4C7),
                                thumbColor: const Color(0xFFC8A46B),
                                thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 9.0,
                                ),
                                overlayShape: SliderComponentShape.noOverlay,
                              ),
                              //TODO тут уважно переглянути код і перевірити усе
                              child: Slider(
                                value: value,
                                min: 0,
                                max: 1,
                                onChanged: (v) {
                                  setState(() {
                                    value = v;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "All",
                                  style: AppTypography.anyText2.copyWith(
                                    color: AppColors.thirdColor,
                                  ),
                                ),
                                Text(
                                  "Protected Areas Only",
                                  style: AppTypography.anyText2.copyWith(
                                    color: AppColors.thirdColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _checkboxItem({
    required String title,
    required bool value,
    required ValueChanged<bool?> onChanged,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 20.0,
          height: 20.0,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            fillColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.textButton;
              }
              return AppColors.white;
            }),
            checkColor: AppColors.white,
            side: BorderSide(color: AppColors.textButton, width: 1.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: GestureDetector(
            onTap: () => onChanged(!value),
            child: Text(
              title,
              style: AppTypography.anyText.copyWith(
                color: AppColors.navBarIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
