// Packages
import 'package:flutter/material.dart';

// Local
import './constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    fontFamily: 'Poppins',
    textTheme: _textTheme(),
  );
}


// General Text Theming config
TextTheme _textTheme() {
  return const TextTheme(
    // Used in Page Header
    headline1: TextStyle(
      fontSize: 22,
      color: kBlackColor,
      fontWeight: FontWeight.w600,
    ),
    // Used in Hint Text
    headline6: TextStyle(
      color: kHintTextColor,
      fontSize: 14,
    ),
    // Used in Section Description
    subtitle1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    // Used in Message Preview
    bodyText1: TextStyle(
      color: kDarkGreyColor,
      fontSize: 13,
    ),
  );
}
