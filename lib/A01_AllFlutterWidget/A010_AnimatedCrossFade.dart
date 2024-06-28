
import 'package:flutter/material.dart';

class A010_AnimatedCrossFade extends StatefulWidget {
  const A010_AnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<A010_AnimatedCrossFade> createState() => _A010_AnimatedCrossFadeState();
}

class _A010_AnimatedCrossFadeState extends State<A010_AnimatedCrossFade> {
  
  bool _bool = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: (){
            setState(() {
              _bool = !_bool;
            });
          }, child: Text('Switch', style: TextStyle(color: Colors.white),),
        ),
        AnimatedCrossFade(
          firstChild: Image.network("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", width: double.infinity,), 
          secondChild: Image.network("https://images.unsplash.com/photo-1613323593608-abc90fec84ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", width: double.infinity,),
          crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        ),
      ],
    );
  }
}
