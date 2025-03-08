import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/view/login/welcome_view.dart';

class Splash_view extends StatefulWidget {
  const Splash_view({super.key});

  @override
  State<Splash_view> createState() => _Splash_viewState();
}

class _Splash_viewState extends State<Splash_view> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fireOpenApp();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
    startApp();
  }

  void startApp() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeView()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: TColor.primary,
        body: Center(
          child: Image.asset("assets/img/splash_logo.png",
              width: media.width * 0.9),
        ));
  }
}
