import 'package:flutter/material.dart';
import 'package:flutter_examples/components/nav-drawer/nav-drawer.dart';
import 'package:flutter_examples/pages/page-list-checkbox/page-list-checkbox.dart';

class PageSearch extends StatefulWidget {
  @override
  PageSearchState createState() => new PageSearchState();
}

class PageSearchState extends State<PageSearch> {
  List<Item> items = [
    new Item('Cristian Muñoz', 'alguna descripcion bonita'),
    new Item('zzz', 'alguna descripcion bonita'),
  ];
  final TextEditingController _filter = new TextEditingController();
  bool activeSearch;

  String searchText = "";

  PageSearchState() {
    _filter.addListener(() {
      print('filter $_filter');
      if (_filter.text.isEmpty) {
        setState(() {
          searchText = "";
        });
      } else {
        setState(() {
          searchText = _filter.text.toLowerCase();
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    activeSearch = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: buildAppBar(),
      body: listItems(),
    );
  }

  buildAppBar() {
    if (activeSearch) {
      return AppBar(
        backgroundColor: Colors.red,
        title: TextField(
          controller: _filter,
          decoration: InputDecoration(
            hintText: "Buscar ...",
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => setState(() => activeSearch = false),
          )
        ],
      );
    } else {
      return AppBar(
        backgroundColor: Colors.red,
        title: Text('Inicio'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => setState(() => activeSearch = true),
          ),
        ],
      );
    }
  }

  listItems() {
    List<Item> filteredItems = [];
    print('busqueda $searchText');
    if (searchText.isNotEmpty) {
      filteredItems =
          items.where((i) => i.name.contains(_filter.text)).toList();
    } else {
      filteredItems = items;
    }

    return ListView.builder(
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.description),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageListCheckbox()),
            );
          },
          trailing: Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }

  selectItem(int index) {}
}

class Item {
  String name;
  String description;

  Item(this.name, this.description);
}
