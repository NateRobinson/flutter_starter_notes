import 'package:flutter/material.dart';

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
            Container(
              child: Text(
                '从 Asset 加载图片',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
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
            Container(
              child: Text(
                '从网络加载图片',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              child: Text('通过 NetworkImage'),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: Image(
                image: NetworkImage(
                    'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
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
                  'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  width: 100,
                  height: 100),
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
