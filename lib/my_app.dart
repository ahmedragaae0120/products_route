import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_route/config/theme/light_theme.dart';
import 'package:products_route/presentation/layouts/products_screen/product_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: LightTheme.lightTheme,
        themeMode: ThemeMode.light,
        home: const ProductScreen(),
      ),
    );
  }
}
