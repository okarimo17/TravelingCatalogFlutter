import 'package:app_1/models/Location.dart';
import 'package:app_1/screens/locations/LocationTile.dart';
import 'package:flutter/material.dart';

class TileOverlay extends StatelessWidget {
  final Location location;
  const TileOverlay(this.location);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: LocationTile(location: location),
        )
      ],
    );
  }
}
