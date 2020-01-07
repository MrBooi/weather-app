import 'package:flutter/material.dart';
import 'package:weather_app/widget/details_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        children: <Widget>[
          DetailsCard(
            header: 'UV Index',
            subHeader: 'Very High',
          ),
          Container(
            width: 340,
            child: Divider(
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
