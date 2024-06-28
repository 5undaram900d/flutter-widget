
import 'package:flutter/material.dart';

class A032_Card extends StatefulWidget {
  const A032_Card({Key? key}) : super(key: key);

  @override
  State<A032_Card> createState() => _A032_CardState();
}

class _A032_CardState extends State<A032_Card> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 20,
        color: Colors.orangeAccent,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 8,),
              Text('This is a Flutter Card'),
              TextButton(onPressed: (){}, child: Text('Press'),)
            ],
          ),
        ),
      ),
    );
  }
}
