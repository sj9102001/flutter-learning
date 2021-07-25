import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/widgets/detail/icon_card.dart';

import '../../constant.dart';

class ImageAndIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: [
                      IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                      ),
                      Spacer(),
                      IconCard('assets/icons/sun.svg'),
                      IconCard('assets/icons/icon_2.svg'),
                      IconCard('assets/icons/icon_3.svg'),
                      IconCard('assets/icons/icon_4.svg'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.3)),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    bottomLeft: Radius.circular(64)),
                image: DecorationImage(
                    image: AssetImage('assets/images/img.png'),
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
