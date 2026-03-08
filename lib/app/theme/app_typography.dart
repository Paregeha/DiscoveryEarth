import 'package:flutter/material.dart';

abstract final class AppTypography {
  static const String pacifico = 'Pacifico';
  static const String montserrat = 'Montserrat';
  static const String cormorantGaramond = 'CormorantGaramond';

  static const TextStyle logo = TextStyle(
    fontFamily: pacifico,
    fontSize: 30.0,
    fontWeight: FontWeight.w400,
    height: 36.0 / 30.0,
    letterSpacing: 0,
  );

  static const TextStyle navBarText = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    height: 20.0 / 14.0,
    letterSpacing: 0,
  );

  static const TextStyle mainHeadText = TextStyle(
    fontFamily: cormorantGaramond,
    fontSize: 72.0,
    fontWeight: FontWeight.w300,
    height: 72.0 / 72.0,
    letterSpacing: 0,
  );

  static const TextStyle secondHeadText = TextStyle(
    fontFamily: montserrat,
    fontSize: 20.0,
    fontWeight: FontWeight.w300,
    height: 28.0 / 20.0,
    letterSpacing: 0,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    height: 20.0 / 14.0,
    letterSpacing: 0,
  );

  static const TextStyle titleSection = TextStyle(
    fontFamily: cormorantGaramond,
    fontWeight: FontWeight.w300,
    fontSize: 48.0,
    height: 48.0 / 48.0,
    letterSpacing: 0,
  );

  static const TextStyle infoTextSection = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 18.0,
    height: 28.0 / 18.0,
    letterSpacing: 0,
  );

  static const TextStyle cardTitleText = TextStyle(
    fontFamily: cormorantGaramond,
    fontWeight: FontWeight.w500,
    fontSize: 24.0,
    height: 32.0 / 24.0,
    letterSpacing: 0,
  );

  static const TextStyle cardTitleText2 = TextStyle(
    fontFamily: cormorantGaramond,
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
    height: 28.0 / 20.0,
    letterSpacing: 0,
  );

  static const TextStyle cardDescriptionText = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 24.0 / 16.0,
    letterSpacing: 0,
  );

  static const TextStyle anyText = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    height: 20.0 / 14.0,
    letterSpacing: 0,
  );

  static const TextStyle anyText2 = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
    height: 16.0 / 12.0,
    letterSpacing: 0,
  );

  static const TextStyle countImpact = TextStyle(
    fontFamily: cormorantGaramond,
    fontWeight: FontWeight.w300,
    fontSize: 36.0,
    height: 40.0 / 36.0,
  );

  static const TextStyle footerHeadText = TextStyle(
    fontFamily: cormorantGaramond,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    height: 28.0 / 18.0,
    letterSpacing: 0,
  );
}
