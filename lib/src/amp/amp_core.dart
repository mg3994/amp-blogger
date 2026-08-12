import '../core.dart';

/// Loads an AMP custom element extension script dynamically.
class AmpExtensionScript extends DomComponent {
  AmpExtensionScript({
    required String extension,
    String version = '0.1',
    String type = 'custom-element',
  }) : super(
          'script',
          attributes: {
            'async': 'async',
            type: extension,
            'src': 'https://cdn.ampproject.org/v0.1/$extension-$version.js',
          },
        );
}

/// The required AMP boilerplate styles.
class AmpBoilerplate extends Component {
  const AmpBoilerplate();

  @override
  Iterable<Component> build() => [
        const RawText(
          '<style amp-boilerplate="amp-boilerplate">body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style>'
          '<noscript><style amp-boilerplate="amp-boilerplate">body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>',
        ),
      ];
}

/// The required AMP runtime script.
class AmpRuntimeScript extends DomComponent {
  AmpRuntimeScript()
      : super(
          'script',
          attributes: {
            'async': 'async',
            'src': 'https://cdn.ampproject.org/v0.js',
          },
        );
}

/// An AMP HTML root helper component.
class AmpHtml extends DomComponent {
  AmpHtml({
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'html',
         attributes: {
           'amp': '',
           ...?attributes,
         },
       );
}

/// Helper utility to run pre-compilation validation on rendered AMP theme HTML string.
class AmpValidator {
  /// Validates if the given [renderedHtml] conforms to the standard AMP specifications.
  /// Returns a list of validation errors/warnings found.
  static List<String> validate(String renderedHtml) {
    final errors = <String>[];

    // 1. Check for DOCTYPE
    if (!renderedHtml.toUpperCase().contains('<!DOCTYPE HTML>')) {
      errors.add('Missing mandatory standard HTML5 doctype declaration: `<!DOCTYPE html>`.');
    }

    // 2. Check for amp attribute in html tag (either inline or via b:attr children declarations)
    final hasAmpOrLightning = renderedHtml.contains('amp=') ||
                               renderedHtml.contains('amp ') ||
                               renderedHtml.contains('amp>') ||
                               renderedHtml.contains('⚡') ||
                               renderedHtml.contains('name="amp"') ||
                               renderedHtml.contains('name="⚡"') ||
                               renderedHtml.contains('name=\'amp\'') ||
                               renderedHtml.contains('name=\'⚡\'');
    if (!renderedHtml.contains('<html') || !hasAmpOrLightning) {
      errors.add('Missing mandatory `amp` or `⚡` attribute inside the `<html>` tag.');
    }

    // 3. Check for head and body tags
    if (!renderedHtml.contains('<head') || !renderedHtml.contains('</head>')) {
      errors.add('Missing mandatory `<head>` tag.');
    }
    if (!renderedHtml.contains('<body') || !renderedHtml.contains('</body>')) {
      errors.add('Missing mandatory `<body>` tag.');
    }

    // 4. Check for charset
    if (!renderedHtml.contains('charset="utf-8"')) {
      errors.add('Missing mandatory `<meta charset="utf-8">` tag inside `<head>`.');
    }

    // 5. Check for viewport
    if (!renderedHtml.contains('name="viewport"') || !renderedHtml.contains('width=device-width')) {
      errors.add('Missing mandatory viewport meta tag `<meta name="viewport" content="width=device-width,...">`.');
    }

    // 6. Check for canonical link
    if (!renderedHtml.contains('rel="canonical"')) {
      errors.add('Missing mandatory `<link rel="canonical" href="...">` tag.');
    }

    // 7. Check for AMP runtime engine
    if (!renderedHtml.contains('src="https://cdn.ampproject.org/v0.js"')) {
      errors.add('Missing mandatory core AMP runtime engine `<script async src="https://cdn.ampproject.org/v0.js"></script>`.');
    }

    // 8. Check for AMP boilerplate styles
    if (!renderedHtml.contains('amp-boilerplate')) {
      errors.add('Missing mandatory `<style amp-boilerplate>` or `<noscript><style amp-boilerplate>` CSS rules.');
    }

    // 9. Check for forbidden standard/inline script tags
    // Valid script tags in AMP must be async, JSON types, or template templates.
    // Convert any self-closing script tags to standard closing tags in a temp string for reliable parsing
    final normalizedHtml = renderedHtml.replaceAllMapped(
      RegExp(r'<script([^>]*?)\/>', caseSensitive: false),
      (match) => '<script${match.group(1)}></script>',
    );

    final scriptRegex = RegExp(r'<script([^>]*?)>([\s\S]*?)</script>', caseSensitive: false);
    final matches = scriptRegex.allMatches(normalizedHtml);
    for (var match in matches) {
      final attrs = match.group(1) ?? '';
      final isAsync = attrs.contains('async');
      final isJson = attrs.contains('application/json') || attrs.contains('application/ld+json');
      final isCustom = attrs.contains('custom-element') || attrs.contains('custom-template');

      if (!isAsync && !isJson && !isCustom) {
        errors.add('Forbidden script tag found: `<script$attrs>`. AMP HTML forbids standard inline or synchronous script tags.');
      }
    }

    return errors;
  }
}

/// A generic, multi-purpose container element that brings AMP's layout system.
class AmpLayout extends DomComponent {
  AmpLayout({
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-layout',
         attributes: {
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Creates reusable actions inside AMP pages.
class AmpActionMacro extends DomComponent {
  AmpActionMacro({
    required String id,
    String? execute,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-action-macro',
         attributes: {
           'id': id,
           'execute': ?execute,
           ...?attributes,
         },
       );
}

/// Standard AMP Charset Meta tag.
class AmpCharset extends DomComponent {
  AmpCharset() : super('meta', attributes: {'charset': 'utf-8'});

  @override
  Iterable<Component> build() => [];
}

/// Standard AMP Viewport Meta tag.
class AmpViewport extends DomComponent {
  AmpViewport()
      : super(
          'meta',
          attributes: {
            'name': 'viewport',
            'content': 'width=device-width,minimum-scale=1,initial-scale=1',
          },
        );

  @override
  Iterable<Component> build() => [];
}

/// Standard AMP Canonical Link tag.
class AmpCanonical extends DomComponent {
  AmpCanonical(String href) : super('link', attributes: {'rel': 'canonical', 'href': href});

  @override
  Iterable<Component> build() => [];
}

/// Sandboxed custom JS engine running in a Web Worker.
class AmpScript extends DomComponent {
  AmpScript({
    String? src,
    String? script,
    String? nodom,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-script',
         attributes: {
           'src': ?src,
           'script': ?script,
           'nodom': ?nodom,
           ...?attributes,
         },
       );
}
