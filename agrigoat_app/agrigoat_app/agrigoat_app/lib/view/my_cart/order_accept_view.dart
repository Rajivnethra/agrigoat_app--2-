import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common/round_button.dart';

class OrderAcceptView extends StatefulWidget {
  const OrderAcceptView({super.key});

  @override
  State<OrderAcceptView> createState() => _OrderAcceptViewState();
}

class _OrderAcceptViewState extends State<OrderAcceptView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return 
            Scaffold(
              backgroundColor: Colors.white,
              body: Stack(children: [
            Image.asset(
              "assets/img/bottom_bg.png",
               width: media.width,
                height: media.height,
                 fit: BoxFit.cover,
            ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                  
                      const Spacer(),
                      Image.asset(
                        "assets/img/order_accepted.png",
                        width: media.width * 0.7,
                      ),
                      const SizedBox(height: 40,),
                      Text(
                    "Your order has been accepted",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20,),

                  Text(
                    "Your items will be delivered soon.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                      const Spacer(),
                     const  Spacer(),
                      RoundButton(title: "Track Order", onPressed: () {}),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child:Text(
                    "Back to Home",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                      )
                    ],
                    ),
                ),
              ),
              ],
                ),
                );
  }
}