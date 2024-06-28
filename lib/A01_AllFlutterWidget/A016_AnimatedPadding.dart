
import 'package:flutter/material.dart';

class A016_AnimatedPadding extends StatefulWidget {
  const A016_AnimatedPadding({Key? key}) : super(key: key);

  @override
  State<A016_AnimatedPadding> createState() => _A016_AnimatedPaddingState();
}

class _A016_AnimatedPaddingState extends State<A016_AnimatedPadding> {

  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.orangeAccent
          ),
          onPressed: (){
            setState(() {
              padValue = padValue==0 ? 100 : 0;
            });
          },
          child: Text('Change Padding'),
        ),
        Text('Padding = $padValue', style: TextStyle(fontSize: 25),),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.orangeAccent,
          ),
        )
      ],
    );
  }
}
