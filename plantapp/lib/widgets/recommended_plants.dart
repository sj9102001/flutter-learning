import 'package:flutter/material.dart';
import '../widgets/recommended_plant_card.dart';

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
            press: () {},
            image: "assets/images/image_1.png",
            country: "Russia",
            title: "Samantha",
            price: 440,
          ),
          RecommendedPlantCard(
            press: () {},
            image: "assets/images/image_2.png",
            country: "Russia",
            title: "Angelica",
            price: 440,
          ),
          RecommendedPlantCard(
            press: () {},
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
