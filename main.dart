import 'package:flutter/material.dart';
import 'Home.dart';
import 'Loading.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medtrackz',
      /* home: AnimatedSplashScreen.withScreenFunction(
        splash: Image.asset("images/medtracks.png"),
        screenFunction: () async {
          return MyHomePage(title: "Medtrackz");
        },
        splashIconSize: 250,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.grey[900],
        duration: 8,
      ),*/
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => MyHomePage(title: "Medtrackz"),
      },
    );
  }
}
