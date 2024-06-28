
import 'package:flutter/material.dart';

class A035_CheckboxListtile extends StatefulWidget {
  const A035_CheckboxListtile({Key? key}) : super(key: key);

  @override
  State<A035_CheckboxListtile> createState() => _A035_CheckboxListtileState();
}

class _A035_CheckboxListtileState extends State<A035_CheckboxListtile> {

  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: CheckboxListTile(
          title: Text('Checkbox List Tile'),
          value: _isChecked,
          onChanged: (bool? newValue){
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle: Text('this is subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
