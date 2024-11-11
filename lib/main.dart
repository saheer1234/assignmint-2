import 'package:app1/note_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text('Alert'),
                content: Text('Do you want to delete'),
                actions: [
                  TextButton(onPressed: () {
                    MySnackBar('Delete Success', context);
                    Navigator.of(context).pop();
                  }, child: Text('Yes')),
                  TextButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text('No')),
                ],
              )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60)
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu,
                color: Colors.black,
                size: 30,
              ),
              Container(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('image/img.png'),
                ),
              )
            ],
          )
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
        searchBox(),
           Expanded(
             child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50,bottom: 20),
                      child: Text(
                        'All Notes',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                   NoteItem(),
                    NoteItem(),
                    NoteItem(),
                    NoteItem(),
                  ],
                ),
           ),
          ],
        ),
      ),
    );
  }
  Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey.shade700),
        ),
      ),
    );
  }
}