import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class BoxAbout extends StatelessWidget {
  BoxAbout({Key key, this.title});

  final String title;

  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CommonTitle('ConstrainedBox 介绍'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text("ConstrainedBox用于对其子widget添加额外的约束。"),
            ),
            CommonTitle('ConstrainedBox 例子'),
            ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: double.infinity, //宽度尽可能大
                  minHeight: 50.0 //最小高度为50像素
                  ),
              child: Container(height: 5.0, child: redBox),
            ),
            CommonTitle('ConstrainedBox 多重限制'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text("有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的。"),
            ),
            CommonTitle('ConstrainedBox 多重限制例子'),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                //父
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                  //子
                  child: redBox,
                )),
            Divider(color: Colors.white,),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                  child: redBox,
                )),
            CommonTitle('UnconstrainedBox 的使用'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                  "UnconstrainedBox不会对子Widget产生任何限制，它允许其子Widget按照其本身大小绘制。一般情况下，我们会很少直接使用此widget，但在\"去除\"多重限制的时候也许会有帮助"),
            ),
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),
                //父
                child: UnconstrainedBox(
                  //“去除”父级限制
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
                    child: redBox,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
