// ignore_for_file: deprecated_member_use, prefer_const_constructors, depend_on_referenced_packages, prefer_rubikpolation_to_compose_strings, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:izzi/Constance/globle.dart' as globles;
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static bool isLightTheme = true;

  static ThemeData getTheme() {
    if (isLightTheme) {
      return lightTheme();
    } else {
      return darkTheme();
    }
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      titleLarge: GoogleFonts.rubik(
          textStyle: TextStyle(
        fontSize: 36,
        color: HexColor('#1A1A1A'),
        fontWeight: FontWeight.bold,
      )),
      titleMedium: GoogleFonts.rubik(
          textStyle: TextStyle(
        fontSize: 24,
        color: HexColor('#1A1A1A'),
        fontWeight: FontWeight.w500,
      )),
      titleSmall: GoogleFonts.rubik(
          textStyle: TextStyle(
        fontSize: 24,
        color: HexColor('#1A1A1A'),
        fontWeight: FontWeight.w600,
      )),
      bodyLarge: GoogleFonts.rubik(
        textStyle: TextStyle(
          fontSize: 24,
          color: HexColor('#1A1A1A'),
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyMedium: GoogleFonts.rubik(
        textStyle: TextStyle(
          fontSize: 28,
          color: HexColor('#1A1A1A'),
          fontWeight: FontWeight.w500,
        ),
      ),
      bodySmall: GoogleFonts.rubik(
          textStyle: TextStyle(
        fontSize: 16,
        color: HexColor('#1A1A1A'),
        fontWeight: FontWeight.w600,
      )),
      labelSmall: GoogleFonts.rubik(
          textStyle: TextStyle(
        fontSize: 16,
        color: HexColor('#1A1A1A'),
        fontWeight: FontWeight.w400,
      )),
      labelMedium: GoogleFonts.rubik(
        textStyle: TextStyle(
          fontSize: 24,
          color: HexColor('#1A1A1A'),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static ThemeData lightTheme() {
    Color primaryColor = HexColor(globles.primary);
    Color secondaryColor = HexColor(globles.secondary);
    final ColorScheme colorScheme = ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    final ThemeData base = ThemeData.light();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.white),
      popupMenuTheme: PopupMenuThemeData(color: Colors.white),
      iconTheme: IconThemeData(color: Color(0xff2b2b2b)),
      primaryColor: primaryColor,
      splashColor: Colors.white.withOpacity(0.1),
      hoverColor: HexColor("#613BFF"),
      splashFactory: InkRipple.splashFactory,
      highlightColor: HexColor("#FFFFFF"),
      canvasColor: HexColor("#613BFF20"),
      scaffoldBackgroundColor: HexColor('FFFFFF'),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      indicatorColor: primaryColor,
      disabledColor: HexColor("#AFAFAF"),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: isLightTheme ? HexColor('#F8F9FA') : HexColor('#202020')),
      colorScheme: colorScheme
          .copyWith(error: Colors.red)
          .copyWith(background: Colors.white),
      dividerColor: HexColor("#8F92A120"),
    );
  }

  static ThemeData darkTheme() {
    Color primaryColor = HexColor(globles.primary);
    Color secondaryColor = HexColor(globles.secondary);
    final ColorScheme colorScheme = ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.grey[700]),
      popupMenuTheme: PopupMenuThemeData(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.white),
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.grey[900],
      scaffoldBackgroundColor: HexColor('#141416'),
      disabledColor: HexColor('5D5760'),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      platform: TargetPlatform.iOS,
      colorScheme: colorScheme.copyWith(background: Colors.grey[800]),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
