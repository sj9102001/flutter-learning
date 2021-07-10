import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/title_with_custom_underline.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String text;
  final Function press;

  TitleWithMoreButton({required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(text),
          FlatButton(
            onPressed: () => press,
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
