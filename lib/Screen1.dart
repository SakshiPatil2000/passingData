import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:splashscreen/main.dart';

import 'main.dart';

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(

                context,MaterialPageRoute(builder: (context) => MyHomePage(title: 'Welcome Sakshi'),)
            );

          },
            child: Text('Next'),),
        ],
      )
      ,

    );
  }


}