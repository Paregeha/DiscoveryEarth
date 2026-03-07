import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentConservationInitiativesWidget extends StatelessWidget {
  const CurrentConservationInitiativesWidget({
    super.key,
    required this.title,
    required this.description,
    required this.totalText,
    required this.countText,
    required this.total,
    required this.count,
  });

  final String title;
  final String description;
  final String totalText;
  final String countText;
  final double total;
  final double count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(child: SvgPicture.asset(Assets.icons.protection.path)),
        Column(
          children: [
            Text(title),
            Text(description),
            Row(children: [Text(countText), Text(totalText)]),
          ],
        ),
      ],
    );
  }
}
