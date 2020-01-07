import 'package:flutter/material.dart';
import 'package:weather_app/screen/map_screen.dart';

class AddLocationScreen extends StatefulWidget {
  static const routeName = '/add-location';
  AddLocationScreen({Key key}) : super(key: key);

  @override
  _AddLocationScreenState createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => MapScreen(),
                ),
              );
            },
            child: Text(
              'Map',
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 18),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Enter a location name.',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
    );
  }
}
