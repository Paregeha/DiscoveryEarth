import 'package:flutter/material.dart';

class TheReverieJournalCardWidget extends StatelessWidget {
  const TheReverieJournalCardWidget({
    super.key,
    required this.image,
    required this.date,
    required this.title,
    required this.description,
    required this.photoPerson,
    required this.name,
    required this.namePhoto,
  });

  final Widget image;
  final String namePhoto;
  final String date;
  final String title;
  final String description;
  final Widget photoPerson;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          image,

          Row(children: [Text(namePhoto), Text(date)]),
          Text(title),
          Text(description),
          Row(
            children: [
              photoPerson,
              Text(name),
              ElevatedButton(onPressed: () {}, child: Text('Read')),
            ],
          ),
        ],
      ),
    );
  }
}
