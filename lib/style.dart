import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;
const SmallTextSize = 12.0;

const DefaultPaddingHorizontal = 12.0;

const RedColorPrimary = Colors.red;
const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;

const String FontName = "Montserrat";

const AppBarTextStyle = TextStyle(
  fontFamily: FontName,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.black,
);

const AppBarStyle = AppBarTheme(
  centerTitle: true,
  titleTextStyle: AppBarTextStyle,
  backgroundColor: Colors.white,
  iconTheme: IconThemeData(
    color: Colors.black45,
  ),
);

const TitleTextStyle = TextStyle(
  fontFamily: FontName,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.black,
);

const Body2TextStyle = TextStyle(
  fontFamily: FontName,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize - 2,
  color: Colors.black,
);

const TileTitleTextStyle = TextStyle(
  fontFamily: FontName,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize - 4,
  color: RedColorPrimary,
);
const TileSubTitleTextStyle = TextStyle(
  fontFamily: FontName,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize - 2,
  color: RedColorPrimary,
);

const TileSubTitle2TextStyle = TextStyle(
  fontFamily: FontName,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: Colors.white12,
);
