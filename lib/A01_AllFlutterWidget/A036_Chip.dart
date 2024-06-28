
import 'package:flutter/material.dart';

class A036_Chip extends StatefulWidget {
  const A036_Chip({Key? key}) : super(key: key);

  @override
  State<A036_Chip> createState() => _A036_ChipState();
}

class _A036_ChipState extends State<A036_Chip> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Chip(
        label: Text('This is a Flutter Chip'),
        onDeleted: (){
          debugPrint("Do something");
        },
      ),
    );
  }
}
