import 'package:flutter/material.dart';
import 'package:news_app/style/colors/news_colors.dart';
import 'package:news_app/style/typography/news_text_styles.dart';

class NewsTheme {
  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: NewsTextStyles.bodyLargeBoldPrimary,
      displayMedium: NewsTextStyles.displayMediumPrimary,
      displaySmall: NewsTextStyles.displaySmallPrimary,
      headlineLarge: NewsTextStyles.headlineLargePrimary,
      headlineMedium: NewsTextStyles.headlineMediumPrimary,
      headlineSmall: NewsTextStyles.headlineSmallPrimary,
      titleLarge: NewsTextStyles.titleLargePrimary,
      titleMedium: NewsTextStyles.titleMediumPrimary,
      titleSmall: NewsTextStyles.titleSmallPrimary,
      bodyLarge: NewsTextStyles.bodyLargeBoldPrimary,
      bodyMedium: NewsTextStyles.bodyLargeMediumPrimary,
      bodySmall: NewsTextStyles.bodyLargeRegularPrimary,
      labelLarge: NewsTextStyles.labelLargePrimary,
      labelMedium: NewsTextStyles.labelMediumPrimary,
      labelSmall: NewsTextStyles.labelSmallPrimary,
    );
  }

  static AppBarTheme get _appBarTheme {
    return AppBarTheme(toolbarTextStyle: _textTheme.titleLarge);
  }

  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: NewsColors.green.color,
          surface: Colors.white,
          brightness: Brightness.light),
      brightness: Brightness.light,
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _appBarTheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: NewsColors.green.color,
          surface: Colors.white,
          brightness: Brightness.dark),
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _appBarTheme,
    );
  }
}
