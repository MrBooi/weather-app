import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String location;
  final String address;
  final String weatherDegree;
  final String windy;
  final iscurrentLocation;
  const LocationCard(
      {this.location,
      this.address,
      this.weatherDegree,
      this.windy,
      this.iscurrentLocation = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          100, // TODO height will be calculated based on nummber of locations added,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              iscurrentLocation
                  ? Icon(
                      Icons.location_on,
                      color: Theme.of(context).accentColor,
                    )
                  : null,
              Text(
                location,
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 18),
              )
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                address,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Text(
                'Tue, 07 January 21:38',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
          trailing: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    weatherDegree,
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  )
                ],
              ),
              Text(
                windy,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
