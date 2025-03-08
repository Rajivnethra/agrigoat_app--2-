import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';

class SectionView extends StatelessWidget {
  final String title;
  final bool isShowSeeAllButton;
  final VoidCallback onPressed;

  const SectionView(
      {super.key,
      required this.title,
      this.isShowSeeAllButton = true,
      required this.onPressed,
      required EdgeInsets padding});

  @override
  Widget build(BuildContext context) {
    var padding;
    return Container(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: TColor.primaryText,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "See All",
              style: TextStyle(
                  color: TColor.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
