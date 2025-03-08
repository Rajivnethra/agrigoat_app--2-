import 'package:flutter/material.dart';
import 'package:online_groceries/view/login/splash_view.dart';
import 'package:online_groceries/view/main_tabview/main_tabview.dart';
import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EM AgriGoat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Gilroy",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const Splash_view(),
    );
  }
}
