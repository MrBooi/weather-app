import 'package:flutter/material.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.wb_sunny,
                size: 50,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '29',
                style: TextStyle(
                  fontSize: 45,
                  color: Theme.of(context).accentColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('31/17 Feels like 30',
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).accentColor,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            'Fair',
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
