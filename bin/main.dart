import 'dart:io';

import 'package:blogger_theme/blogger_theme.dart';
import 'head/head.dart'; //TODO:
import 'body/body.dart'; //TODO:

// Future<void> fetchAntinnaEngine() async {
//   print('Fetching latest Antinna Engine from stable_backups_ecomm releases...');
//   final url = Uri.parse(
//     'https://github.com/mg3994/antinna-blogger-engine/releases/latest/download/antinna-engine.iife.js',
//   );
//   final client = HttpClient();
//   try {
//     final request = await client.getUrl(url);
//     final response = await request.close();
//     if (response.statusCode == 200) {
//       final bytes = await response.fold<List<int>>([], (p, e) => p..addAll(e));
//       final jsContent = utf8.decode(bytes);
//       final jsContentClean = jsContent.replaceAll(
//         '"""',
//         '"""',
//       ); // Clean up any triple quotes

//       final dartContent =
//           '''import 'package:blogger_theme/blogger_theme.dart';

// final antinna_engine_script = Script(
//   type: 'module',
//   contentInCDATA: true,
//   content: r"""$jsContentClean""",
// );
// ''';
//       final file = File('bin/body/scripts/antinna_engine.dart');
//       file.createSync(recursive: true);
//       file.writeAsStringSync(dartContent);
//       print(
//         'Successfully fetched and updated bin/body/scripts/antinna_engine.dart!',
//       );
//     } else {
//       print(
//         'Warning: Failed to fetch Antinna Engine (Status: ${response.statusCode}). Using cached/existing file.',
//       );
//     }
//   } catch (e) {
//     print(
//       'Warning: Network error fetching Antinna Engine: $e. Using cached/existing file.',
//     );
//   } finally {
//     client.close();
//   }
// }

void main(List<String> args) async {
  // 1. Generation Pass: Skips the network request and compiles the XML template
  if (args.contains('--generate-only')) {
    var theme = BloggerTheme(
      /// something here for those b:attr tags here in main html i mean not attributes that but <b:attr <b:with <b:class </b:comment tag directly , just check // blogger-theme.xml file ,and also let i tell you check that lib\src\theme_utility.dart code and make sure you remove that
      ///   static const Map<String, String> _defaultAttributes = {
      // if they are not specified we will default to these values for better compatibility
      // with Blogger's template requirements shown below, but they can be overridden if needed
      //   'b:css': 'false',
      //   'b:defaultwidgetversion': '2',
      //   'b:layoutsversion': '3',
      //   'b:responsive': 'true',
      //   'expr:dir': 'data:blog.languageDirection',
      //   'expr:lang': 'data:blog.locale',
      //   // below are the standard XML namespaces for Blogger templates and they are fixed
      //   'xmlns': 'http://www.w3.org/1999/xhtml',
      //   'xmlns:b': 'http://www.google.com/2005/gml/b',
      //   'xmlns:data': 'http://www.google.com/2005/gml/data',
      //   'xmlns:expr': 'http://www.google.com/2005/gml/expr',
      // };
      // from lib/src/html_components.dart and don;t force to merge it there ==>remove it ==>    final merged = <String, String>{};
      //   if (attributes != null) {
      //     for (final entry in attributes.entries) {
      //       if (entry.value != null) {
      //         merged[entry.key] = entry.value!;
      //       }
      //     }
      //   }
      //   for (final entry in _defaultAttributes.entries) {
      //     merged.putIfAbsent(entry.key, () => entry.value);
      //   }
      //   return merged;
      // } ==> and make sure it is now our choice to add custom attributes after this changement not to force any forcefull merge
      head: [BloggerHead()],
      body: [BloggerBody()],
    );
    final xml = theme.generate();
    final outputFile = File('build/blogger/theme.xml');
    outputFile.createSync(recursive: true);
    outputFile.writeAsStringSync(xml);

    print('Wrote generated theme to ${outputFile.path}');
    return;
  }

  // 2. Fetch Pass: Downloads the asset and writes the Dart file directly to disk
  // await fetchAntinnaEngine(); // for future

  // 3. Compilation Pass: Re-spawns this script instantly in a clean instance
  print('Compiling theme with fresh engine content...');
  final scriptPath = Platform.script.isScheme('file')
      ? Platform.script.toFilePath()
      : 'bin/main.dart';

  final result = await Process.run('dart', [scriptPath, '--generate-only']);

  // Forward compilation and generation logs seamlessly to your console output
  if (result.stdout.toString().isNotEmpty) stdout.write(result.stdout);
  if (result.stderr.toString().isNotEmpty) stderr.write(result.stderr);
}
