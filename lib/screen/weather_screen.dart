import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:weather_app/helpers/location_helper.dart';
import 'package:weather_app/screen/daily_screen.dart';
import 'package:weather_app/screen/details_screen.dart';
import 'package:weather_app/screen/locations_screen.dart';
import 'package:weather_app/screen/map_screen.dart';
import 'package:weather_app/screen/precipition_screen.dart';
import 'package:weather_app/ui/header_text.dart';
import 'package:weather_app/widget/current_weather.dart';
import 'package:weather_app/widget/user_location.dart';

import 'hourly_screen.dart';
import 'life_index_screen.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String _address;
  _getCurrentLocation() async {
    try {
      final locData = await Location().getLocation();
      final address = await LocationHelper.getPlaceAddress(
          locData.latitude, locData.longitude);
      setState(() {
        _address = address;
      });
    } catch (e) {}
  }

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Locations',
              style:
                  TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
            ),
            onPressed: () {
              Navigator.pushNamed(context, LocationsScreen.routeName);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => MapScreen()));
            },
          ),
        ],
      ),
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            UserLoaction(
              address: _address,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  CurrentWeather(),
                  SizedBox(),
                  PrecipitionScreen(),
                  headerTitle('Hourly', context),
                  HourlyScreen(),
                  headerTitle('Daily', context),
                  DailyScreen(),
                  headerTitle('Details', context),
                  DetailsScreen(),
                  headerTitle('Life index', context),
                  LifeIndexScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
