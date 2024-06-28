
import 'package:flutter/material.dart';

class A028_01_BlockSemantics extends StatefulWidget {
  const A028_01_BlockSemantics({Key? key}) : super(key: key);

  @override
  State<A028_01_BlockSemantics> createState() => _A028_01_BlockSemanticsState();
}

class _A028_01_BlockSemanticsState extends State<A028_01_BlockSemantics> {

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,          // this is use for debugging
      debugShowCheckedModeBanner: false,
      title: 'BlockSemantics',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 188, 32, 47),
        primarySwatch: Colors.blueGrey
      ),

      home: SizedBox(
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
      ),
    );
  }
}
