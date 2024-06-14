import 'package:flutter/material.dart';
import 'package:passingdata/splash_screen.dart';

import 'my_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var nameController= TextEditingController();


    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dashboard Screen',
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ) ,
              ),
              SizedBox(height: 11,),

              TextField(
                controller: nameController,
              ),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: (){

                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfile(nameController.text.toString()) ),);
              },


                  child: Text('My Profile'))
            ],

          ),

        ),
      )
    );
  }
}
