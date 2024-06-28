
import 'package:flutter/material.dart';

class A018_AnimatedPositioned extends StatefulWidget {
  const A018_AnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<A018_AnimatedPositioned> createState() => _A018_AnimatedPositionedState();
}

class _A018_AnimatedPositionedState extends State<A018_AnimatedPositioned> {
  
  bool selected = false;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 350,
      child: Stack(
        children: [
          AnimatedPositioned(
            width: selected ? 200 : 50,
            height: selected ? 50 : 200,
            top: selected ? 50 : 150,
            curve: Curves.bounceInOut,
            duration: Duration(seconds: 2),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
            ), 
          )
        ],
      ),
    );
  }
}
