import 'package:flutter/material.dart';
import 'package:weather_app/screen/add_location_screen.dart';
import 'package:weather_app/screen/locations_screen.dart';
import './screen/weather_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.black,
          accentColor: Colors.white,
          primaryColor: Colors.black),
      home: WeatherScreen(),
      routes: {
        LocationsScreen.routeName: (ctx) => LocationsScreen(),
        AddLocationScreen.routeName:(ctx)=> AddLocationScreen()
      },
    );
  }
}
