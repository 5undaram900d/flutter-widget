
import 'package:flutter/material.dart';

class A034_Checkbox extends StatefulWidget {
  const A034_Checkbox({Key? key}) : super(key: key);

  @override
  State<A034_Checkbox> createState() => _A034_CheckboxState();
}

class _A034_CheckboxState extends State<A034_Checkbox> {

  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.orangeAccent,
          tristate: true,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          },
        ),
      ),
    );
  }
}
