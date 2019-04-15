import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';
import 'package:flutter_starter_notes/ui/NewPage.dart';

class PageChangeAnimationAbout extends StatelessWidget {
  PageChangeAnimationAbout({Key key, this.title});

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
            CommonTitle("路由切换动画"),
            RaisedButton(
              onPressed: () => {
// 采用 PageRouteBuilder
//                    Navigator.push(
//                        context,
//                        PageRouteBuilder(
//                            transitionDuration:
//                                Duration(milliseconds: 500), //动画时间为500毫秒
//                            pageBuilder: (BuildContext context,
//                                Animation animation,
//                                Animation secondaryAnimation) {
//                              return new FadeTransition(
//                                  //使用渐隐渐入过渡,
//                                  opacity: animation,
//                                  child: NewPage(title: "新页面") //路由B
//                                  );
//                            }))
                    Navigator.push(context, FadeRoute(builder: (context) {
                      return NewPage(title: "新页面");
                    }))
                  },
              child: Text("点击跳转新页面"),
            )
          ],
        ),
      ),
    );
  }
}

// 自定义路由
class FadeRoute extends PageRoute {
  FadeRoute({
    @required this.builder,
    this.transitionDuration = const Duration(milliseconds: 1300),
    this.opaque = true,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.maintainState = true,
  });

  final WidgetBuilder builder;

  @override
  final Duration transitionDuration;

  @override
  final bool opaque;

  @override
  final bool barrierDismissible;

  @override
  final Color barrierColor;

  @override
  final String barrierLabel;

  @override
  final bool maintainState;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) =>
      builder(context);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (isActive) {
      return FadeTransition(
        opacity: animation,
        child: builder(context),
      );
    } else {
      //是返回，则不应用过渡动画
      return Padding(padding: EdgeInsets.zero);
    }
  }
}
