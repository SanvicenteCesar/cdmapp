import 'package:cdmapp/intro_screen.dart';
import 'package:cdmapp/login.dart';
import 'package:cdmapp/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => Login(),
  "/intro": (BuildContext context) => IntroScreen(),
};
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
      ),
      home: SplashScreen(),
    );
  }
}


