import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInfoWidget extends StatelessWidget {
  const TextInfoWidget({
    super.key,
    required this.title,
    required this.description,
  });

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
            borderRadius: BorderRadius.circular(9999.0),
          ),
          child: SvgPicture.asset(
            Assets.icons.ready.path,
            width: 16.0,
            height: 16.0,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(width: 16.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.cardTitleText.copyWith(
                color: AppColors.secondTitleColor,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              description,
              style: AppTypography.cardDescriptionText.copyWith(
                color: AppColors.secondColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
