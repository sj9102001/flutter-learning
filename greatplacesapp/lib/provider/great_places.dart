import 'dart:io';

import 'package:flutter/material.dart';

import '../models/place.dart';

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
  }
}
