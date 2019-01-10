import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/page-home/page-home.dart';
import 'package:flutter_examples/pages/page-splash/page-splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSplash(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => PageHome(),
        '/home': (BuildContext context) => PageHome(),
      },
    );
  }
}
