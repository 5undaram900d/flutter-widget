
import 'package:flutter/material.dart';

class A028_02_BlockSemantics extends StatefulWidget {
  const A028_02_BlockSemantics({Key? key}) : super(key: key);

  @override
  State<A028_02_BlockSemantics> createState() => _A028_02_BlockSemanticsState();
}

class _A028_02_BlockSemanticsState extends State<A028_02_BlockSemantics> {

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: 500,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 50,),
            OutlinedButton(
              onPressed: (){
                setState(() {
                  isShow = true;
                });
              },
              child: Text('Click'),
            ),

            if(isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('This is a card'),
                        TextButton(
                          onPressed: (){
                            setState(() {
                              isShow = false;
                            });
                          },
                          child: Text('Close'),
                        )
                      ],
                    ),
                  ),
                ),
              )

          ],
        ),
      ),
    );
  }
}
