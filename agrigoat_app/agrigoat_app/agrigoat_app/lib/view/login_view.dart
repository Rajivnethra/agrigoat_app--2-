import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common/line_textfield.dart';
import 'package:online_groceries/common/round_button.dart';
import 'package:online_groceries/view/login/sign_in_view.dart';
import 'package:online_groceries/view/login/sign_up_view.dart';
import 'package:online_groceries/view/main_tabview/main_tabview.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => LogInViewstate();
}

class LogInViewstate extends State<LogInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset("assets/img/bottom_bg.png",
            width: media.width, height: media.height, fit: BoxFit.cover),
      ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/img/back.png",
                width: 20,
                height: 20,
              )),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/color_logo.png",
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.15,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  Text(
                    "Enter your password to login",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: media.width * 0.1,
                  ),
                  LineTextfield(
                    controller: txtEmail,
                    title: "Email",
                    placeholder: "Enter your email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: media.width * 0.07,
                  ),
                  LineTextfield(
                    controller: txtPassword,
                    title: "Password",
                    placeholder: "Enter your password",
                    obscureText: isShow,
                    right: IconButton(
                        onPressed: () {
                          setState(() {
                            isShow = !isShow;
                          });
                        },
                        icon: Icon(
                          !isShow ? Icons.visibility_off : Icons.visibility,
                          color: TColor.textTittle,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  RoundButton(
                    title: "Log-In",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainTabview()));
                    },
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpView()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Sign-Up",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
