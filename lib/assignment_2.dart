import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: HomeActivity(),
     debugShowCheckedModeBanner: false,
   );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.amber,
       title: Text('My Profile'),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.add)),
         IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
         IconButton(onPressed: (){}, icon: Icon(Icons.phone))
       ],
     ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileItem(
            icon: Icons.icecream_outlined,
            text: 'Ice cream is very delicious right?',
          ),
          ProfileItem(
              icon: Icons.code,
              text: 'Programming is not boring if you love it',
          ),
          ProfileItem(
              icon: Icons.egg_outlined,
              text: 'If you submit code directly copy from chatgpt then mark will 0'
          )
        ],
      ),
    );
  }
}



class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 88,
            backgroundColor: Colors.deepPurple.shade100,
            child: Icon(
              icon,
              size: 93,
              color: Colors.purple.shade900,
            ),
          ),
          SizedBox(height: 9),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}