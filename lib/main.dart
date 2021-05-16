import 'package:flutter/material.dart';
import 'package:playsports/ui/onboarding/onboard_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'playsport.fun',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.orange,
      ),
      home: OnboardMain(),
    );
  }
}
