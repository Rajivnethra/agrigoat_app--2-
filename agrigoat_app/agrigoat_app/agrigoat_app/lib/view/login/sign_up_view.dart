import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common/line_textfield.dart';
import 'package:online_groceries/common/round_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => SignUpViewstate();
}

class SignUpViewstate extends State<SignUpView> {
  TextEditingController txtUsername = TextEditingController();
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
                    "Sign-Up",
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  Text(
                    "Enter your details to continue",
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: media.width * 0.1,
                  ),
                  LineTextfield(
                    controller: txtUsername,
                    title: "Username",
                    placeholder: "Enter your Username",
                  ),
                  SizedBox(
                    height: media.width * 0.07,
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
                  SizedBox(
                    height: media.width * 0.04,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      children: [
                        const TextSpan(
                            text: "By continuing, you agree to our "),
                        TextSpan(
                            text: "Terms of conditions",
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Terms of conditions");
                              }),
                        const TextSpan(text: "and "),
                        TextSpan(
                            text: "Privacy Policy.",
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Privacy Policy Click");
                              })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  RoundButton(
                    title: "Sign-Up",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Sign-In",
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
