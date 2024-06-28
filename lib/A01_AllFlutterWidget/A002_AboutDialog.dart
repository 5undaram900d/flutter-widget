
import 'package:flutter/material.dart';

class A002_AboutDialog extends StatefulWidget {
  const A002_AboutDialog({Key? key}) : super(key: key);

  @override
  State<A002_AboutDialog> createState() => _A002_AboutDialogState();
}

class _A002_AboutDialogState extends State<A002_AboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show About Dialog'),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationName: 'Flutter AboutDialog',
              applicationVersion: 'version 1.0.0',
              applicationLegalese: 'Legalese',
              children: [
                Text('This is a text created by me'),
              ],
            ),
          );
        },
      ),
    );
  }
}
