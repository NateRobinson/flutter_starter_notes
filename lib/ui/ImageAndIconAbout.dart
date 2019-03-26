import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class ImageAndIconAbout extends StatelessWidget {
  ImageAndIconAbout({Key key, this.title});

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
            CommonTitle('从 Asset 加载图片'),
            Container(
              child: Text('通过 AssetImage'),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Image(
                image: AssetImage('imgs/avatar.png'),
                width: 100,
                height: 100,
              ),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Text('or, 通过 Image.asset'),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Image.asset('imgs/avatar.png', width: 100, height: 100),
              padding: EdgeInsets.all(10),
            ),
            CommonTitle('从网络加载图片'),
            Container(
              child: Text('通过 NetworkImage'),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Image(
                image: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg'),
                width: 100,
                height: 100,
              ),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Text('or, 通过 Image.network'),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                  width: 100,
                  height: 100),
              padding: EdgeInsets.all(10),
            ),
            CommonTitle('BoxFit 效果'),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.fill'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.contain'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.cover'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.fitWidth'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.fitHeight'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.scaleDown'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                        child: Text('BoxFit.none'),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            CommonTitle('颜色混合'),
            Container(
              child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553515203307&di=256fe7f3dc88dba9e927c5acdf8c5549&imgtype=0&src=http%3A%2F%2Fpic1.16pic.com%2F00%2F07%2F66%2F16pic_766152_b.jpg',
                  width: 100,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  height: 100),
              padding: EdgeInsets.all(10),
            ),
            CommonTitle('通过 Text 使用 Icon'),
            Container(
              child: Text(
                '\uE914 \uE000 \uE90D',
                style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 24.0,
                    color: Colors.green),
              ),
              padding: EdgeInsets.all(10),
            ),
            CommonTitle('通过 Icons'),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.accessible,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                '使用自定义的字体图标',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '这个和 Text 相关那边的自定义字体方式一样',
              ),
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
