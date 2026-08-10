import '../core.dart';

/// An AMP carousel for displaying multiple content blocks along a horizontal axis.
class AmpCarousel extends DomComponent {
  AmpCarousel({
    String? type,
    String? width,
    String? height,
    String? layout,
    bool? autoplay,
    String? delay,
    bool? loop,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-carousel',
         attributes: {
           'type': ?type,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           if (autoplay == true) 'autoplay': 'autoplay',
           'delay': ?delay,
           if (loop == true) 'loop': 'loop',
           ...?attributes,
         },
       );
}

/// A newer AMP carousel component.
class AmpBaseCarousel extends DomComponent {
  AmpBaseCarousel({
    String? width,
    String? height,
    String? layout,
    bool? loop,
    bool? snap,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-base-carousel',
         attributes: {
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           if (loop == true) 'loop': 'true',
           if (snap == true) 'snap': 'true',
           ...?attributes,
         },
       );
}

/// An AMP sidebar component for sliding temporary navigation menus.
class AmpSidebar extends DomComponent {
  AmpSidebar({
    String? id,
    String? layout,
    String? side,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-sidebar',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           'side': ?side,
           ...?attributes,
         },
       );
}

/// An AMP accordion component for collapsible sections of content.
class AmpAccordion extends DomComponent {
  AmpAccordion({
    bool? animate,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-accordion',
         attributes: {
           if (animate == true) 'animate': 'animate',
           ...?attributes,
         },
       );
}

/// An AMP lightbox component to display content in an overlay.
class AmpLightbox extends DomComponent {
  AmpLightbox({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-lightbox',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP lightbox gallery component.
class AmpLightboxGallery extends DomComponent {
  AmpLightboxGallery({
    String? id,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-lightbox-gallery',
         attributes: {
           'id': ?id,
           ...?attributes,
         },
       );
}

/// An AMP fit-text component to automatically scale text within bounds.
class AmpFitText extends DomComponent {
  AmpFitText({
    String? width,
    String? height,
    String? layout,
    String? minFontSize,
    String? maxFontSize,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-fit-text',
         attributes: {
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           'min-font-size': ?minFontSize,
           'max-font-size': ?maxFontSize,
           ...?attributes,
         },
       );
}

/// An AMP image lightbox component specifically for images.
class AmpImageLightbox extends DomComponent {
  AmpImageLightbox({
    String? id,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-image-lightbox',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP ad container that sticks to the top or bottom of the viewport.
class AmpStickyAd extends DomComponent {
  AmpStickyAd({
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-sticky-ad',
         attributes: {
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP parallax wrapper that behaves like a flying carpet.
class AmpFxFlyingCarpet extends DomComponent {
  AmpFxFlyingCarpet({
    String? height,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-fx-flying-carpet',
         attributes: {
           'height': ?height,
           ...?attributes,
         },
       );
}

/// An AMP helper to easily apply visual effects (like parallax or fade).
class AmpFxCollection extends DomComponent {
  AmpFxCollection({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-fx-collection', attributes: attributes);
}

/// An AMP component that monitors position of elements to trigger events.
class AmpPositionObserver extends DomComponent {
  AmpPositionObserver({
    String? id,
    Map<String, String>? attributes,
  }) : super(
         'amp-position-observer',
         attributes: {
           'id': ?id,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to declare complex visual animations.
class AmpAnimation extends DomComponent {
  AmpAnimation({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-animation',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An interactive mega navigation menu.
class AmpMegaMenu extends DomComponent {
  AmpMegaMenu({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-mega-menu', attributes: attributes);
}

/// Allows zooming and panning of child components.
class AmpPanZoom extends DomComponent {
  AmpPanZoom({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-pan-zoom', attributes: attributes);
}

/// Creates a side-by-side visual comparison of two images.
class AmpImageSlider extends DomComponent {
  AmpImageSlider({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-image-slider', attributes: attributes);
}

/// An interactive multi-level dynamic dropdown menu.
class AmpNestedMenu extends DomComponent {
  AmpNestedMenu({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-nested-menu', attributes: attributes);
}

/// A highly-optimized horizontal scrolling stream gallery.
class AmpStreamGallery extends DomComponent {
  AmpStreamGallery({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-stream-gallery', attributes: attributes);
}

/// Integrates animations created using Google Web Designer (GWD).
class AmpGwdAnimation extends DomComponent {
  AmpGwdAnimation({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-gwd-animation', attributes: attributes);
}

/// Prompts users to download your mobile app.
class AmpAppBanner extends DomComponent {
  AmpAppBanner({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-app-banner',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Shows multiple images along a horizontal axis for tap navigation.
class AmpInlineGallery extends DomComponent {
  AmpInlineGallery({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-inline-gallery', attributes: attributes);
}
