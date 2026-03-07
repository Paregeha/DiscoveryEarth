import 'package:discover_earth/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInfoWidget extends StatelessWidget {
  const TextInfoWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(child: SvgPicture.asset(Assets.icons.ready.path)),
          Column(children: [Text(title), Text(description)]),
        ],
      ),
    );
  }
}
