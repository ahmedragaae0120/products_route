import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_route/config/style/text_style.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff004182),
      primary: const Color(0xff004182),
      onPrimary: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(toolbarHeight: 113.w),
    textTheme: TextTheme(
        bodyMedium: TextsStyle.titlesStyle,
        bodySmall:TextsStyle.descriptionStyle),
  );
}

