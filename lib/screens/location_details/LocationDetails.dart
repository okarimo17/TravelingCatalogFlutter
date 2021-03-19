import 'package:app_1/screens/locations/LocationTile.dart';
import 'package:app_1/style.dart';
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
                  SizedBox(
                    height: 15.0,
                  ),
                  LocationTile(location: _location, dark: true),
                  ...textSections(_location),
                  bottomButton(context)
                ]),
          ],
        ),
      ),
    );
  }

  Widget bottomButton(context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(
          'GO HOME',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.red,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      margin: EdgeInsets.only(bottom: 20.0),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.content))
        .toList();
  }
}
