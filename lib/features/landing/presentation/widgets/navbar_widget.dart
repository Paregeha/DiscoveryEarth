import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';

class NavbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Eden Reverie'),
              SizedBox(width: 10.0),
              Text('Living Gallery'),
              SizedBox(width: 10.0),
              Text('Expeditions'),
              SizedBox(width: 10.0),
              Text('Nature Patrons'),
              SizedBox(width: 10.0),
              Text('Art Vault'),
              SizedBox(width: 10.0),
              Text('Journal'),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.icons.search.path),
              SizedBox(width: 20.0),
              SvgPicture.asset(Assets.icons.profile.path),
              SizedBox(width: 20.0),
              DropdownButton<String>(
                value: 'En',
                items: const [DropdownMenuItem(value: 'En', child: Text('En'))],
                onChanged: null,
              ),
              SizedBox(width: 30.0),
            ],
          ),
        ],
      ),
    );
  }
}
