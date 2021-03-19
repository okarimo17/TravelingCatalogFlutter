import 'package:app_1/models/Location.dart';
import 'package:flutter/material.dart';
import 'package:app_1/style.dart';

const LocationTileHeight = 80.0;

class LocationTile extends StatelessWidget {
  final Location location;
  final bool dark;
  const LocationTile({@required this.location, this.dark = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.dark ? TextColorDark : TextColorLight;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
      height: LocationTileHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            location.name.toUpperCase(),
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: textColor,
                ),
          ),
          Text(
            location.userItinerarySummary.toUpperCase(),
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            location.tourPackageName.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: this.dark ? textColor : Colors.white),
          ),
        ],
      ),
    );
  }
}
