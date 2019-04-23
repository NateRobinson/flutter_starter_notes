import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';

class LocalizationAbout extends StatelessWidget {
  LocalizationAbout({Key key, this.title});

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
            CommonTitle('自定义多语言实现-切换系统语言回来试试'),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(DemoLocalizations.of(context).testDesc),
            ),
          ],
        ),
      ),
    );
  }
}

//Locale资源类
class DemoLocalizations {
  DemoLocalizations(this.isZh);

  //是否为中文
  bool isZh = false;

  //为了使用方便，我们定义一个静态方法
  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  //Locale相关值，title为应用标题
  String get testDesc {
    return isZh ? "我是中文" : "I am English";
  }
//... 其它的值
}

//Locale代理类
class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<DemoLocalizations> load(Locale locale) {
    return SynchronousFuture<DemoLocalizations>(
        DemoLocalizations(locale.languageCode == "zh"));
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
