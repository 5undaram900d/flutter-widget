
import 'package:flutter/material.dart';

class A038_CircleAvatar extends StatefulWidget {
  const A038_CircleAvatar({Key? key}) : super(key: key);

  @override
  State<A038_CircleAvatar> createState() => _A038_CircleAvatarState();
}

class _A038_CircleAvatarState extends State<A038_CircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.orangeAccent,
      radius: 55,
      backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1666901328734-3c6eb9b6b979?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
      child: Text("It is a child", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),
    );
  }
}
