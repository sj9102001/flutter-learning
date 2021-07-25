import 'package:flutter/material.dart';

import '../../constant.dart';

class TitleAndPrice extends StatelessWidget {
  final String title;
  final String country;
  final String price;

  TitleAndPrice(
      {required this.country, required this.price, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '$country',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Text('\$$price', style: TextStyle(color: kPrimaryColor, fontSize: 20))
      ],
    );
  }
}
