import 'dart:io';
import 'package:path/path.dart' as p;
import 'core.dart';

/// Loads a Dart script from disk and compiles it to JavaScript at render time,
/// or renders a raw inline JavaScript block with customizable attributes.
class BClientScript extends Component {
  final String? scriptPath;
  final String? inlineCode;
  final bool? contentInCDATA;
  final Map<String, String>? attributes;

  const BClientScript(
    String this.scriptPath, {
    this.contentInCDATA,
    this.attributes,
  }) : inlineCode = null;

  const BClientScript.inline(
    String this.inlineCode, {
    this.contentInCDATA,
    this.attributes,
  }) : scriptPath = null;

  @override
  Iterable<Component> build() {
    if (inlineCode != null) {
      return [
        _InlineScript(
          inlineCode!,
          contentInCDATA: contentInCDATA,
          attributes: attributes,
        ),
      ];
    }
    return [
      _CompiledScript(
        scriptPath!,
        contentInCDATA: contentInCDATA,
        attributes: attributes,
      ),
    ];
  }
}

/// Internal helper that renders an inline JavaScript code block.
class _InlineScript extends DomComponent {
  final String code;
  final bool? contentInCDATA;

  _InlineScript(
    this.code, {
    this.contentInCDATA = true,
    Map<String, String>? attributes,
  }) : super(
         'script',
         attributes: {
           'type': 'text/javascript',
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() {
    return [
      if (contentInCDATA == true) RawText('//<![CDATA[\n'),
      Text(code, escape: !contentInCDATA!),
      if (contentInCDATA == true) RawText('\n//]]>'),
    ];
  }
}

/// Internal helper that compiles a Dart script into a browser-ready JS [script] node.
class _CompiledScript extends DomComponent {
  final String scriptPath;
  final bool? contentInCDATA;

  _CompiledScript(
    this.scriptPath, {
    this.contentInCDATA = true,
    Map<String, String>? attributes,
  }) : super(
         'script',
         attributes: {
           'type': 'text/javascript',
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() {
    var jsContent = _compileDartToJs(scriptPath);
    return [
      if (contentInCDATA == true) RawText('//<![CDATA[\n'),
      Text(jsContent, escape: !contentInCDATA!),
      if (contentInCDATA == true) RawText('\n//]]>'),
    ];
  }

  /// Compiles the Dart file at [path] to JavaScript and returns the output.
  String _compileDartToJs(String path) {
    var fullPath = p.absolute(path);
    if (!File(fullPath).existsSync()) {
      return '// Error: Script not found at $fullPath';
    }

    var tempDir = Directory.systemTemp.createTempSync('dart_compile');
    var outFile = p.join(tempDir.path, 'out.js');

    try {
      var result = Process.runSync('dart', [
        'compile',
        'js',
        '-O4',
        fullPath,
        '-o',
        outFile,
      ]);

      if (result.exitCode != 0) {
        return '// Error compiling Dart to JS:\nExit code: ${result.exitCode}\nSTDOUT: ${result.stdout}\nSTDERR: ${result.stderr}';
      }

      return File(outFile).readAsStringSync();
    } finally {
      tempDir.deleteSync(recursive: true); // Keep it for now if debugging
    }
  }
}
