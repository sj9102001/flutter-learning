import 'dart:io'; //to work with files

class PlaceLocation {
  double latitude;
  double longitude;
  String address;

  PlaceLocation(this.latitude, this.longitude, this.address);
}

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image; //import 'dart:io';

  Place(
      {required this.id,
      required this.title,
      required this.location,
      required this.image});
}
