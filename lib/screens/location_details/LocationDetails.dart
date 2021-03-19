import 'package:app_1/screens/locations/LocationTile.dart';
import 'package:flutter/material.dart';
import 'TextSection.dart';
import 'ImageBanner.dart';
import '../../models/Location.dart';

class LocationDetails extends StatelessWidget {
  final int _locationId;

  LocationDetails(this._locationId);

  // final location = Location.fetchAll().first;

  @override
  Widget build(BuildContext context) {
    final _location = Location.find(_locationId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _location.name,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ImageBanner(path: _location.imagePath),
                LocationTile(location: _location, dark: true),
              ]..addAll(textSections(_location)),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.content))
        .toList();
  }
}
