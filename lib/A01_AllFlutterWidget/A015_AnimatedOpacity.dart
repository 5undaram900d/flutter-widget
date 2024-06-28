
import 'package:flutter/material.dart';

class A015_AnimatedOpacity extends StatefulWidget {
  const A015_AnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<A015_AnimatedOpacity> createState() => _A015_AnimatedOpacityState();
}

class _A015_AnimatedOpacityState extends State<A015_AnimatedOpacity> {

  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 2),
            child: FlutterLogo(size: 50,),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                opacityLevel = opacityLevel==0 ? 1.0 : 0.0;
              });
            },
            child: Text('Fade logo'),
          )
        ],
      ),
    );
  }
}
