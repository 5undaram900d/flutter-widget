
import 'dart:ui';

import 'package:flutter/material.dart';

class A025_Backdropfilter extends StatefulWidget {
  const A025_Backdropfilter({Key? key}) : super(key: key);

  @override
  State<A025_Backdropfilter> createState() => _A025_BackdropfilterState();
}

class _A025_BackdropfilterState extends State<A025_Backdropfilter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text('0' * 10000, style: TextStyle(color: Colors.green, fontSize: 20),),
        Center(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 6.0,        // represent the direction of blur
                sigmaY: 6.0,        // represent the direction of blur
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                child: Text('Blur'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
