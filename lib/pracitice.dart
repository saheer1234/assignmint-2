import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(DevicePreview(
    enabled: kDebugMode,
      builder: (BuildContext context) => myApp(),
  )
  );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),

      body: Center(
        child: ScreenTypeLayout.builder(
        mobile: (context) => const Text('Mobile'),
        desktop: (context) => const Text('Desktop'),
        tablet:  (context) => const Text ('Tablet'),
    )

            ),
    );
  }
}

