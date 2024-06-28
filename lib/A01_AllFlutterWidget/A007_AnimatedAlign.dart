
import 'package:flutter/material.dart';

class A007_AnimatedAlign extends StatefulWidget {
  const A007_AnimatedAlign({Key? key}) : super(key: key);

  @override
  State<A007_AnimatedAlign> createState() => _A007_AnimatedAlignState();
}

class _A007_AnimatedAlignState extends State<A007_AnimatedAlign> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.bottomLeft : Alignment.topRight,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 50,),
          ),
        ),
      ),
    );
  }
}
