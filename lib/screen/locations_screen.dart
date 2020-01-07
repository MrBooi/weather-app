import 'package:flutter/material.dart';
import 'package:weather_app/screen/add_location_screen.dart';
import 'package:weather_app/widget/location_card.dart';

class LocationsScreen extends StatelessWidget {
  static const routeName = '/locations';
  const LocationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Locations'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddLocationScreen.routeName);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LocationCard(
                location: 'Crossroads',
                address: 'Western Cape, South Africa',
                weatherDegree: '29',
                windy: '31/17',
              ),
            )
          ],
        ),
      ),
    );
  }
}
