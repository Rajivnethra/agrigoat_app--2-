import 'package:flutter/material.dart';
import 'package:online_groceries/common/cart_item_row.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common/favourite_row.dart';
import 'package:online_groceries/common/round_button.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  List listArr = [
    {
      "name": "Sprite Can",
      "icon": "assets/img/sprite_can.png",
      "qty": "325",
      "unit": "ml, Price",
      "price": "2.99"
    },
    {
      "name": "Egg Chicken Red",
      "icon": "assets/img/egg_chicken_red.png",
      "qty": "1",
      "unit": "4pcs, Price",
      "price": "1.99"
    },
    {
      "name": "Organic Bananas",
      "icon": "assets/img/banana.png",
      "qty": "1",
      "unit": "7pcs, Price",
      "price": "1.99"
    },
    {
      "name": "Ginger",
      "icon": "assets/img/ginger.png",
      "qty": "1",
      "unit": "250gm, Price",
      "price": "3.99"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title: Text(
            "Favorites",
            style: TextStyle(
                color: TColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                itemCount: listArr.length,
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                itemBuilder: (context, index) {
                  var pObj = listArr[index] as Map? ?? {};
                  return FavoriteRow(
                    pObj: pObj,
                    onPressed: () {},
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RoundButton(
                    title: "Add All To Cart",
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
