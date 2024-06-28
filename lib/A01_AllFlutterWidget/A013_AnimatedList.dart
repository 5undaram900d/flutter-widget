
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class A013_AnimatedList extends StatefulWidget {
  const A013_AnimatedList({Key? key}) : super(key: key);

  @override
  State<A013_AnimatedList> createState() => _A013_AnimatedListState();
}

class _A013_AnimatedListState extends State<A013_AnimatedList> {

  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0, duration: Duration(seconds: 1),
    );
  }

  void _removeItem(int index){
    _key.currentState!.removeItem(
      index, (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text("Deleted", style: TextStyle(fontSize: 24),),
            ),
          ),
        );
      },
      duration: Duration(milliseconds: 300),
    );
    _items.remove(index);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 10,),
          IconButton(onPressed: _addItem, icon: Icon(Icons.add)),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index, animation){
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(_items[index], style: TextStyle(fontSize: 24),),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: (){
                          _removeItem(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
