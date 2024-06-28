
import 'package:flutter/material.dart';

class A022_AppBar extends StatefulWidget {
  const A022_AppBar({Key? key}) : super(key: key);

  @override
  State<A022_AppBar> createState() => _A022_AppBarState();
}

class _A022_AppBarState extends State<A022_AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications),)
        ],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25),)
        ),
      ),
      body: Center(
        child: Text('Body', style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
