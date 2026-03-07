import 'package:flutter/cupertino.dart';

class ConservationImpactWidget extends StatelessWidget {
  const ConservationImpactWidget({
    super.key,
    required this.icon,
    required this.count,
    required this.title,
  });

  final Widget icon;
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(child: icon),
          Text(count),
          Text(title),
        ],
      ),
    );
  }
}
