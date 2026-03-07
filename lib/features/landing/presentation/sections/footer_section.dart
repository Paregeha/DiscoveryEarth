import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Wrap(
              children: [
                Column(
                  children: [
                    Text('Eden Reverie'),
                    Text(
                      'A digital sanctuary celebrating Earth\'s most\n'
                      'sacred natural spaces through immersive\n'
                      'experiences and conscious stewardship.',
                    ),
                    Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(Assets.icons.instagram.path),
                        ),
                        Container(
                          child: SvgPicture.asset(Assets.icons.twitter.path),
                        ),
                        Container(
                          child: SvgPicture.asset(Assets.icons.linkedin.path),
                        ),
                        Container(
                          child: SvgPicture.asset(Assets.icons.youtube.path),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Explore'),
                    Text('Living Gallery'),
                    Text('Eco-Expeditions'),
                    Text('Nature Patrons Club'),
                    Text('Digital Art Vault'),
                    Text('Reverie Journal'),
                  ],
                ),
                Column(
                  children: [
                    Text('Information'),
                    Text('About Us'),
                    Text('Conservation Partners'),
                    Text('Impact Reports'),
                    Text('Press & Media'),
                    Text('Contact Us'),
                  ],
                ),
                Column(
                  children: [
                    Text('Legal'),
                    Text('Privacy Policy'),
                    Text('Terms of Service'),
                    Text('Cookie Policy'),
                    Text('Ethical Guidelines'),
                    Text('Accessibility'),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(),
        Row(
          children: [
            Text('© 2025 Eden Reverie. All rights reserved.'),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.visa.path),
                SvgPicture.asset(Assets.icons.mastercard.path),
                SvgPicture.asset(Assets.icons.paypal.path),
                SvgPicture.asset(Assets.icons.applepay.path),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
