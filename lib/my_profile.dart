import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {

  var nameFromHome;

  MyProfile(this.nameFromHome);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        color: Colors.blueGrey.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome $nameFromHome",style: TextStyle(
                fontSize: 34,
                color: Colors.white,
              ),),

              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);

                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),



    );
  }


}