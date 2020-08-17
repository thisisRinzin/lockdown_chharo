import 'package:flutter/material.dart';

class AppTheme {
  static bool isLightTheme = true;

  static const Color primaryColor = Colors.orange;
  static const Color secondaryColor = Colors.orangeAccent;
  static const fontName = 'BalooDa2';
  static const Color textColor = Colors.black54;
  static const TextStyle primaryButtonTextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: 2);

  static TextTheme _buildTextTheme(TextTheme base) {
    Color textColor = Colors.black54;

    return base.copyWith(
      headline6: base.headline6.copyWith(
        fontFamily: fontName,
      ),
      bodyText2:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      bodyText1:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      button: base.headline6.copyWith(fontFamily: fontName, color: textColor),
      caption: base.headline6.copyWith(fontFamily: fontName, color: textColor),
      headline4:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      headline3:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      headline2:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      headline1:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      headline5:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      overline: base.headline6.copyWith(fontFamily: fontName, color: textColor),
      subtitle1:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
      subtitle2:
          base.headline6.copyWith(fontFamily: fontName, color: textColor),
    );
  }

  static ThemeData lightTheme() {
    final ThemeData base = ThemeData.light();
    final ColorScheme colorScheme = const ColorScheme.light()
        .copyWith(primary: primaryColor, secondary: secondaryColor);

    return base.copyWith(
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: AppTheme.primaryColor),
            actionsIconTheme: IconThemeData(color: AppTheme.primaryColor)),
        colorScheme: colorScheme,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        buttonColor: primaryColor,
        buttonTheme: ButtonThemeData(
            colorScheme: colorScheme, textTheme: ButtonTextTheme.primary),
        textTheme: _buildTextTheme(base.textTheme),
        primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
        accentTextTheme: _buildTextTheme(base.accentTextTheme),
        inputDecorationTheme: _buildInputDecorationTheme(),
        backgroundColor: Colors.grey,
        canvasColor: Colors.grey[50]);
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(8)));
  }
}
