import 'package:flutter/material.dart';
import 'package:flutter_starter_notes/component/CommonTitle.dart';
import 'package:flutter_starter_notes/i10n/localization_intl.dart';

class IntlAbout extends StatelessWidget {
  IntlAbout({Key key, this.title});

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
              child:
                  Text(IntlLocalizations.of(context).remainingEmailsMessage(1)),
            ),
            CommonTitle('实现 Intl 的过程'),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Text("1. 引入 intl 和 intl_translation 三方库"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  "2. 创建 lib/i10n/localization_intl.dart ，并实现 Localizations 和 Delegate 类, 在实现的时候，会用到 intl 包的一些方法（有些是动态生成的 Dart 文件）"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  "3. 添加需要国际化的属性，可以使用 Intl.message，一些复数语境，可以使用 Intl.plural"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  "4. 生成arb文件，使用命令：\nflutter pub pub run intl_translation:extract_to_arb --output-dir=i10n-arb lib/i10n/localization_intl.dart"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  "5. 默认只会有 Local 的资源文件，为了实现多语言，需要在 intl_messages.arb 同级目录下创建一个 intl_zh_CN.arb 的文件，然后将内容复制过来，修改对应语言的内容，完事后执行下一步"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  "6. 生成多语言 Dart 代码，使用命令：\nflutter pub pub run intl_translation:generate_from_arb --output-dir=lib/i10n --no-use-deferred-loading lib/i10n/localization_intl.dart i10n-arb/intl_*.arb"),
            ),
          ],
        ),
      ),
    );
  }
}
