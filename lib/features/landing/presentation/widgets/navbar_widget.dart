import 'dart:ui';

import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          height: 68.0,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            border: Border(
              bottom: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Eden Reverie',
                      style: AppTypography.logo.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 47.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Living Gallery',
                      style: AppTypography.navBarText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 32.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Expeditions',
                      style: AppTypography.navBarText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 32.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Nature Patrons',
                      style: AppTypography.navBarText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 32.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Art Vault',
                      style: AppTypography.navBarText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 32.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Journal',
                      style: AppTypography.navBarText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.search.path,
                    colorFilter: ColorFilter.mode(
                      AppColors.navBarIcon,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 33.0),
                  SvgPicture.asset(
                    Assets.icons.profile.path,
                    colorFilter: ColorFilter.mode(
                      AppColors.navBarIcon,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 28),
                  DropdownButton<String>(
                    value: 'En',

                    items: const [
                      DropdownMenuItem(value: 'En', child: Text('En')),
                    ],
                    onChanged: null,
                  ),
                  const SizedBox(width: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
