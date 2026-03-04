import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Assets.images.background.image());
  }
}
