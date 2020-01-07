import 'package:flutter/material.dart';

class PrecipitionScreen extends StatelessWidget {
  const PrecipitionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.cloud,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Precipitation',
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 20),
              )
            ],
          ),
          Container(
            height: 60,
            child: VerticalDivider(
              color: Theme.of(context).accentColor,
              
            ),
          ),
           Icon(
                Icons.cloud,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'UV index',
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 20),
              )
        ],
      ),
    );
  }
}
