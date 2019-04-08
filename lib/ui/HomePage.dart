import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/config/RouterConfig.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  static List<HomeMenuChildItem> basicWidgetsItems = <HomeMenuChildItem>[
    HomeMenuChildItem("/textabout"),
    HomeMenuChildItem("/buttonabout"),
    HomeMenuChildItem("/imageandiconabout"),
    HomeMenuChildItem("/switchandcheckboxabout"),
    HomeMenuChildItem("/inputandformabout"),
  ];

  static List<HomeMenuChildItem> layoutWidgetsItems = <HomeMenuChildItem>[
    HomeMenuChildItem("/rowandcolumnabout"),
    HomeMenuChildItem("/flexabout"),
    HomeMenuChildItem("/wrapandflowabout"),
    HomeMenuChildItem("/stackandpositionedabout"),
  ];

  static List<HomeMenuChildItem> containerWidgetsItems = <HomeMenuChildItem>[
    HomeMenuChildItem("/paddingabout"),
  ];

  final List<HomeMenuItem> _menus = <HomeMenuItem>[
    HomeMenuItem(false, "基础 Widgets", basicWidgetsItems),
    HomeMenuItem(false, "布局类 Widgets", layoutWidgetsItems),
    HomeMenuItem(false, "容器类 Widgets", containerWidgetsItems),
  ];

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

class HomeMenuItem {
  bool isOpen; // 0 - title 1 - normal item
  String title;
  List<HomeMenuChildItem> items;

  HomeMenuItem(bool isOpen, String title, List<HomeMenuChildItem> items) {
    this.isOpen = isOpen;
    this.title = title;
    this.items = items;
  }
}

class HomeMenuChildItem {
  String name;
  String router;

  HomeMenuChildItem(String router) {
    this.name = RouterConfig.namesForRouter[router];
    this.router = router;
  }
}
