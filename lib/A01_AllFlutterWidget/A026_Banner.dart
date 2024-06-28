
import 'package:flutter/material.dart';

class A026_Banner extends StatefulWidget {
  const A026_Banner({Key? key}) : super(key: key);

  @override
  State<A026_Banner> createState() => _A026_BannerState();
}

class _A026_BannerState extends State<A026_Banner> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: ClipRRect(
          child: Banner(
            message: "25% off",                   // required in the banner widget
            location: BannerLocation.topEnd,      // required in the banner widget
            color: Colors.pink,                  // default color is red
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network('https://images.unsplash.com/photo-1595147389795-37094173bfd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Flutter Banner', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent
                          ),
                          onPressed: (){},
                          child: Text('Very Good'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
