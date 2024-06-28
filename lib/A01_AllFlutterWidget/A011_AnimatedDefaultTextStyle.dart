
import 'package:flutter/material.dart';

class A011_AnimatedDefaultTextStyle extends StatefulWidget {
  const A011_AnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  State<A011_AnimatedDefaultTextStyle> createState() => _A011_AnimatedDefaultTextStyleState();
}

class _A011_AnimatedDefaultTextStyleState extends State<A011_AnimatedDefaultTextStyle> {

  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 300),
            style: TextStyle(fontSize: _fontSize, color: _color, fontWeight: FontWeight.bold),
            child: Text("Hahaha"),
          ),
        ),
        TextButton(
          onPressed: (){
            setState(() {
              _fontSize = _first ? 80 : 60;
              _color = _first ? Colors.white : Colors.blue;
              _first = !_first;
            });
          },
          child: Text("Change"),
        )
      ],
    );
  }
}
