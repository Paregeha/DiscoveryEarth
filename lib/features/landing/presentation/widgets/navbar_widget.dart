import 'dart:ui';

import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final isDesktop = width >= 1200;
        final isTablet = width >= 768 && width < 1200;

        final horizontalPadding = isDesktop
            ? 32.0
            : isTablet
            ? 24.0
            : 16.0;

        return ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              height: 68,
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.8),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white.withValues(alpha: 0.3),
                  ),
                ),
              ),
              child: Row(
                children: [
                  /// MOBILE / TABLET MENU BUTTON
                  if (!isDesktop)
                    Builder(
                      builder: (context) {
                        return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(Icons.menu, color: AppColors.navBarIcon),
                        );
                      },
                    ),

                  /// DESKTOP LOGO
                  if (isDesktop)
                    Text(
                      'Eden Reverie',
                      style: AppTypography.logo.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),

                  /// MOBILE / TABLET LOGO
                  if (!isDesktop) ...[
                    const SizedBox(width: 12),
                    Text(
                      'Eden Reverie',
                      style: AppTypography.logo.copyWith(
                        color: AppColors.mainColor,
                      ),
                    ),
                  ],

                  /// DESKTOP MENU
                  if (isDesktop) ...[
                    const SizedBox(width: 40),
                    const _NavbarMenu(),
                  ],

                  const Spacer(),

                  /// ACTIONS
                  if (isDesktop)
                    const _NavbarActions()
                  else
                    const _CompactNavbarActions(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _NavbarMenu extends StatelessWidget {
  const _NavbarMenu();

  @override
  Widget build(BuildContext context) {
    final items = [
      'Living Gallery',
      'Expeditions',
      'Nature Patrons',
      'Art Vault',
      'Journal',
    ];

    return Row(
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  item,
                  style: AppTypography.navBarText.copyWith(
                    color: AppColors.secondTitleColor,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _NavbarActions extends StatelessWidget {
  const _NavbarActions();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.search.path,
          colorFilter: ColorFilter.mode(AppColors.navBarIcon, BlendMode.srcIn),
        ),
        const SizedBox(width: 24.0),
        SvgPicture.asset(
          Assets.icons.profile.path,
          colorFilter: ColorFilter.mode(AppColors.navBarIcon, BlendMode.srcIn),
        ),
        const SizedBox(width: 20.0),
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: 'En',
            items: const [
              DropdownMenuItem<String>(value: 'En', child: Text('En')),
            ],
            onChanged: (_) {},
          ),
        ),
      ],
    );
  }
}

class _CompactNavbarActions extends StatelessWidget {
  const _CompactNavbarActions();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.search.path,
          width: 20.0,
          height: 20.0,
          colorFilter: ColorFilter.mode(AppColors.navBarIcon, BlendMode.srcIn),
        ),
        const SizedBox(width: 18.0),
        SvgPicture.asset(
          Assets.icons.profile.path,
          width: 20.0,
          height: 20.0,
          colorFilter: ColorFilter.mode(AppColors.navBarIcon, BlendMode.srcIn),
        ),
      ],
    );
  }
}

class NavbarDrawer extends StatelessWidget {
  const NavbarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Living Gallery',
      'Expeditions',
      'Nature Patrons',
      'Art Vault',
      'Journal',
    ];

    return Drawer(
      width: 320,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Eden Reverie',
                style: AppTypography.logo.copyWith(color: AppColors.mainColor),
              ),
            ),
            const Divider(height: 1.0),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(height: 1.0),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      items[index],
                      style: AppTypography.navBarText.copyWith(
                        color: AppColors.secondTitleColor,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
            const Divider(height: 1.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.search.path,
                    colorFilter: ColorFilter.mode(
                      AppColors.navBarIcon,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  SvgPicture.asset(
                    Assets.icons.profile.path,
                    colorFilter: ColorFilter.mode(
                      AppColors.navBarIcon,
                      BlendMode.srcIn,
                    ),
                  ),
                  const Spacer(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: 'En',
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'En',
                          child: Text('En'),
                        ),
                      ],
                      onChanged: (_) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
