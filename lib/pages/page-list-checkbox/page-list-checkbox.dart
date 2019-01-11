import 'package:flutter/material.dart';
import 'package:flutter_examples/components/nav-drawer/nav-drawer.dart';

class PageListCheckbox extends StatefulWidget {
  @override
  PageListCheckboxState createState() => new PageListCheckboxState();
}

class PageListCheckboxState extends State<PageListCheckbox> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Inicio'),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          onTap: (int index) {
            redirect(index, context);
          },
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.navigate_before),
              title: new Text("Volver"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.navigate_next),
              title: new Text("Siguiente"),
            ),
          ],
        ),
        body: buildBody());
  }

  redirect(int index, BuildContext context){
    switch (index) {
    case 0:
      Navigator.pop(context);
      break;
    case 2:
      break;
  }
  }

  List<CheckItem> items = [
    new CheckItem('CODE', 'Item 1', false),
    new CheckItem('CODE', 'Item 2', false),
    new CheckItem('CODE', 'Item 3', false),
    new CheckItem('CODE', 'Item 4', false),
    new CheckItem('CODE', 'Item 5', false),
    new CheckItem('CODE', 'Item 6', false),
    new CheckItem('CODE', 'Item 7', false),
    new CheckItem('CODE', 'Item 8', false),
  ];

  buildBody() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return CheckboxListTile(
          title: Text(item.description),
          value: item.value,
          onChanged: (bool value) {
            setState(() {
              items[index].value = value;
            });
          },
        );
      },
    );
  }
}

class CheckItem {
  String code;
  String description;
  bool value;

  CheckItem(this.code, this.description, this.value);
}
