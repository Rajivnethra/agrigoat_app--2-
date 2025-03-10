import 'package:flutter/material.dart';
import 'package:online_groceries/common/account_row.dart';
import 'package:online_groceries/common/color_extension.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => AccountViewState();
}

class AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
             
             Padding(
               padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
               child: Row(
                 children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child:Image.asset("assets/img/u1.png", width: 60, height: 60, )),
                 
                  
                 const SizedBox( width: 15,) ,
               
                 Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row( children: [
               
                    Text(
                    "EM Agrigoat",         
                    style: TextStyle(
                color: TColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w700),
                       ),
                       const SizedBox( width: 8,) ,
               
                       Icon(Icons.edit, color: 
                       TColor.primary,
                       size: 15,)
               
                   ],
                   ),
                   Text(
                    "EMAgrigoat@gmail.com",         
                    style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 10,
                ),
                       ),
                 ],
                 ) )
                 ],
                 ),
             ),
          
          const Divider(
            color: Colors.black26,
            height: 1,
          ),

          AccountRow(
            title: "Orders",
             icon: "assets/img/a_order.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "My Details",
             icon: "assets/img/a_my_detail.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "Delivery Address",
             icon: "assets/img/a_delivery_address.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "Payment Method",
             icon: "assets/img/payment_methods.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "Promo Code",
             icon: "assets/img/a_promocode.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "Notifications",
             icon: "assets/img/a_notification.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "Help",
             icon: "assets/img/a_help.png",
             onPressed: (){},
             ),

             AccountRow(
            title: "About",
             icon: "assets/img/a_about.png",
             onPressed: (){},
             ),

              Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      
                    },
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)),
                    minWidth: double.maxFinite,
                    elevation: 0.1,
                    color: const Color(0xffF2F3F2),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Log Out",
                              style:  TextStyle(
                                  color: TColor.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Container(
                          
                          padding: const EdgeInsets.symmetric( horizontal: 20),
                          child: Image.asset("assets/img/logout.png",
                              width: 20, height: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ],
        )),
      )
    );
  }
}