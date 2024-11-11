import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Hello World',
     debugShowCheckedModeBanner: false,
     home: Home(),
   );
  }
}

class Home extends StatelessWidget {
   Home({super.key});

  List<String> friendList = [
    'saheer',
    'rabbi',
    'fahim',
    'omi',
    'shariar',
    'odut',
    'shovon',
    'dibu',
    'robot',
    'sahath',
    'nishad',
    'fomo',
    'faiaz',
    'afridi',
    'robi',
    'bopara'
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey,
        width: 222,
        child: Column(
          children: [
            Text('dfdsf')
          ],
        ),
      ),

     /* bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          selectedItemColor: Colors.blue.shade500,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart) ,label: 'Cart')
          ]
      ), */

      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.category), label: 'Category'),
            NavigationDestination(icon: Icon(Icons.shopping_cart_rounded), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Account')
          ]
      ),
      
      body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Text(friendList[index]),
          /*  Divider(
              height: 33,
              thickness: 2,
              color: Colors.blue,
              indent: 33,
              endIndent: 33,
            ) */
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 3,
            width: 333,
            color: Colors.red,
          );

          return Divider(
          color: Colors.black,
            height: 22,
          );
    },
      ),

      );
  }
}