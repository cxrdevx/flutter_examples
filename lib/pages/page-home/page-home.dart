import 'package:flutter/material.dart';
import 'package:flutter_examples/components/nav-drawer/nav-drawer.dart';


class PageHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text('Ejemplos de vistas con flutter'),
      )
    );
  }
}
