import 'package:flutter/material.dart';
import '../helpers/current_date.dart' as date;
class CurrentDate extends StatelessWidget {
  const CurrentDate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Container(
      child: 
      Text(
        date.CurrentDate.todaysDate(),
        style: TextStyle(fontSize: 20, color: Colors.grey),
      ),
    );
  }
}
