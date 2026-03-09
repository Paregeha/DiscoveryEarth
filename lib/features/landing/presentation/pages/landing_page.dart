import 'package:discover_earth/features/landing/presentation/sections/conservation_impact_section.dart';
import 'package:discover_earth/features/landing/presentation/sections/digital_nature_art_vault_section.dart';
import 'package:discover_earth/features/landing/presentation/sections/footer_section.dart';
import 'package:discover_earth/features/landing/presentation/sections/join_our_community_section.dart';
import 'package:discover_earth/features/landing/presentation/sections/the_reverie_journal_section.dart';
import 'package:discover_earth/features/landing/presentation/sections/wild_luxury_retreats_section.dart';
import 'package:flutter/material.dart';

import '../sections/invite_only_eco_expeditions_section.dart';
import '../sections/living_gallery_section.dart';
import '../sections/main_section.dart';
import '../sections/nature_patrons_club_section.dart';
import '../widgets/navbar_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavbarDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainSection(),
            LivingGallerySection(),
            InviteOnlyEcoExpeditionsSection(),
            NaturePatronsClubSection(),
            DigitalNatureArtValueSection(),
            TheReverieJournal(),
            WildLuxuryRetreatsSection(),
            ConservationImpactSection(),
            JoinOurCommunity(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
