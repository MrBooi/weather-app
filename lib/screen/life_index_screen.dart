import 'package:flutter/material.dart';
import 'package:weather_app/widget/details_card.dart';

class LifeIndexScreen extends StatelessWidget {
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
            header: 'Driving difficulty',
            subHeader: 'None',
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
