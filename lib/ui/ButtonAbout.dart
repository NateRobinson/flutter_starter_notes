import 'package:flutter/material.dart';

class ButtonAbout extends StatelessWidget {
  ButtonAbout({Key key, this.title});

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
                'RaisedButton',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: RaisedButton(
                child: Text("按钮"),
                onPressed: () => {},
              ),
            ),
            Container(
              child: Text(
                'FlatButton',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: FlatButton(
                child: Text("按钮"),
                onPressed: () => {},
              ),
            ),
            Container(
              child: Text(
                'OutlineButton',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: OutlineButton(
                child: Text("按钮"),
                onPressed: () => {},
              ),
            ),
            Container(
              child: Text(
                'OutlineButton',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
            ),
            Container(
              child: Text(
                '自定义按钮外观',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              color: Colors.grey[200],
              height: 30,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
