import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';

class LineTextfield extends StatelessWidget{
  final TextEditingController controller;
  final String title;
  final String placeholder;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? right;

  const LineTextfield({super.key, required this.controller, required this.title, required this.placeholder, this.keyboardType, this.obscureText = false, this.right});

  @override
  Widget build(BuildContext context) {
    return Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: TColor.textTittle,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                       TextField(
                          controller: controller,
                          keyboardType: keyboardType,
                          obscureText: obscureText,
                          decoration: InputDecoration(
                           suffixIcon: right,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: placeholder,
                            hintStyle: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 1,
                          color: const Color(0xffE2E2E2),
                        ) 
                  ]
    );
  }
}