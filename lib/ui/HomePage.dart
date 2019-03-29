import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // 【Note:】这边使用了 ListView.builder 的方式创建了一个菜单列表
  //  作为后面其他页面的入口
  List<String> strItems = <String>[
    'Text 相关',
    '按钮相关',
    '图片及 ICON 相关',
    '单选开关和复选框相关',
    '输入框及表单相关',
    'Row 和 Colunm 相关',
  ];

  List<String> routers = <String>[
    '/textabout',
    '/buttonabout',
    '/imageandiconabout',
    '/switchandcheckboxabout',
    '/inputandformabout',
    '/rowandcolumnabout',
  ];

  Widget buildItem(BuildContext context, String strItem, String router) {
    return new ListTile(
      isThreeLine: false,
      title: new Text(strItem),
      trailing: new Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Navigator.pushNamed(context, router);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Starter Notes App'),
      ),
      body: ListView.builder(
          itemCount: strItems.length,
          itemBuilder: (context, item) {
            return new Container(
              child: Column(
                children: <Widget>[
                  buildItem(context, strItems[item], routers[item]),
                  // 【Note:】通过设置 height 可以改变 Divider 的高度，默认是 16，会使
                  //  点击的效果看起来和线之间有一个间距，所以这里设置成了 1
                  Divider(
                    height: 1,
                  )
                ],
              ),
            );
          }),
    );
  }
}
