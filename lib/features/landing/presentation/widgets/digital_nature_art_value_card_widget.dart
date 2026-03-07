import 'package:flutter/material.dart';

class DigitalNatureArtValueCardWidget extends StatelessWidget {
  const DigitalNatureArtValueCardWidget({
    super.key,
    required this.title,
    required this.image,
    required this.photoPerson,
    required this.description,
    required this.price,
    required this.edition,
    required this.name,
  });

  final String title;
  final Widget image;
  final Widget photoPerson;
  final String description;
  final String price;
  final String edition;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              image,
              Container(child: Text(edition)),
            ],
          ),
          Row(
            children: [
              Text(title),
              Container(
                child: Container(
                  width: 13.33,
                  height: 13.33,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(1000.0),
                  ),
                ),
              ),
              Container(
                child: Container(
                  width: 13.33,
                  height: 13.33,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(1000.0),
                  ),
                ),
              ),
            ],
          ),
          Row(children: [photoPerson, Text(name)]),
          Text(description),
          Row(
            children: [
              Text(price),
              ElevatedButton(onPressed: () {}, child: Text('View Details')),
            ],
          ),
        ],
      ),
    );
  }
}
