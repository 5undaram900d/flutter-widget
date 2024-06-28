
import 'package:flutter/material.dart';

class A023_AspectRatio extends StatefulWidget {
  const A023_AspectRatio({Key? key}) : super(key: key);

  @override
  State<A023_AspectRatio> createState() => _A023_AspectRatioState();
}

class _A023_AspectRatioState extends State<A023_AspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      width: double.infinity,
      height: 150.0,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(color: Colors.blueGrey,),
      ),
    );
  }
}
