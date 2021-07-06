import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import '../widgets/title_with_more_button.dart';
import '../widgets/title_with_custom_underline.dart';
import '../widgets/header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //it will provide us total height of screen
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          TitleWithMoreButton(
            text: 'More',
            press: () {},
          ),
        ],
      ),
    );
  }
}
