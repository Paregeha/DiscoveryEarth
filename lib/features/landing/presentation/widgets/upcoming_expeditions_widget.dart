import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';

class UpcomingExpeditionsWidget extends StatelessWidget {
  const UpcomingExpeditionsWidget({
    super.key,
    required this.title,
    required this.month,
    required this.description,
  });

  final String title;
  final String month;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(children: [Text(title), Text(month)]),
              SvgPicture.asset(Assets.icons.kolokol.path),
            ],
          ),
          Text(description),
          ElevatedButton(onPressed: () {}, child: Text('Join Waitlist')),
        ],
      ),
    );
  }
}
