import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';
import 'package:flutter_starter_notes/ui/scrollcontroller/NotificationListener-demo.dart';
import 'package:flutter_starter_notes/ui/scrollcontroller/ScrollController-listener.dart';

class ScrollControllerAbout extends StatelessWidget {
  ScrollControllerAbout({Key key, this.title});

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
            CommonTitle('ScrollController 介绍'),
            Container(
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text("""ScrollController({
  double initialScrollOffset = 0.0, //初始滚动位置
  this.keepScrollOffset = true,//是否保存滚动位置
  ...
})
"""),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text("""ScrollController常用的属性和方法：
1. offset：可滚动Widget当前滚动的位置。
2. jumpTo(double offset)、animateTo(double offset,...)：这两个方法用于跳转到指定的位置，它们不同之处在于，后者在跳转时会执行一个动画，而前者不会。"""),
            ),
            CommonTitle('ScrollController 设置监听'),
            Container(
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                  """controller.addListener(()=>print(controller.offset))"""),
            ),
            CommonTitle('滚动位置恢复'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                  """PageStorage是一个用于保存页面(路由)相关数据的Widget，它并不会影响子树的UI外观，其实，PageStorage是一个功能型Widget，它拥有一个存储桶（bucket），子树中的Widget可以通过指定不同的PageStorageKey来存储各自的数据或状态"""),
            ),
            CommonTitle('ScrollController 示例'),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ScrollControllerListener(
                                title: "Listener 使用示例")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Listener 使用示例'),
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
            CommonTitle('滚动监听 NotificationListener 介绍和示例'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                  """NotificationListener 是一个 Widget，模板参数T是想监听的通知类型，如果省略，则所有类型通知都会被监听，如果指定特定类型，则只有该类型的通知会被监听。NotificationListener需要一个onNotification回调函数，用于实现监听处理逻辑，该回调可以返回一个布尔值，代表是否阻止该事件继续向上冒泡，如果为true时，则冒泡终止，事件停止向上传播，如果不返回或者返回值为false 时，则冒泡继续。"""),
            ),
            CommonTitle('NotificationListener 与 ScrollController 比较'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                  """1. 通过NotificationListener可以在从Scrollable Widget到Widget树根之间任意位置都能监听。而ScrollController只能和具体的Scrollable Widget关联后才可以。\n2. 收到滚动事件后获得的信息不同；NotificationListener在收到滚动事件时，通知中会携带当前滚动位置和ViewPort的一些信息，而ScrollController只能获取当前滚动位置。"""),
            ),
            Divider(
              height: 1,
            ),
            InkWell(
              onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => NotificationListenerDemo(
                                title: "NotificationListener 使用示例")))
                  },
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('NotificationListener 使用示例'),
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
