import 'dart:io' show File, Platform, Process, stdout, stderr;

import 'package:blogger_theme/blogger_theme.dart';
import 'html/html_children.dart';
import 'head/index.dart';
import 'body/index.dart';

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
      children: [...html_children_attrs],
      head: [HeadComponents()],
      body: [BodyComponents()],
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
