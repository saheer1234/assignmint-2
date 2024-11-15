import 'package:app1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      color: Colors.white,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.white),
       centerTitle: true,
       title: Text('Need Blood'),
       titleTextStyle: TextStyle(color: Colors.white),
       backgroundColor: Colors.red,
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.add))
       ],
     ),

     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             decoration: BoxDecoration(
               color: Colors.grey.shade700,
               shape: BoxShape.circle,
             ),
             padding: EdgeInsets.all(30),
             child: Column(
               children: [
                 Icon(
                   Icons.bloodtype_outlined,
                   size: 50,
                   color: Colors.red,
                 ),
               ],
             ),
           ),
           SizedBox(height: 8),
           Text(
             'Donate Blood',
             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           )
         ],
       ),
     ),
   );
  }
}