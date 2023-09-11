import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? mediaQuaryData;
  static double? screenWidth;
  static double? screenheight;

  void init(BuildContext context) {
    mediaQuaryData = MediaQuery.of(context);
    screenWidth = mediaQuaryData!.size.width;
    screenheight = mediaQuaryData!.size.height;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenheight;
  }

  static const spaceSmall = SizedBox(height: 25);
  static final spaceMedium = SizedBox(height: screenheight! * 0.05);
  static final spaceBig = SizedBox(height: screenheight! * 0.08);

  static const outlinedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: Colors.greenAccent),
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: Colors.red),
  );

  static const primaryColor = Colors.greenAccent;
}
