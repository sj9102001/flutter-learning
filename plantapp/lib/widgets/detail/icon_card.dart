import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant.dart';

class IconCard extends StatelessWidget {
  final String icon;

  IconCard(this.icon);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:
          EdgeInsets.only(left: kDefaultPadding * 0.5, top: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding * 0.5),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22)),
          BoxShadow(
              offset: Offset(-15, -15), blurRadius: 22, color: Colors.white)
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
