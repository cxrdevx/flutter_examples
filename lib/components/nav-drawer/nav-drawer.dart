import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/page-home/page-home.dart';
import 'package:flutter_examples/pages/page-search/page-search.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: new CircleAvatar(
              backgroundImage: AssetImage('assets/img/user.png'),
            ),
            accountName: Text('Jhon doe'),
            accountEmail: Text('alguncorreobonito@gmail.com'),
          ),
          ListTile(
            title: Text('Listas'),
            leading: new Icon(Icons.add_circle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageHome()),
              );
            },
          ),
          ListTile(
            title: Text('Buscar'),
            leading: new Icon(Icons.account_balance),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageSearch()),
              );
            },
          )
        ],
      ),
      persistentFooterButtons: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          RaisedButton(
            onPressed: () {},
            color: Colors.red,
            textColor: Colors.white,
            child: new Row(
              children: <Widget>[
                new Text('Cerrar Sesión'),
                new Icon(Icons.exit_to_app),
              ],
            ),
          ),
        ])
      ],
    ));
  }
}
