import 'package:flutter/material.dart';

class InviteOnlyEcoExpeditionsCardsWidget extends StatelessWidget {
  const InviteOnlyEcoExpeditionsCardsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.date,
    required this.group,
  });

  final Widget image;
  final String title;
  final String description;
  final String date;
  final String group;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          image,
          Row(children: [Text(title), Text('Accepting Applications')]),
          Text(description),
          Row(
            children: [
              Column(children: [Text(date), Text(group)]),
              ElevatedButton(
                onPressed: () {},
                child: Text('Request Invitation'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
