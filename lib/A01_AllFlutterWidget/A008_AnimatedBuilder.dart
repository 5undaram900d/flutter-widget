
import 'package:flutter/material.dart';

import 'dart:math' as math;

class A008_AnimatedBuilder extends StatefulWidget {
  const A008_AnimatedBuilder({Key? key}) : super(key: key);

  @override
  State<A008_AnimatedBuilder> createState() => _A008_AnimatedBuilderState();
}

class _A008_AnimatedBuilderState extends State<A008_AnimatedBuilder> with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: FlutterLogo(size: 100,),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
