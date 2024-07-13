import 'package:flutter/material.dart';
import 'package:products_route/config/theme/light_theme.dart';
import 'package:products_route/presentation/layouts/products_screen/product_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: LightTheme.lightTheme,
        themeMode: ThemeMode.light,
        home: const ProductScreen());
  }
}
