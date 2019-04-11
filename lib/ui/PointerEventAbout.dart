import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class PointerEventAbout extends StatelessWidget {
  PointerEventAbout({Key key, this.title});

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
            CommonTitle('Pointer Event 介绍'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "一次完整的事件分为三个阶段：手指按下、手指移动、和手指抬起，而更高级别的手势（如点击、双击、拖动等）都是基于这些原始事件的。\nFlutter 中没有机制取消或停止冒泡过程，而浏览器的冒泡是可以停止的。"),
            ),
            EventTestWidget(),
            CommonTitle('behavior 示例 - deferToChild'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  """因为 deferToChild 会去子 widget 判断是否命中测试，而该例中子 widget 就是 Text("Box A")"""),
            ),
            Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300.0, 150.0)),
                  child: Center(child: Text("Box A")),
                ),
                onPointerDown: (event) => print("down A")),
            CommonTitle('behavior 示例 - opaque'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  """在命中测试时，将当前 Widget 当成不透明处理(即使本身是透明的)，最终的效果相当于当前 Widget 的整个区域都是点击区域。"""),
            ),
            Listener(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300.0, 150.0)),
                  child: Center(child: Text("Box A")),
                ),
                behavior: HitTestBehavior.opaque,
                onPointerDown: (event) => print("down A")),
            CommonTitle('behavior 示例 - translucent'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  """当点击 Widget 透明区域时，可以对自身边界内及底部可视区域都进行命中测试，这意味着点击顶部 widget 透明区域时，顶部 widget 和底部 widget 都可以接收到事件"""),
            ),
            Stack(
              children: <Widget>[
                Listener(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.blue)),
                  ),
                  onPointerDown: (event) => print("down0"),
                ),
                Listener(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                    child: Center(child: Text("左上角200*100范围内非文本区域点击")),
                  ),
                  onPointerDown: (event) => print("down1"),
                  behavior: HitTestBehavior.translucent, //放开此行注释后可以"点透"
                )
              ],
            ),
            CommonTitle('忽略PointerEvent'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  """假如我们不想让某个子树响应 PointerEvent 的话，我们可以使用 IgnorePointer 和 AbsorbPointer，这两个 Widget 都能阻止子树接收指针事件，不同之处在于 AbsorbPointer 本身会参与命中测试，而 IgnorePointer 本身不会参与，这就意味着 AbsorbPointer 本身是可以接收指针事件的(但其子树不行)，而 IgnorePointer 不可以。"""),
            ),
            Listener(
              child: IgnorePointer(
                // 试试 AbsorbPointer
                child: Listener(
                  child: Container(
                    color: Colors.red,
                    width: 200.0,
                    height: 100.0,
                  ),
                  onPointerDown: (event) => print("in"),
                ),
              ),
              onPointerDown: (event) => print("up"),
            ),
          ],
        ),
      ),
    );
  }
}

class EventTestWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EventTestState();
  }
}

class EventTestState extends State<EventTestWidget> {
  //定义一个状态，保存当前指针位置
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Listener(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        width: 300.0,
        height: 150.0,
        child: Text(_event?.toString() ?? "",
            style: TextStyle(color: Colors.white)),
      ),
      onPointerDown: (PointerDownEvent event) => setState(() => _event = event),
      onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
      onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
    );
  }
}
