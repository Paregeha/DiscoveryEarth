import 'package:flutter/material.dart';
import '../sections/main_section.dart';
import '../sections/living_gallery_section.dart';
import '../sections/invite_only_eco_expeditions_section.dart';
import '../sections/contact_section.dart';
import '../widgets/navbar_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavbarWidget(),
            MainSection(),
            LivingGallerySection(),
            InviteOnlyEcoExpeditionsSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
