
import 'package:flutter/material.dart';

class A033_Center extends StatefulWidget {
  const A033_Center({Key? key}) : super(key: key);

  @override
  State<A033_Center> createState() => _A033_CenterState();
}

class _A033_CenterState extends State<A033_Center> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.orangeAccent,
          child: Center(
            heightFactor: 5,
            child: Text('Center'),
          ),
        )
      ],
    );
  }
}
