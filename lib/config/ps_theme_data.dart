import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_config.dart';

import 'ps_colors.dart';

ThemeData themeData(ThemeData baseTheme) {
  //final baseTheme = ThemeData.light();

  if (baseTheme.brightness == Brightness.dark) {
    PsColors.loadColor(false);

    // Dark Theme
    return baseTheme.copyWith(
      primaryColor: PsColors.mainColor,
      primaryColorDark: PsColors.mainDarkColor,
      primaryColorLight: PsColors.mainLightColor,
      textTheme: TextTheme(
        headline1: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
        headline2: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
        headline3: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
        headline4: TextStyle(
          color: PsColors.textPrimaryColor,
          fontFamily: PsConfig.psDefaultFontFamily,
        ),
        headline5: TextStyle(
            color: PsColors.textPrimaryColor,
            fontFamily: PsConfig.psDefaultFontFamily,
            fontWeight: FontWeight.bold),
        headline6: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
        subtitle1: TextStyle(
            color: PsColors.textPrimaryColor,
            fontFamily: PsConfig.psDefaultFontFamily,
            fontWeight: FontWeight.bold),
        subtitle2: TextStyle(
            color: PsColors.textPrimaryColor,
            fontFamily: PsConfig.psDefaultFontFamily,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
          color: PsColors.textPrimaryColor,
          fontFamily: PsConfig.psDefaultFontFamily,
        ),
        bodyText2: TextStyle(
            color: PsColors.textPrimaryColor,
            fontFamily: PsConfig.psDefaultFontFamily,
            fontWeight: FontWeight.bold),
        button: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
        caption: TextStyle(color: PsColors.textPrimaryLightColor, fontFamily: PsConfig.psDefaultFontFamily),
        overline: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
      ),
      iconTheme: IconThemeData(color: PsColors.iconColor),
      appBarTheme: AppBarTheme(color: PsColors.coreBackgroundColor),
    );
  } else {
    PsColors.loadColor(true);

    TextTheme textTheme = TextTheme(
      headline1: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
      headline2: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
      headline3: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
      headline4: TextStyle(
        color: PsColors.textPrimaryColor,
        fontFamily: PsConfig.psDefaultFontFamily,
      ),
      headline5: TextStyle(
          color: PsColors.textPrimaryColor,
          fontFamily: PsConfig.psDefaultFontFamily,
          fontWeight: FontWeight.bold),
      headline6: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
      subtitle1: TextStyle(
          color: PsColors.textPrimaryColor,
          fontFamily: PsConfig.psDefaultFontFamily,
          fontWeight: FontWeight.bold),
      subtitle2: TextStyle(
          color: PsColors.textPrimaryColor,
          fontFamily: PsConfig.psDefaultFontFamily,
          fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
        color: PsColors.textPrimaryColor,
        fontFamily: PsConfig.psDefaultFontFamily,
      ),
      bodyText2: TextStyle(
          color: PsColors.textPrimaryColor,
          fontFamily: PsConfig.psDefaultFontFamily,
          fontWeight: FontWeight.bold),
      button: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
      caption: TextStyle(color: PsColors.textPrimaryLightColor, fontFamily: PsConfig.psDefaultFontFamily),
      overline: TextStyle(color: PsColors.textPrimaryColor, fontFamily: PsConfig.psDefaultFontFamily),
    );
    // White Theme
    return baseTheme.copyWith(
        primaryColor: PsColors.mainColor,
        primaryColorDark: PsColors.mainDarkColor,
        primaryColorLight: PsColors.mainLightColor,
        textTheme: textTheme,
        iconTheme: IconThemeData(color: PsColors.iconColor),
        appBarTheme: AppBarTheme(
            color: PsColors.coreBackgroundColor,
            textTheme: textTheme,
            iconTheme: IconThemeData(color: PsColors.iconColor)));
  }
}
