import 'package:flutter/material.dart';

import '../../constant.dart';

class RecommendedPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function press;

  RecommendedPlantCard(
      {required this.press,
      required this.country,
      required this.image,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2,
      ),
      width: size.width * 0.35,
      child: GestureDetector(
        onTap: () => press(),
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Image.asset(image),
              Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(10),
                //     bottomRight: Radius.circular(10),
                //   ),
                //   boxShadow: [
                //     BoxShadow(
                //       offset: Offset(0, 10),
                //       color: kPrimaryColor.withOpacity(0.5),
                //       blurRadius: 100,
                //     )
                //   ],
                // ),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
