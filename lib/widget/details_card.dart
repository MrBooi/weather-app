import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String header;
  final String subHeader;
  final IconData icon;

  DetailsCard({this.header, this.subHeader, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            trailing: Text(
              subHeader,
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 18),
            ),
            title: Text(
              header,
              style:
                  TextStyle(color: Theme.of(context).accentColor, fontSize: 18),
            ),
            leading: Icon(
              Icons.cloud,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}
