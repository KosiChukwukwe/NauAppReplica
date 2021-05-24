import 'package:flutter/material.dart';
import 'package:nauapp_replica/Screens/FirstPage.dart';

void main() {
  runApp(NauApp());
}

class NauApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
      ),
      home: FirstPage(
      ),
    );
  }
}

