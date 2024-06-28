
import 'package:flutter/material.dart';

class A014_AnimatedModalBarrier extends StatefulWidget {
  const A014_AnimatedModalBarrier({Key? key}) : super(key: key);

  @override
  State<A014_AnimatedModalBarrier> createState() => _A014_AnimatedModalBarrierState();
}

class _A014_AnimatedModalBarrierState extends State<A014_AnimatedModalBarrier> with SingleTickerProviderStateMixin {

  bool _isPressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {

    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );

    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 250,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: (){
                      setState(() {
                        _isPressed = true;
                      });
                      _animationController.reset();
                      _animationController.forward();
                      Future.delayed(Duration(seconds: 3), (){
                        setState(() {
                          _isPressed = false;
                        });
                      });
                    },
                    child: Text('Press'),
                  ),
                  if(_isPressed) _animatedModalBarrier,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
