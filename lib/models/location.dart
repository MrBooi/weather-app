import 'package:flutter/foundation.dart';

class Location {
  final double latitude;
  final double longitude;
  final String address;

  Location(
      {@required this.latitude,
      @required this.longitude,
      @required this.address});
}

class WeatherLocation {
  final String id;
  final Location location;

  WeatherLocation({@required this.id, @required this.location});
}
