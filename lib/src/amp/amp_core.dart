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
