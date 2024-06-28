
import 'package:flutter/material.dart';

class A027_Baseline extends StatefulWidget {
  const A027_Baseline({Key? key}) : super(key: key);

  @override
  State<A027_Baseline> createState() => _A027_BaselineState();
}

class _A027_BaselineState extends State<A027_Baseline> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
        child: Baseline(
          baseline: 50,
          baselineType: TextBaseline.alphabetic,
          child: FlutterLogo(size: 50,),
        ),
      ),
    );
  }
}
