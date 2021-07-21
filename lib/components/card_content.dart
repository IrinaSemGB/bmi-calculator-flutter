import 'package:flutter/material.dart';
import '../constants.dart';

class CardContent extends StatelessWidget {

  final IconData topCardsIcon;
  final String topCardsLabel;

  CardContent({required this.topCardsIcon, required this.topCardsLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          topCardsIcon,
          size: 80.0,
        ),
        SizedBox(
            height: 15.0
        ),
        Text(
          topCardsLabel,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}