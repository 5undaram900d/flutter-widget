
import 'package:flutter/material.dart';

class A024_AutoComplete extends StatefulWidget {
  const A024_AutoComplete({Key? key}) : super(key: key);

  @override
  State<A024_AutoComplete> createState() => _A024_AutoCompleteState();
}

class _A024_AutoCompleteState extends State<A024_AutoComplete> {

  static const List<String> listItems = ['apple', 'Banana', 'coconut', 'Abhishek', 'king', 'don', 'ram', 'shyam'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AutoComplete'),
        centerTitle: true,
      ),
      body: Material(
        child: Autocomplete <String>(
          optionsBuilder: (TextEditingValue textEditingValue){
            if(textEditingValue.text == '') {
              return Iterable.empty();
            }
            return listItems.where((item) => item.toLowerCase().contains(textEditingValue.text.toLowerCase()));
          },
          onSelected: (item) => debugPrint('The $item was selected'),
        ),
      ),
    );
  }
}
