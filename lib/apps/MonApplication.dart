import 'package:flutter/material.dart';
import 'package:zigida_app/pages/demarrage/SplashPage.dart';
import 'package:zigida_app/utils/ColorPages.dart';

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: ColorPages.COLOR_BLANC))),
    );
  }
}
