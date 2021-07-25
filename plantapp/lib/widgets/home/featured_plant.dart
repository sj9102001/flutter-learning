import 'package:flutter/material.dart';

import '../../constant.dart';

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: 'assets/images/image_1.png',
            press: () {},
          ),
          FeaturePlantCard(
            image: 'assets/images/image_1.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  final String image;
  final Function press;
  FeaturePlantCard({required this.image, required this.press});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("assets/images/image_1.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
