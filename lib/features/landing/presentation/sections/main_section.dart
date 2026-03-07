import 'package:discover_earth/features/landing/presentation/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1200,
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
                    AppColors.mainColor.withValues(alpha: 0),
                  ],
                ),
              ),
            ),
          ),

          /// Navbar
          const NavbarWidget(),
        ],
      ),
    );
  }
}
