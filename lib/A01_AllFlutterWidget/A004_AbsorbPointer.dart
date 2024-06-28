
import 'package:flutter/material.dart';

class A004_AbsorbPointer extends StatefulWidget {
  const A004_AbsorbPointer({Key? key}) : super(key: key);

  @override
  State<A004_AbsorbPointer> createState() => _A004_AbsorbPointerState();
}

class _A004_AbsorbPointerState extends State<A004_AbsorbPointer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: (){},
              child: null,
            ),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(     // It is prevent to click the button
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade200,
                ),
                onPressed: (){},
                child: null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
