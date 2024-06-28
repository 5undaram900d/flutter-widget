
import 'package:flutter/material.dart';

class A005_AlertDialog extends StatefulWidget {
  const A005_AlertDialog({Key? key}) : super(key: key);

  @override
  State<A005_AlertDialog> createState() => _A005_AlertDialogState();
}

class _A005_AlertDialogState extends State<A005_AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Show Alert Dialog"),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                )
              ],
              title: Text('AlertDialog'),
              contentPadding: EdgeInsets.all(20),
              content: Text('This is the Alert Dialog'),
            ),
          );
        },
      ),
    );
  }
}
