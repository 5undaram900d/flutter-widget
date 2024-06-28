
import 'package:flutter/material.dart';

class A003_AboutListStyle extends StatefulWidget {
  const A003_AboutListStyle({Key? key}) : super(key: key);

  @override
  State<A003_AboutListStyle> createState() => _A003_AboutListStyleState();
}

class _A003_AboutListStyleState extends State<A003_AboutListStyle> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationName: "AboutListTile",
          applicationVersion: 'version 1.0.0',
          applicationLegalese: 'legalese',
          aboutBoxChildren: [
            Text("This is the text created by me"),
          ],
        ),
      ),
    );
  }
}
