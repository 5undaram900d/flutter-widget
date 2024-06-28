
import 'package:flutter/material.dart';

class A017_AnimatedPhysicalModel extends StatefulWidget {
  const A017_AnimatedPhysicalModel({Key? key}) : super(key: key);

  @override
  State<A017_AnimatedPhysicalModel> createState() => _A017_AnimatedPhysicalModelState();
}

class _A017_AnimatedPhysicalModelState extends State<A017_AnimatedPhysicalModel> {

  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 10.0,
            color: Colors.white,
            shadowColor: Colors.tealAccent,
            duration: Duration(milliseconds: 300),
            child: SizedBox(
              height: 120,
              width: 120,
              child: Icon(Icons.android_outlined),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              setState(() {
                _isFlat = !_isFlat;
              });
            },
            child: _isFlat ? Text('Show shadow') : Text('Hide shadow'),
          ),
        ],
      ),
    );
  }
}
