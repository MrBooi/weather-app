import 'package:flutter/material.dart';

Widget headerTitle(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).accentColor),
        textAlign: TextAlign.left,
      ),
    ),
  );
}
