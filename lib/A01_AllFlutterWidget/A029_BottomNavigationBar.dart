
import 'package:flutter/material.dart';

class A029_BottomNavigationBar extends StatefulWidget {
  const A029_BottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<A029_BottomNavigationBar> createState() => _A029_BottomNavigationBarState();
}

class _A029_BottomNavigationBarState extends State<A029_BottomNavigationBar> {

  int _currentindex = 0;
  List<Widget> body = const [ Icon(Icons.home, size: 200,), Icon(Icons.menu, size: 200,), Icon(Icons.person, size: 200,) ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (newIndex) {
          setState(() {
            _currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
