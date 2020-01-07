import 'package:flutter/material.dart';

class CurrentDate extends StatelessWidget {
  const CurrentDate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Container(
      child: 
      Text(
        'Tue, 07 January 18:42',
        style: TextStyle(fontSize: 20, color: Colors.grey),
      ),
    );
  }
}
