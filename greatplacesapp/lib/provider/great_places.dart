import 'dart:io';

import 'package:flutter/material.dart';

import '../models/place.dart';
import '../helpers/db_helper.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      image: image,
      title: title,
      id: DateTime.now().toString(),
      location: PlaceLocation(0, 0, ''),
    );
    _items.add(newPlace);
    notifyListeners();
    DBHelper.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DBHelper.getData('user_places');
    print(dataList);
    _items = dataList
        .map((item) => Place(
            id: item['id'],
            image: File(item['image']),
            location: PlaceLocation(0, 0, ''),
            title: item['title']))
        .toList();
  }
}
