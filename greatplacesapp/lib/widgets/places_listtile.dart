import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/great_places.dart';

class PlacesListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final placeData = Provider.of<GreatPlaces>(context);
    final placesList = placeData.items;

    print(placesList);
    return placeData.items.length <= 0
        ? Center(
            child: Text('No places added yet'),
          )
        : Container(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Container(
                  // margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    // leading: Image.file(placesList[index].image),
                    leading: CircleAvatar(
                      backgroundImage: FileImage(placesList[index].image),
                    ),
                    title: Text(placesList[index].title),
                  ),
                );
              },
              itemCount: placeData.items.length,
            ),
          );
  }
}
