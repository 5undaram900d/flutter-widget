
import 'package:flutter/material.dart';

class A021_AnimatedSwitcher extends StatefulWidget {
  const A021_AnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<A021_AnimatedSwitcher> createState() => _A021_AnimatedSwitcherState();
}

class _A021_AnimatedSwitcherState extends State<A021_AnimatedSwitcher> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: Text('$_count', style: TextStyle(fontSize: 30), key: ValueKey(_count),),   // key provide a animated effect
            transitionBuilder: (Widget child, Animation<double> animation) {    // provide a fade animation
              return ScaleTransition(scale: animation, child: child,);
            },
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                _count += 1;
              });
            },
            child: Text('Add'),
          )
        ],
      ),
    );
  }
}
