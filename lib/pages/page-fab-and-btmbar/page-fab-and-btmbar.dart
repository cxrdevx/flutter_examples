import 'package:flutter/material.dart';
import 'package:flutter_examples/components/nav-drawer/nav-drawer.dart';

class PageFabAndBtmBar extends StatelessWidget {
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
        child: Text('Ejemplo buttom bar con floating buttom'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
