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

/// Dynamically and automatically inserts advertisements into an AMP Web Story.
class AmpStoryAutoAds extends DomComponent {
  AmpStoryAutoAds({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-story-auto-ads', attributes: attributes);
}

/// Renders standard social sharing buttons within Web Stories.
class AmpStorySocialShare extends DomComponent {
  AmpStorySocialShare({
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story-social-share',
         attributes: attributes,
       );
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

/// An attachment layer for an individual story page that allows swiping up.
class AmpStoryPageAttachment extends DomComponent {
  AmpStoryPageAttachment({
    String? layout,
    String? href,
    String? theme,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-story-page-attachment',
         attributes: {
           'layout': ?layout,
           'href': ?href,
           'theme': ?theme,
           ...?attributes,
         },
       );
}

/// A layer for links and buttons inside an AMP Web Story page.
class AmpStoryCtaLayer extends DomComponent {
  AmpStoryCtaLayer({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-story-cta-layer', attributes: attributes);
}

/// An interactive quiz widget inside AMP Web Story pages.
class AmpStoryInteractiveQuiz extends DomComponent {
  AmpStoryInteractiveQuiz({
    String? id,
    String? question,
    String? option1,
    String? option2,
    String? option3,
    String? option4,
    Map<String, String>? attributes,
  }) : super(
         'amp-story-interactive-quiz',
         attributes: {
           'id': ?id,
           'chip-text': ?question,
           'option-1-text': ?option1,
           'option-2-text': ?option2,
           'option-3-text': ?option3,
           'option-4-text': ?option4,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An interactive poll widget inside AMP Web Story pages.
class AmpStoryInteractivePoll extends DomComponent {
  AmpStoryInteractivePoll({
    String? id,
    String? question,
    String? option1,
    String? option2,
    String? option3,
    String? option4,
    Map<String, String>? attributes,
  }) : super(
         'amp-story-interactive-poll',
         attributes: {
           'id': ?id,
           'chip-text': ?question,
           'option-1-text': ?option1,
           'option-2-text': ?option2,
           'option-3-text': ?option3,
           'option-4-text': ?option4,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Displays interactive results matching poll/quiz selections.
class AmpStoryInteractiveResults extends DomComponent {
  AmpStoryInteractiveResults({
    String? id,
    String? prompt,
    Map<String, String>? attributes,
  }) : super(
         'amp-story-interactive-results',
         attributes: {
           'id': ?id,
           'prompt-text': ?prompt,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An interactive emoji slider inside AMP Web Story pages.
class AmpStoryInteractiveSlider extends DomComponent {
  AmpStoryInteractiveSlider({
    String? id,
    String? question,
    String? emoji,
    Map<String, String>? attributes,
  }) : super(
         'amp-story-interactive-slider',
         attributes: {
           'id': ?id,
           'chip-text': ?question,
           'emoji': ?emoji,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An audio control sticker inside AMP Web Stories allowing unmute actions.
class AmpStoryAudioSticker extends DomComponent {
  AmpStoryAudioSticker({
    Map<String, String>? attributes,
  }) : super('amp-story-audio-sticker', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Configurable subscriptions experience pane inside AMP Web Story pages.
class AmpStorySubscriptions extends DomComponent {
  AmpStorySubscriptions({
    Map<String, String>? attributes,
  }) : super('amp-story-subscriptions', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}
