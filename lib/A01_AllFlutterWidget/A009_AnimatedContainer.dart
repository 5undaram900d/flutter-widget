
import 'package:flutter/material.dart';

class A009_AnimatedContainer extends StatefulWidget {
  const A009_AnimatedContainer({Key? key}) : super(key: key);

  @override
  State<A009_AnimatedContainer> createState() => _A009_AnimatedContainerState();
}

class _A009_AnimatedContainerState extends State<A009_AnimatedContainer> {

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
        child: AnimatedContainer(
          width: selected ? 200 : 100,
          height: selected ? 100 : 200,
          color: selected ? Colors.blueGrey : Colors.white,
          alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
          child: FlutterLogo(size: 70,),
        ),
      ),
    );
  }
}
