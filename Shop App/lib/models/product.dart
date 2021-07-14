import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shopapp/models/http_exception.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavourite;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavourite = false});

  Future<void> toggleFavouriteStatus(String token) async {
    var url = Uri.parse(
        'https://learnflutter-38f47-default-rtdb.firebaseio.com/products/$id.json?auth=$token');
    final oldStatus = isFavourite;
    isFavourite = !isFavourite;
    notifyListeners();
    try {
      final response = await http.patch(
        url,
        body: json.encode(
          {
            'isFavourite': isFavourite,
          },
        ),
      );
      if (response.statusCode >= 400) {
        isFavourite = oldStatus;
        notifyListeners();
        throw HttpException('Error');
      }
    } catch (error) {
      isFavourite = oldStatus;
      notifyListeners();
    }
  }
}
