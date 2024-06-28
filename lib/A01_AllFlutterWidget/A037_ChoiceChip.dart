
import 'package:flutter/material.dart';

class A037_ChoiceChip extends StatefulWidget {
  const A037_ChoiceChip({Key? key}) : super(key: key);

  @override
  State<A037_ChoiceChip> createState() => _A037_ChoiceChipState();
}

class _A037_ChoiceChipState extends State<A037_ChoiceChip> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: ChoiceChip(
          label: Text("Choice Chip"),
          selected: isSelected,
          selectedColor: Colors.orangeAccent,
          onSelected: (newState) {
            setState(() {
              isSelected = newState;
            });
          },
        ),
      ),
    );
  }
}
