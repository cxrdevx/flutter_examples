
import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/page-home/page-home.dart';
import 'package:splashscreen/splashscreen.dart';

class PageSplash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new PageHome(),
      title: new Text('Welcome In SplashScreen'),
      image: new Image.asset('assets/img/logo.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.red,
    );
  }
}
