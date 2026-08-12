import '../core.dart';

/// An AMP image component replacing the standard HTML img tag.
class AmpImg extends DomComponent {
  AmpImg({
    String? src,
    String? alt,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-img',
         attributes: {
           'src': ?src,
           'alt': ?alt,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Minimizes and docks videos to a corner on page scroll.
class AmpVideoDocking extends DomComponent {
  AmpVideoDocking({
    Map<String, String>? attributes,
  }) : super('amp-video-docking', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players securely within an AMP-friendly iframe wrapper.
class AmpVideoIframe extends DomComponent {
  AmpVideoIframe({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-video-iframe',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP video component replacing the standard HTML video tag.
class AmpVideo extends DomComponent {
  AmpVideo({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? poster,
    bool? autoplay,
    bool? loop,
    bool? controls,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-video',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           'poster': ?poster,
           if (autoplay == true) 'autoplay': 'autoplay',
           if (loop == true) 'loop': 'loop',
           if (controls == true) 'controls': 'controls',
           ...?attributes,
         },
       );
}

/// An AMP audio component replacing the HTML5 audio tag.
class AmpAudio extends DomComponent {
  AmpAudio({
    String? src,
    bool? autoplay,
    bool? loop,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-audio',
         attributes: {
           'src': ?src,
           if (autoplay == true) 'autoplay': 'autoplay',
           if (loop == true) 'loop': 'loop',
           ...?attributes,
         },
       );
}

/// An AMP iframe component for embedding third-party content securely.
class AmpIframe extends DomComponent {
  AmpIframe({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? sandbox,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-iframe',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           'sandbox': ?sandbox,
           ...?attributes,
         },
       );
}

/// A self-closing AMP tracking pixel component.
class AmpPixel extends DomComponent {
  AmpPixel({
    String? src,
    Map<String, String>? attributes,
  }) : super(
         'amp-pixel',
         attributes: {
           'src': ?src,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to capture analytics and tracking data.
class AmpAnalytics extends DomComponent {
  AmpAnalytics({
    String? type,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-analytics',
         attributes: {
           'type': ?type,
           ...?attributes,
         },
       );
}

/// An AMP component for displaying animated images (e.g. GIFs).
class AmpAnim extends DomComponent {
  AmpAnim({
    String? src,
    String? alt,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-anim',
         attributes: {
           'src': ?src,
           'alt': ?alt,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}
