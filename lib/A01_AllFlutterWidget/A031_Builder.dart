
import 'package:flutter/material.dart';

class A031_Builder extends StatefulWidget {
  const A031_Builder({Key? key}) : super(key: key);

  @override
  State<A031_Builder> createState() => _A031_BuilderState();
}

class _A031_BuilderState extends State<A031_Builder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
  builder: (context) {
    return     Text('Text with Theme', style: Theme.of(context).textTheme.displayLarge,);
  }
);
