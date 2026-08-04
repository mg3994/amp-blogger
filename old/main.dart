import 'dart:io';

import 'package:blogger_theme/blogger_theme.dart';
import 'head/head.dart';
import 'head/default_markups.dart';
import 'body/body.dart';

void main(List<String> args) async {
  if (args.contains('--generate-only')) {
    final theme = BloggerTheme(
      attributes: {
        'b:css': 'false',
        'b:defaultwidgetversion': '2',
        'b:layoutsVersion': '3',
        'b:responsive': 'true',
        'b:templateUrl': 'plus-ui.xml',
        'b:templateVersion': '3.7.0',
        'xmlns': 'http://www.w3.org/1999/xhtml',
        'xmlns:b': 'http://www.google.com/2005/gml/b',
        'xmlns:data': 'http://www.google.com/2005/gml/data',
        'xmlns:expr': 'http://www.google.com/2005/gml/expr',
      },
      children: [
        BAttr(name: 'xmlns', value: ''),
        BAttr(name: 'xmlns:b', value: ''),
        BAttr(name: 'xmlns:expr', value: ''),
        BAttr(name: 'xmlns:data', value: ''),
        BComment(
          children: [
            RawText(
              '''\n  \n<!--[\n\n  ==============================================================================\n\n    >  Before you edit HTML, please read the statement carefully to make sure\n       you don't get in problem while editing:\n\n    1. Make changes if and only if our team suggested you to do or official\n       documentation pointed to that particular code.\n    2. Don't change id attribute of any node\n    3. It is recommended that you take a backup of theme before editing.\n    4. If a comment says 'Restricted Area' or 'Do not remove', don't make\n       changes there.\n    5. If you don't understand anything from Documentation, please contact us.\n\n  ==============================================================================\n\n    >  WARNING :\n\n       This theme is premium (paid).\n       You can only get it by purchasing officially from 'https://t.me/Plus_UI_Official'.\n       If you get it for free by any method, that means you get it illegally.\n\n  ==============================================================================\n\n]-->\n''',
            ),
          ],
        ),
        BWith(
          varName: 'vars',
          value: 'data:skin.vars',
          children: [
            BWith(
              varName: 'story',
              value:
                  '{ status: (data:vars.amp_status == "2px" and data:vars.amp_story != "1px"), type: (data:vars.amp_story == "2px" ? 1 : 2), active: (data:vars.amp_status == "2px" and data:vars.amp_story != "1px" and data:view.isSingleItem and (data:vars.amp_story != "2px" ? snippet(data:view.url.canonical) contains "story.html" : true)) }',
              children: [
                BWith(
                  varName: 'amp',
                  value:
                      '{ status: (data:vars.amp_status == "2px"), type: (data:vars.amp_type == "1px" ? 1 : data:vars.amp_type == "2px" ? 2 : 3), active: (data:story.active or (data:vars.amp_status == "2px" and (data:vars.amp_type != "1px" ? data:view.url == params(data:view.url, { amp: "1" }) : true))) }',
                  children: [
                    BComment(
                      children: [
                        RawText(
                          '[ <document> | <!> Do not modify anything above ]',
                        ),
                      ],
                    ),
                    BClass(exprName: '"nJs" + (data:amp.active ? " amp" : "")'),
                    BAttr(
                      exprValue: 'data:blog.languageDirection',
                      name: 'dir',
                      value: '',
                    ),
                    BAttr(
                      exprValue: 'data:blog.locale.language',
                      name: 'lang',
                      value: '',
                    ),
                    BAttr(cond: 'data:amp.active', name: 'amp', value: 'amp'),
                    RawText('<head>'),
                    BloggerHead(),
                    BloggerDefaultMarkups(),
                    Body(children: [BloggerBody()]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

    final xml = theme.generate();
    final outputFile = File('build/blogger/theme.xml');
    outputFile.createSync(recursive: true);
    outputFile.writeAsStringSync(xml);

    print('Wrote generated theme to ${outputFile.path}');
    return;
  }

  print('Compiling theme with fresh engine content...');
  final scriptPath = Platform.script.isScheme('file')
      ? Platform.script.toFilePath()
      : 'bin/main.dart';

  final result = await Process.run('dart', [scriptPath, '--generate-only']);

  if (result.stdout.toString().isNotEmpty) stdout.write(result.stdout);
  if (result.stderr.toString().isNotEmpty) stderr.write(result.stderr);
}
