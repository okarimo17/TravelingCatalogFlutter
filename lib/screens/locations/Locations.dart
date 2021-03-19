import 'package:app_1/screens/location_details/ImageBanner.dart';
import 'package:app_1/screens/locations/TileOverlay.dart';
import 'package:flutter/material.dart';

import '../../models/Location.dart';
import '../../app.dart';

class Locations extends StatelessWidget {
  final List<Location> locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tourism App",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: ListView(
        children: fillListView(context, locations),
      ),
    );
  }

  List<Widget> fillListView(BuildContext context, List<Location> locations) {
    return locations
        .map((location) => GestureDetector(
              child: listViewItem(location),
              onTap: () => _onLocationTap(context, location.id),
            ))
        .toList();
  }

  Widget listViewItem(Location location) {
    return Container(
      height: 245.0,
      constraints: BoxConstraints.expand(height: 245.0),
      child: Stack(
        children: [
          ImageBanner(path: location.imagePath, height: 245.0),
          TileOverlay(location)
        ],
      ),
    );
  }

  void _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, LocationDetailsRoute,
        arguments: {"id": locationId});
  }
}
