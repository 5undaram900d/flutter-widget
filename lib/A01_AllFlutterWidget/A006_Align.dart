
import 'package:flutter/material.dart';

class A006_Align extends StatefulWidget {
  const A006_Align({Key? key}) : super(key: key);

  @override
  State<A006_Align> createState() => _A006_AlignState();
}

class _A006_AlignState extends State<A006_Align> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Align(
          alignment: Alignment.topRight,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
