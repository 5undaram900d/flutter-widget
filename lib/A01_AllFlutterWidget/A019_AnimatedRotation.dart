
import 'package:flutter/material.dart';

class A019_AnimatedRotation extends StatefulWidget {
  const A019_AnimatedRotation({Key? key}) : super(key: key);

  @override
  State<A019_AnimatedRotation> createState() => _A019_AnimatedRotationState();
}

class _A019_AnimatedRotationState extends State<A019_AnimatedRotation> {

  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: Duration(seconds: 1),
              child: FlutterLogo(size: 100,),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent
            ),
            onPressed: (){
              setState(() {
                turns += 1/4;
              });
            },
            child: Text('Rotate Logo'),
          )
        ],
      ),
    );
  }
}
