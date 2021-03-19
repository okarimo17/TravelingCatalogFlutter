import 'package:app_1/screens/location_details/LocationDetails.dart';
import 'package:flutter/material.dart';
// import 'screens/location_details/LocationDetails.dart';
import 'style.dart';
import 'screens/locations/Locations.dart';

const String LocationsRoute = "/";
const String LocationDetailsRoute = "/location";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _routes(),
      theme: ThemeData(
          appBarTheme: AppBarStyle,
          textTheme: TextTheme(
            headline6: TitleTextStyle,
            bodyText2: Body2TextStyle,
            bodyText1: TileTitleTextStyle,
            subtitle1: TileSubTitleTextStyle,
            subtitle2: TileSubTitle2TextStyle,
          )),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailsRoute:
          screen = LocationDetails(arguments['id']);
          break;
        default:
          return null;
          break;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
