import 'package:flutter/cupertino.dart';


void main() {
  runApp(CupertinoExApp());
}

class CupertinoExApp extends StatelessWidget {
  const CupertinoExApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
      title: 'Experiment Project',
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: Icon(CupertinoIcons.arrow_up_doc),
        leading: Icon(CupertinoIcons.arrow_up),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton.filled(
                borderRadius: BorderRadius.circular(33),
                  child: Text('Tap here'), onPressed: (){}
              )
            ],
          ),
        )
    );
  }
}

