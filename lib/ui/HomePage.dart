import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/config/RouterConfig.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final List<HomeMenuItem> _menus = RouterConfig.genMenus();

  void onTitleClick(num index) {
    setState(() {
      _menus[index].isOpen = !_menus[index].isOpen;
    });
  }

  Widget buildContent() {
    List<Widget> items = [];
    for (var i = 0; i < _menus.length; i++) {
      HomeMenuItem item = _menus[i];
      items.add(InkWell(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(child: Text(item.title)),
                Icon(item.isOpen
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down)
              ],
            ),
          ),
          color: Colors.grey[200],
          height: 60,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 10),
        ),
        onTap: () => {this.onTitleClick(i)},
      ));
      if (item.isOpen) {
        for (var childItem in item.items) {
          items.add(InkWell(
            onTap: () => {Navigator.pushNamed(context, childItem.router)},
            child: Container(
              height: 60,
              padding: EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(childItem.name),
                      flex: 1,
                    ),
                    new Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ),
          ));
          items.add(Divider(
            height: 1,
            color: Colors.grey[400],
          ));
        }
      } else {
        items.add(Divider(
          height: 1,
          color: Colors.grey[400],
        ));
      }
    }

    Widget content = new Column(
      children: items,
    );

    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Starter Notes App'),
      ),
      body: SingleChildScrollView(
        child: buildContent(),
      ),
    );
  }
}
