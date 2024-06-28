
import 'package:flutter/material.dart';

class A040_ClipOval extends StatefulWidget {
  const A040_ClipOval({Key? key}) : super(key: key);

  @override
  State<A040_ClipOval> createState() => _A040_ClipOvalState();
}

class _A040_ClipOvalState extends State<A040_ClipOval> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        clipper: CustomClip(),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip (Size size) {
    return Rect.fromLTWH(0, 0, size.width-15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
