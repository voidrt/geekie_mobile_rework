import 'package:flutter/material.dart';

class GeekieTextStyle {
  static const standardText = TextStyle(
    fontSize: GeekieTextSizes.bodyTextSize,
    fontWeight: FontWeight.w300,
  );
  static const subtitleText = TextStyle(
    fontSize: GeekieTextSizes.smallBodyTextSize,
    fontWeight: FontWeight.w200,
  );
  static const headlineText = TextStyle(
    fontSize: GeekieTextSizes.headlineTextSize,
    fontWeight: FontWeight.w300,
  );
}

class GeekieTextSizes {
  static const double smallBodyTextSize = 14;
  static const double bodyTextSize = 16;
  static const double headlineTextSize = 24;
}
