import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('লেনদেন বাতিল'),
  centerTitle: true,
  foregroundColor: Colors.white,
  backgroundColor: Colors.grey.shade800,
  leading: Icon(Icons.arrow_back),
),

      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(

              )
            ),
          )
        ],
      ),

    );
  }
}