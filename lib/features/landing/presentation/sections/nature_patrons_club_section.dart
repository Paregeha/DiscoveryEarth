import 'package:discover_earth/app/theme/app_colors.dart';
import 'package:discover_earth/app/theme/app_typography.dart';
import 'package:discover_earth/features/landing/presentation/widgets/text_info_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class NaturePatronsClubSection extends StatelessWidget {
  const NaturePatronsClubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        final bool isDesktop = width >= 1200;
        final bool isTablet = width >= 768 && width < 1200;
        final bool isMobile = width < 768;

        final double horizontalPadding = isDesktop
            ? 120.0
            : isTablet
            ? 48.0
            : 20.0;

        final double verticalPadding = isDesktop
            ? 80.0
            : isTablet
            ? 64.0
            : 48.0;

        final double contentSpacing = isDesktop ? 64.0 : 40.0;
        final double imageWidth = isDesktop
            ? 704.0
            : isTablet
            ? 1000.0
            : double.infinity;
        final double imageHeight = isDesktop
            ? 521.0
            : isTablet
            ? 460.0
            : 300.0;

        final double quoteCardWidth = isDesktop
            ? 320.0
            : isTablet
            ? 300.0
            : width - (horizontalPadding * 2) - 24.0;

        return Container(
          width: double.infinity,
          color: AppColors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: isDesktop
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _NaturePatronsTextContent(
                          isDesktop: isDesktop,
                          isTablet: isTablet,
                          isMobile: isMobile,
                        ),
                      ),
                      SizedBox(width: contentSpacing),
                      _NaturePatronsImageBlock(
                        isDesktop: isDesktop,
                        isTablet: isTablet,
                        isMobile: isMobile,
                        imageWidth: imageWidth,
                        imageHeight: imageHeight,
                        quoteCardWidth: quoteCardWidth,
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _NaturePatronsTextContent(
                        isDesktop: isDesktop,
                        isTablet: isTablet,
                        isMobile: isMobile,
                      ),
                      SizedBox(height: contentSpacing),
                      _NaturePatronsImageBlock(
                        isDesktop: isDesktop,
                        isTablet: isTablet,
                        isMobile: isMobile,
                        imageWidth: imageWidth,
                        imageHeight: imageHeight,
                        quoteCardWidth: quoteCardWidth,
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class _NaturePatronsTextContent extends StatelessWidget {
  const _NaturePatronsTextContent({
    required this.isDesktop,
    required this.isTablet,
    required this.isMobile,
  });

  final bool isDesktop;
  final bool isTablet;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: isDesktop ? 620.0 : double.infinity,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nature Patrons Club',
            style: AppTypography.titleSection.copyWith(
              color: AppColors.mainColor,
              fontSize: isDesktop ? null : (isTablet ? 40.0 : 30.0),
            ),
          ),
          const SizedBox(height: 27.0),
          Text(
            'An exclusive circle of visionaries committed to preserving Earth\'s most sacred natural spaces through strategic philanthropy and conscious stewardship.',
            style: AppTypography.infoTextSection.copyWith(
              color: AppColors.secondColor,
              fontSize: isDesktop ? null : (isTablet ? 18.0 : 16.0),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 35.0),
          const TextInfoWidget(
            title: 'Direct Conservation Impact',
            description:
                'Your membership directly funds the preservation of critical habitats and endangered species through our network of conservation partners.',
          ),
          const SizedBox(height: 24.0),
          const TextInfoWidget(
            title: 'Exclusive Access',
            description:
                'Priority invitations to our limited eco-expeditions, private viewings of the Art Vault, and personal connections with leading conservationists.',
          ),
          const SizedBox(height: 24.0),
          const TextInfoWidget(
            title: 'Legacy Creation',
            description:
                'Opportunities to create lasting conservation legacies through named initiatives and long-term preservation projects.',
          ),
          const SizedBox(height: 43.0),
          SizedBox(
            width: isMobile ? double.infinity : 306.0,
            height: 44.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.textButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Request Membership Information',
                textAlign: TextAlign.center,
                style: AppTypography.buttonText.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NaturePatronsImageBlock extends StatelessWidget {
  const _NaturePatronsImageBlock({
    required this.isDesktop,
    required this.isTablet,
    required this.isMobile,
    required this.imageWidth,
    required this.imageHeight,
    required this.quoteCardWidth,
  });

  final bool isDesktop;
  final bool isTablet;
  final bool isMobile;
  final double imageWidth;
  final double imageHeight;
  final double quoteCardWidth;

  @override
  Widget build(BuildContext context) {
    final bool useOverlayCard = !isMobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Assets.images.naturePatronsClub.image(
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
            ),
            if (useOverlayCard)
              Positioned(
                bottom: isDesktop ? -24.0 : 16.0,
                right: isDesktop ? -24.0 : 16.0,
                child: _FoundingPatronCard(
                  width: quoteCardWidth,
                  isMobile: false,
                ),
              ),
          ],
        ),
        if (isMobile) ...[
          const SizedBox(height: 16.0),
          _FoundingPatronCard(width: double.infinity, isMobile: true),
        ] else if (isDesktop) ...[
          const SizedBox(height: 24.0),
        ],
      ],
    );
  }
}

class _FoundingPatronCard extends StatelessWidget {
  const _FoundingPatronCard({required this.width, required this.isMobile});

  final double width;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 4.0,
            offset: const Offset(0.0, 2.0),
            spreadRadius: -2.0,
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 6.0,
            offset: const Offset(0.0, 4.0),
            spreadRadius: -1.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 20.0 : 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9999.0),
                  child: Assets.images.drEleanorHarrington.image(
                    width: 48.0,
                    height: 48.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Eleanor Harrington',
                        style: AppTypography.infoTextSection.copyWith(
                          color: AppColors.secondTitleColor,
                        ),
                      ),
                      Text(
                        'Founding Patron',
                        style: AppTypography.anyText.copyWith(
                          color: AppColors.thirdColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 17.0),
            Text(
              '"Our collective commitment to these sacred spaces creates a legacy that will endure for generations. This is philanthropy with profound purpose."',
              style: AppTypography.anyText.copyWith(
                color: AppColors.secondColor,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
