import '../core.dart';

/// An AMP Web Story container.
class AmpStory extends DomComponent {
  AmpStory({
    String? title,
    String? publisher,
    String? publisherLogoSrc,
    String? posterPortraitSrc,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story',
         attributes: {
           'standalone': 'standalone',
           'title': ?title,
           'publisher': ?publisher,
           'publisher-logo-src': ?publisherLogoSrc,
           'poster-portrait-src': ?posterPortraitSrc,
           ...?attributes,
         },
       );
}

/// A page within an AMP Web Story.
class AmpStoryPage extends DomComponent {
  AmpStoryPage({
    required String id,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story-page',
         attributes: {
           'id': id,
           ...?attributes,
         },
       );
}

/// A grid layer within an AMP Web Story page.
class AmpStoryGridLayer extends DomComponent {
  AmpStoryGridLayer({
    String? template,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story-grid-layer',
         attributes: {
           'template': ?template,
           ...?attributes,
         },
       );
}

/// A bookend element within an AMP Web Story.
class AmpStoryBookend extends DomComponent {
  AmpStoryBookend({
    String? src,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-story-bookend',
         attributes: {
           'src': ?src,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// A player for embedding and playing AMP Web Stories on standard pages.
class AmpStoryPlayer extends DomComponent {
  AmpStoryPlayer({
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story-player',
         attributes: {
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// A shopping experience container inside AMP story pages.
class AmpStoryShopping extends DomComponent {
  AmpStoryShopping({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-story-shopping', attributes: attributes);
}

/// A CTA outlink button inside AMP story pages.
class AmpStoryPageOutlink extends DomComponent {
  AmpStoryPageOutlink({
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story-page-outlink',
         attributes: {
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Custom video captions renderer for Web Stories.
class AmpStoryCaptions extends DomComponent {
  AmpStoryCaptions({
    Map<String, String>? attributes,
  }) : super('amp-story-captions', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}
