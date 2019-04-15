import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class BasicAnimationStructureAbout extends StatelessWidget {
  BasicAnimationStructureAbout({Key key, this.title});

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
            CommonTitle('动画的基本结构 - 没有 Curve，默认是匀速'),
            ScaleAnimationRoute(
              useCurve: false,
            ),
            CommonTitle('动画的基本结构 - 有 Curve'),
            ScaleAnimationRoute(
              useCurve: true,
            ),
            CommonTitle('使用AnimatedWidget简化'),
            ScaleAnimationRouteWithAnimatedWidget(),
            CommonTitle('用AnimatedBuilder重构'),
            ScaleAnimationRouteWithAnimatedBuilder(),
          ],
        ),
      ),
    );
  }
}

class ScaleAnimationRoute extends StatefulWidget {
  ScaleAnimationRoute({Key key, this.useCurve});

  final bool useCurve;

  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);

    if (this.widget.useCurve) {
      //使用弹性曲线
      CurvedAnimation curvedAnimation =
          CurvedAnimation(parent: controller, curve: Curves.bounceIn);
      //图片宽高从0变到300
      animation = new Tween(begin: 0.0, end: 100.0).animate(curvedAnimation)
        ..addListener(() {
          setState(() => {});
        });
    } else {
      //图片宽高从0变到300
      animation = new Tween(begin: 0.0, end: 100.0).animate(controller)
        ..addListener(() {
          setState(() => {});
        });
    }
    //启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Image.asset("imgs/avatar.png",
          width: animation.value, height: animation.value),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}

// 使用AnimatedWidget简化
class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: Image.asset("imgs/avatar.png",
          width: animation.value, height: animation.value),
    );
  }
}

class ScaleAnimationRouteWithAnimatedWidget extends StatefulWidget {
  @override
  _ScaleAnimationRouteWithAnimatedWidgetState createState() =>
      new _ScaleAnimationRouteWithAnimatedWidgetState();
}

class _ScaleAnimationRouteWithAnimatedWidgetState
    extends State<ScaleAnimationRouteWithAnimatedWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 100.0).animate(controller);
    //启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedImage(
      animation: animation,
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return new Container(
                height: animation.value, width: animation.value, child: child);
          },
          child: child),
    );
  }
}

class ScaleAnimationRouteWithAnimatedBuilder extends StatefulWidget {
  @override
  _ScaleAnimationRouteWithAnimatedBuilderState createState() =>
      new _ScaleAnimationRouteWithAnimatedBuilderState();
}

class _ScaleAnimationRouteWithAnimatedBuilderState
    extends State<ScaleAnimationRouteWithAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 100.0).animate(controller);
    // 通过 动画状态监听 实现循环动画
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //动画执行结束时反向执行动画
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
    });
    //启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GrowTransition(
      child: Image.asset("imgs/avatar.png"),
      animation: animation,
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}
