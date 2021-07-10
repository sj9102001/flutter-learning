import 'package:flutter/material.dart';
import 'package:plantapp/widgets/featured_plant.dart';

import '../widgets/title_with_more_button.dart';
import '../widgets/header_with_search_box.dart';
import '../widgets/recommended_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //it will provide us total height of screen
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          TitleWithMoreButton(text: 'More', press: () {}),
          RecommendedPlants(),
          TitleWithMoreButton(text: 'Featured Plants', press: () {}),
          FeaturedPlant()
        ],
      ),
    );
  }
}
