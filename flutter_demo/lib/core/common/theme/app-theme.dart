import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static Color _iconColor = Color(0XFF2B2B2B);

  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _lightPrimaryColor = Colors.grey;
  static const Color _lightPrimaryVariantColor = Color(0XFFFFA726);
  static const Color _lightSecondaryColor = Color(0XFFF4F4F4);

  static const Color _darkOnPrimaryColor = Colors.white;
  static final Color _darkPrimaryColor = Colors.grey[800] ?? Colors.grey;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;

  // fontFamily in ThemeData does not work globally, so this makes reuse easier
  // https://github.com/flutter/flutter/issues/46863
  static final TextStyle _commonTextStyle = TextStyle(
      // fontFamily: 'Cinzel'
    fontFamily: GoogleFonts.notoSans().fontFamily,
  );

  static final TextStyle _lightAppTitleTextStyle = _commonTextStyle.copyWith(
    color: _lightOnPrimaryColor,
    fontSize: 16.0,
  );
  static final TextStyle _lightScreenHeadingTextStyle = _commonTextStyle.copyWith(
      color: _lightOnPrimaryColor,
      fontSize: 48.0,
  );
  static final TextStyle _lightScreenTaskDurationTextStyle = _commonTextStyle.copyWith(
    color: Colors.grey,
    fontSize: 16.0,
  );
  static final TextStyle _lightScreenTaskNameTextStyle = _commonTextStyle.copyWith(
      color: _lightOnPrimaryColor,
      fontSize: 20.0,
  );
  static final TextTheme _lightTextTheme = TextTheme(
    bodyText1: _lightScreenTaskNameTextStyle,
    bodyText2: _lightScreenTaskDurationTextStyle, // listTile subtitle uses bodyText2
    headline2: _lightScreenHeadingTextStyle,
    headline6: _lightAppTitleTextStyle,
  );

  // copyWith overrides the dark theme colors
  static final TextStyle _darkAppTitleTextStyle = _lightAppTitleTextStyle.copyWith(
    color: _darkOnPrimaryColor,
  );
  static final TextStyle _darkScreenHeadingTextStyle = _lightScreenHeadingTextStyle.copyWith(
      color: _darkOnPrimaryColor
  );
  static final TextStyle _darkScreenTaskNameTextStyle = _lightScreenTaskNameTextStyle.copyWith(
      color: _darkOnPrimaryColor
  );
  static final TextStyle _darkScreenTaskDurationTextStyle = _lightScreenTaskDurationTextStyle.copyWith(
    color: _darkOnPrimaryColor
  );
  static final TextTheme _darkTextTheme = TextTheme(
    bodyText1: _darkScreenTaskNameTextStyle,
    bodyText2: _darkScreenTaskDurationTextStyle, // listTile subtitle uses bodyText2
    headline2: _darkScreenHeadingTextStyle,
    headline6: _darkAppTitleTextStyle,
  );

  // LIGHT THEME 💡
  static final ThemeData lightTheme = ThemeData(
    // fontFamily: 'Cinzel',
    fontFamily: GoogleFonts.notoSans().fontFamily,
    scaffoldBackgroundColor: _lightSecondaryColor,
    appBarTheme: AppBarTheme(
        textTheme: _lightTextTheme,
        color: _lightPrimaryColor,
        iconTheme: IconThemeData(
            color: Colors.white
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightPrimaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.deepPurple,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      // NOTE: Setting backgroundColor here will NOT WORK if the type is shifting, since it is overwritten by the BarItem's backgroundColor
      type: BottomNavigationBarType.fixed,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey[400],
      disabledColor: Colors.grey[200],
      focusColor: _darkPrimaryColor,
      hoverColor: Colors.grey[400],
      highlightColor: Colors.black,
      splashColor: Colors.grey,
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _darkPrimaryColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    textTheme: _lightTextTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryVariantColor,
    ),
  );

  // DARK THEME 🌚
  static final ThemeData darkTheme = ThemeData(
      // fontFamily: 'Cinzel',
      fontFamily: GoogleFonts.notoSans().fontFamily,
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: AppBarTheme(
          textTheme: _darkTextTheme,
          color: _darkPrimaryVariantColor,
          iconTheme: IconThemeData(
            color: _darkOnPrimaryColor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        backgroundColor: _darkPrimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.grey[400],
        disabledColor: Colors.grey[200],
        focusColor: _darkPrimaryColor,
        hoverColor: Colors.grey[400],
        highlightColor: Colors.black,
        splashColor: Colors.grey,
      ),
      colorScheme: ColorScheme.dark(
        primary: Colors.white24,
        // primaryVariant: _darkPrimaryColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
      ),
      iconTheme: IconThemeData(
        color: Colors.grey,
      ),
      textTheme: _darkTextTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightPrimaryColor,
      ));
}
