import 'package:flutter/material.dart';

const Color textColor = Color(0xFFd1dbe4);
const Color bgColor = Color(0xFF1e1f28);
const Color accentColor = Color(0xFF678D85);
const Color primaryColor = Color(0xFF353747);
const Color secondaryColor = Color(0xFF44465b);

final ThemeData theme = ThemeData(
// This is the theme of your application.
//
// TRY THIS: Try running your application with "flutter run". You'll see
// the application has a purple toolbar. Then, without quitting the app,
// try changing the seedColor in the colorScheme below to Colors.green
// and then invoke "hot reload" (save your changes or press the "hot
// reload" button in a Flutter-supported IDE, or press "r" if you used
// the command line to start the app).
//
// Notice that the counter didn't reset back to zero; the application
// state is not lost during the reload. To reset the state, use hot
// restart instead.
//
// This works for code too, not just values: Most code changes can be
// tested with just a hot reload.
  visualDensity: VisualDensity.comfortable,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    primary: accentColor,
    onPrimary: textColor,
    secondary: primaryColor,
    onSecondary: textColor,
    error: Colors.red,
    onError: textColor,
    background: bgColor,
    onBackground: textColor,
    surface: bgColor,
    onSurface: textColor,
    brightness: Brightness.dark,
  ),
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red, brightness: Brightness.dark),
  textTheme: const TextTheme(
    displayLarge:
        TextStyle(color: textColor, fontFamily: 'Inter', letterSpacing: -5),
    displayMedium:
        TextStyle(color: textColor, fontFamily: 'Inter', letterSpacing: -4),
    displaySmall:
        TextStyle(color: textColor, fontFamily: 'Inter', letterSpacing: -3),
    titleLarge: TextStyle(
        color: textColor,
        fontFamily: 'Ubuntu',
        fontSize: 46,
        fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
        color: textColor,
        fontFamily: 'Ubuntu',
        fontSize: 36,
        fontWeight: FontWeight.w600),
    titleSmall: TextStyle(
        color: textColor,
        fontFamily: 'Ubuntu',
        fontSize: 26,
        fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
    ),
    bodyMedium: TextStyle(color: textColor, fontFamily: 'Ubuntu'),
    bodySmall: TextStyle(color: textColor, fontFamily: 'Ubuntu'),
    headlineLarge:
        TextStyle(color: textColor, fontFamily: 'Ubuntu', fontSize: 24),
    headlineMedium:
        TextStyle(color: textColor, fontFamily: 'Ubuntu', fontSize: 18),
    headlineSmall:
        TextStyle(color: textColor, fontFamily: 'Ubuntu', fontSize: 14),
    labelLarge: TextStyle(color: textColor, fontFamily: 'Ubuntu'),
    labelMedium: TextStyle(color: textColor, fontFamily: 'Ubuntu'),
    labelSmall: TextStyle(color: textColor, fontFamily: 'Ubuntu'),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll<Color>(accentColor),
      textStyle: const MaterialStatePropertyAll<TextStyle?>(
        TextStyle(color: textColor, fontFamily: 'Ubuntu'),
      ),
      shape: const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
      ),
      shadowColor: const MaterialStatePropertyAll<Color>(Colors.black),
      foregroundColor: const MaterialStatePropertyAll<Color>(textColor),
      overlayColor:
          MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0.1)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: const MaterialStatePropertyAll<BorderSide>(
        BorderSide(color: accentColor),
      ),
      backgroundColor:
          const MaterialStatePropertyAll<Color>(Colors.transparent),
      textStyle: const MaterialStatePropertyAll<TextStyle?>(
        TextStyle(color: textColor, fontFamily: 'Ubuntu'),
      ),
      shape: const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
      ),
      foregroundColor: const MaterialStatePropertyAll<Color>(accentColor),
      overlayColor:
          MaterialStatePropertyAll<Color>(accentColor.withOpacity(0.1)),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
    textStyle: MaterialStatePropertyAll<TextStyle?>(
      TextStyle(color: textColor, fontFamily: 'Ubuntu'),
    ),
    foregroundColor: MaterialStatePropertyAll<Color>(accentColor),
    shape: MaterialStatePropertyAll<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(19)),
      ),
    ),
    overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent),
  )),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll<Color>(accentColor),
      textStyle: const MaterialStatePropertyAll<TextStyle?>(
        TextStyle(color: textColor, fontFamily: 'Ubuntu'),
      ),
      shape: const MaterialStatePropertyAll<OutlinedBorder>(
          CircleBorder() //To modify
          ),
      foregroundColor: const MaterialStatePropertyAll<Color>(textColor),
      overlayColor:
          MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll<Color>(bgColor),
      textStyle: const MaterialStatePropertyAll<TextStyle?>(
        TextStyle(color: textColor, fontFamily: 'Ubuntu'),
      ),
      shape: const MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
      ),
      foregroundColor: const MaterialStatePropertyAll<Color>(accentColor),
      overlayColor:
          MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0.1)),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    splashRadius: 10,
    overlayColor:
        MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0.2)),
    side: const BorderSide(color: primaryColor, width: 2),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6))),
  ),
  radioTheme: RadioThemeData(
    visualDensity: VisualDensity.comfortable,
    splashRadius: 10,
    overlayColor:
        MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0.2)),
  ),
  switchTheme: SwitchThemeData(
    splashRadius: 10,
    trackOutlineWidth: const MaterialStatePropertyAll<double>(1.5),
    overlayColor:
        MaterialStatePropertyAll<Color>(Colors.black.withOpacity(0.2)),
    thumbColor: const MaterialStatePropertyAll<Color>(textColor),
  ),
  dividerTheme: DividerThemeData(
    color: textColor.withOpacity(0.2),
    thickness: 1.5,
    space: 20,
    indent: 10,
    endIndent: 10,
  ),
  sliderTheme: SliderThemeData(
    showValueIndicator: ShowValueIndicator.always,
    valueIndicatorShape: const DropSliderValueIndicatorShape(),
    valueIndicatorColor: accentColor,
    valueIndicatorTextStyle: const TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 12.0,
    ),
    rangeTrackShape: const RectangularRangeSliderTrackShape(),
    activeTrackColor: accentColor,
    inactiveTrackColor: textColor.withOpacity(0.2),
    trackShape: const RoundedRectSliderTrackShape(),
    trackHeight: 4.0,
    thumbColor: accentColor,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
  ),
  segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        side: const BorderSide(color: primaryColor, width: 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: primaryColor,
        selectedBackgroundColor: accentColor,
        selectedForegroundColor: textColor,
        foregroundColor: textColor,
      ),
      selectedIcon: Container()),
  dialogTheme: DialogTheme(
    actionsPadding: const EdgeInsets.all(10),
    backgroundColor: bgColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))),
    elevation: 20,
    titleTextStyle: const TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 20.0,
    ),
    contentTextStyle: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontFamily: 'Ubuntu',
      fontSize: 14.0,
    ),
  ),
  chipTheme: const ChipThemeData(
    showCheckmark: false,
    checkmarkColor: Colors.white,
    side: BorderSide(color: primaryColor, width: 1),
    // brightness: Brightness.dark,
    backgroundColor: primaryColor,
    labelStyle: TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 14.0,
    ),
    secondaryLabelStyle: TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 10.0,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: primaryColor, width: 3),
    ),
    counterStyle: TextStyle(
      color: textColor.withOpacity(0.6),
      fontFamily: 'Ubuntu',
      fontSize: 10.0,
    ),
    floatingLabelStyle: const TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 14.0,
    ),
    // helperStyle:,
    helperMaxLines: 2,
    hintFadeDuration: const Duration(milliseconds: 500),
    errorStyle: const TextStyle(color: Colors.red),
    errorMaxLines: 2,
    isDense: true,
    isCollapsed: false,
    filled: false,
    fillColor: Colors.transparent,
    activeIndicatorBorder: const BorderSide(color: accentColor, width: 3),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.red, width: 3),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: primaryColor, width: 3),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: primaryColor, width: 3),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: primaryColor.withOpacity(0.4), width: 3),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: primaryColor, width: 3),
    ),
    alignLabelWithHint: false,
    labelStyle: const TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 14.0,
    ),
    hintStyle: const TextStyle(
      color: textColor,
      fontFamily: 'Ubuntu',
      fontSize: 14.0,
      fontWeight: FontWeight.w200,
    ),
  ),

  useMaterial3: true,
);
