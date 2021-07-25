import 'package:flutter/material.dart';
import 'package:plantapp/screens/details_screen.dart';
import 'package:plantapp/widgets/home/recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            press: () {
              Navigator.of(context).pushNamed(DetailScreen.routeName);
            },
            image: "assets/images/image_1.png",
            country: "Russia",
            title: "Samantha",
            price: 440,
          ),
          RecommendedPlantCard(
            press: () {
              Navigator.of(context).pushNamed(DetailScreen.routeName);
            },
            image: "assets/images/image_2.png",
            country: "Russia",
            title: "Angelica",
            price: 440,
          ),
          RecommendedPlantCard(
            press: () {
              Navigator.of(context).pushNamed(DetailScreen.routeName);
            },
            image: "assets/images/image_2.png",
            country: "Russia",
            title: "Samantha",
            price: 440,
          ),
        ],
      ),
    );
  }
}
