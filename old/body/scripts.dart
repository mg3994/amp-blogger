import 'dart:io';
import 'package:blogger_theme/blogger_theme.dart';

class BloggerBodyScripts extends Component {
  const BloggerBodyScripts();

  @override
  Iterable<Component> build() {
    final bodyScriptXml = File('bin/assets/body_script.xml').readAsStringSync();

    return [
      BIf(
        cond:
            '!data:amp.active and data:blog.view not in ["x-content-blog", "x-content-lazy"]',
        children: [
          BComment(children: [RawText('[ Script Body ]')]),
          RawText(bodyScriptXml),
        ],
      ),
      BIf(
        cond: 'data:blog.view not in ["x-content-blog"]',
        children: [
          BComment(
            children: [
              RawText(' </body> | <!> [below] Custom codes (Global) '),
            ],
          ),
          BComment(
            children: [
              RawText(' </body> | <!> [above] Custom codes (Global) '),
            ],
          ),
          BIf(
            cond: 'data:amp.active',
            children: [
              BComment(
                children: [
                  RawText(' </body> | <!> [below] Custom codes (AMP) '),
                ],
              ),
              BComment(
                children: [
                  RawText(' </body> | <!> [above] Custom codes (AMP) '),
                ],
              ),
            ],
          ),
          BElse(),
          BComment(
            children: [
              RawText(' </body> | <!> [below] Custom codes (NO-AMP) '),
            ],
          ),
          BComment(
            children: [
              RawText(' </body> | <!> [above] Custom codes (NO-AMP) '),
            ],
          ),
        ],
      ),
    ];
  }
}
