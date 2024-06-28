
import 'package:flutter/material.dart';

class A020_AnimatedSize extends StatefulWidget {
  const A020_AnimatedSize({Key? key}) : super(key: key);

  @override
  State<A020_AnimatedSize> createState() => _A020_AnimatedSizeState();
}

class _A020_AnimatedSizeState extends State<A020_AnimatedSize> {

  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _size = (_size == 300) ? 100 : 300;
        });
      },
      child: Container(
        color: Colors.white,
        child: AnimatedSize(
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 1),
          child: Icon(Icons.android_outlined, size: _size,),
        ),
      ),
    );
  }
}


