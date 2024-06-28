
import 'package:flutter/material.dart';

class A039_CircularProgessIndicator extends StatefulWidget {
  const A039_CircularProgessIndicator({Key? key}) : super(key: key);

  @override
  State<A039_CircularProgessIndicator> createState() => _A039_CircularProgessIndicatorState();
}

class _A039_CircularProgessIndicatorState extends State<A039_CircularProgessIndicator> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.orangeAccent,
      ),
    );
  }
}
