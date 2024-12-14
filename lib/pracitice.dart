import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(simpleApp());
}

class simpleApp extends StatelessWidget {
  const simpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   /* initialRoute: '/Home',
      routes: {
        '/Home' : (context) => Home(),
        '/Profile' : (context) => Profile(),
        '/Setting' : (context) => Setting(), */
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize.width);
    print(screenSize.height);
    print(screenSize.flipped);
    print(screenSize.aspectRatio);
    print(screenSize.longestSide);
    print(screenSize.shortestSide);

    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).orientation);

     return Scaffold(
       appBar: AppBar(
         title: Text('Home'),
       ),
       
     /*  body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Wrap(
             alignment: WrapAlignment.start,
             spacing: 11,
             runSpacing: 17,
             children: [
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
               ElevatedButton(onPressed: (){}, child: Text('Button')),
             ],
           )
         ],
       ), */
         
      /* body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 8.0),
         child: LayoutBuilder(
             builder: (BuildContext context, BoxConstraints constraints) {
             return Center(
               child: Text('${constraints.maxWidth}'),
             );
           }
         ),
       ),*/

       body: OrientationBuilder(
           builder: (context, orientation) {
             if (orientation == Orientation.portrait) {
               return Center(child: Text('Hello world'));
             } else {
               return Center(child: Text('Hello another world'));
             }
           }
       )
     );
  }
}


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/Setting');
          }, child: Text('Go to Setting'))
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/Home', (predicate) => false);
          }, child: Text('Go to Home'))
        ],
      ),
    );
  }
}

/*class CounterScreen extends StatelessWidget {
   CounterScreen({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Text('Counter value is $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter = counter + 1;
        },
      child: Icon(Icons.add),
      ),
    );
  }
} */

class CounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return CounterScreensState();
  }
}

class CounterScreensState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Text('Counter value is $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter = counter + 1;
          print(counter);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}