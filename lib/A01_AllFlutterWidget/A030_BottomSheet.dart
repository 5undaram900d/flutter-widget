
import 'package:flutter/material.dart';

class A030_BottomSheet extends StatefulWidget {
  const A030_BottomSheet({Key? key}) : super(key: key);

  @override
  State<A030_BottomSheet> createState() => _A030_BottomSheetState();
}

class _A030_BottomSheetState extends State<A030_BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Modal Bottom Sheet'),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                child: Center(
                  child: ElevatedButton(
                    child: Text('Close'),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
