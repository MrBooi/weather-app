import 'package:flutter/material.dart';
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

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key key}) : super(key: key);

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
            UserLoaction(),
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
