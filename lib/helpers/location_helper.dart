import 'dart:convert';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyDliNiQuKc8bs3Zz2_bkzBJAJTYypDSuYg';

class LocationHelper {
  static Future<String> getPlaceAddress(
      double latitude, double longitude) async {
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$GOOGLE_API_KEY';
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['address_components'][2]
        ['short_name'];
    // return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
