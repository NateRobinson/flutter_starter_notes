import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';
import 'package:flutter_starter_notes/ui/customscrollview/CustomScrollView-demo.dart';

class CustomScrollViewAbout extends StatelessWidget {
  CustomScrollViewAbout({Key key, this.title});

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
            CommonTitle('CustomScrollView 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  """CustomScrollView是可以使用sliver来自定义滚动模型（效果）的widget。它可以包含多种滚动模型，举个例子，假设有一个页面，顶部需要一个GridView，底部需要一个ListView，而要求整个页面的滑动效果是统一的，即它们看起来是一个整体，如果使用GridView+ListView来实现的话，就不能保证一致的滑动效果，因为它们的滚动效果是分离的，所以这时就需要一个"胶水"，把这些彼此独立的可滚动widget（Sliver）"粘"起来，而CustomScrollView的功能就相当于“胶水”。"""),
            ),
            CommonTitle('Sliver 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  """Sliver有细片、小片之意，在Flutter中，Sliver通常指具有特定滚动效果的可滚动块。可滚动widget，如ListView、GridView等都有对应的Sliver实现如SliverList、SliverGrid等。"""),
            ),
            CommonTitle('CustomScrollView 示例'),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                CustomScrollViewDemo(title: "示例")))
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
