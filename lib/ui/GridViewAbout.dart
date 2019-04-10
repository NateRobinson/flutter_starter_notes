import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/ui/gridview/GridView-advanced.dart';
import 'package:flutter_starter_notes/ui/gridview/GridView-builder.dart';
import 'package:flutter_starter_notes/ui/gridview/GridView-count.dart';
import 'package:flutter_starter_notes/ui/gridview/GridView-delegate-fixed-cross.dart';
import 'package:flutter_starter_notes/ui/gridview/GridView-delegate-max-cross.dart';
import 'package:flutter_starter_notes/ui/gridview/GridView-extent.dart';

class GridViewAbout extends StatelessWidget {
  GridViewAbout({Key key, this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => GridViewDelegateFixedCross(
                                title:
                                    "SliverGridDelegateWithFixedCrossAxisCount")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child:
                            Text('SliverGridDelegateWithFixedCrossAxisCount'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                GridViewCount(title: "GridView.count")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('GridView.count'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => GridViewDelegateMaxCross(
                                title:
                                    "SliverGridDelegateWithMaxCrossAxisExtent")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('SliverGridDelegateWithMaxCrossAxisExtent'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                GridViewExtent(title: "GridView.extent")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('GridView.extent'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                GridViewBuilder(title: "GridView.builder")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('GridView.builder'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                GridViewAdvanced(title: "flutter_staggered_grid_view 使用")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('flutter_staggered_grid_view 使用'),
                        flex: 1,
                      ),
                      new Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
