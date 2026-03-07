import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final center = LatLng(50.4501, 30.5234);

    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Stack(
        children: [
          FlutterMap(
            options: MapOptions(initialCenter: center, initialZoom: 13),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: center,
                    width: 80,
                    height: 80,
                    child: const Icon(Icons.location_pin, size: 40),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Text('Explore Sanctuaries'),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Rainforest Retreats'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Coastal Sanctuaries'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Mountain Havens'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Desert Oases'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text('Private Islands'),
                  ],
                ),
                Text('Conservation Status'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
