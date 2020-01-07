import 'package:flutter/material.dart';

import 'current_date.dart';

class UserLoaction extends StatelessWidget {
  const UserLoaction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.place,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Cape Town',
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CurrentDate(),
        ],
      ),
    );
  }
}
