
import 'package:flutter/material.dart';

class A012_AnimatedIcon extends StatefulWidget {
  const A012_AnimatedIcon({Key? key}) : super(key: key);

  @override
  State<A012_AnimatedIcon> createState() => _A012_AnimatedIconState();
}

class _A012_AnimatedIconState extends State<A012_AnimatedIcon> with TickerProviderStateMixin {

  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {

    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {

    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          if(_isPlay == false){
            _controller.forward();
            _isPlay = true;
          }
          else{
            _controller.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _controller,
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
