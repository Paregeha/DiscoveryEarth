import 'package:flutter/material.dart';

import '../widgets/map_widget.dart';

class WildLuxuryRetreatsSection extends StatelessWidget {
  const WildLuxuryRetreatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Wild Luxury Retreats'),
        Text(
          'Discover our curated collection of the world\'s most exclusive eco-\n'
          'sanctuaries, where unparalleled luxury meets untouched wilderness.',
        ),
        MapWidget(),
        ElevatedButton(
          onPressed: () {},
          child: Text('Request Retreat Catalog'),
        ),
      ],
    );
  }
}
