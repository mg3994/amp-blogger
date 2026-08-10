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

/// Shows personalized content recommendation blocks.
class AmpRecommender extends DomComponent {
  AmpRecommender({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-recommender', attributes: attributes);
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

/// An AMP component to embed YouTube videos.
class AmpYoutube extends DomComponent {
  AmpYoutube({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-youtube',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Vimeo videos.
class AmpVimeo extends DomComponent {
  AmpVimeo({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-vimeo',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed SoundCloud audio tracks.
class AmpSoundcloud extends DomComponent {
  AmpSoundcloud({
    String? trackid,
    bool? visual,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-soundcloud',
         attributes: {
           'data-trackid': ?trackid,
           if (visual == true) 'data-visual': 'true',
           ...?attributes,
         },
       );
}

/// An AMP component to embed DailyMotion videos.
class AmpDailymotion extends DomComponent {
  AmpDailymotion({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-dailymotion',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Gfycat animations.
class AmpGfycat extends DomComponent {
  AmpGfycat({
    String? gfyid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-gfycat',
         attributes: {
           'data-gfyid': ?gfyid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Instagram posts.
class AmpInstagram extends DomComponent {
  AmpInstagram({
    String? shortcode,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-instagram',
         attributes: {
           'data-shortcode': ?shortcode,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Twitter tweets.
class AmpTwitter extends DomComponent {
  AmpTwitter({
    String? tweetid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-twitter',
         attributes: {
           'data-tweetid': ?tweetid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Facebook content.
class AmpFacebook extends DomComponent {
  AmpFacebook({
    String? href,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-facebook',
         attributes: {
           'data-href': ?href,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Facebook Comments.
class AmpFacebookComments extends DomComponent {
  AmpFacebookComments({
    String? href,
    String? numposts,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-facebook-comments',
         attributes: {
           'data-href': ?href,
           'data-numposts': ?numposts,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed a Facebook Like button.
class AmpFacebookLike extends DomComponent {
  AmpFacebookLike({
    String? href,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-facebook-like',
         attributes: {
           'data-href': ?href,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Facebook Pages.
class AmpFacebookPage extends DomComponent {
  AmpFacebookPage({
    String? href,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-facebook-page',
         attributes: {
           'data-href': ?href,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Pinterest boards, pins, and profiles.
class AmpPinterest extends DomComponent {
  AmpPinterest({
    String? pinId,
    String? pinDo,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-pinterest',
         attributes: {
           'data-pin-id': ?pinId,
           'data-pin-do': ?pinDo,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Playbuzz content.
class AmpPlaybuzz extends DomComponent {
  AmpPlaybuzz({
    String? item,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-playbuzz',
         attributes: {
           'data-item': ?item,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Reach Player videos.
class AmpReachPlayer extends DomComponent {
  AmpReachPlayer({
    String? embedId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-reach-player',
         attributes: {
           'data-embed-id': ?embedId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Brightcove videos.
class AmpBrightcove extends DomComponent {
  AmpBrightcove({
    String? account,
    String? playerId,
    String? videoId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-brightcove',
         attributes: {
           'data-account': ?account,
           'data-player-id': ?playerId,
           'data-video-id': ?videoId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Kaltura Player content.
class AmpKalturaPlayer extends DomComponent {
  AmpKalturaPlayer({
    String? partnerId,
    String? uiconfId,
    String? entryId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-kaltura-player',
         attributes: {
           'data-partner-id': ?partnerId,
           'data-uiconf-id': ?uiconfId,
           'data-entry-id': ?entryId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed JW Player videos.
class AmpJwplayer extends DomComponent {
  AmpJwplayer({
    String? mediaid,
    String? playerid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-jwplayer',
         attributes: {
           'data-mediaid': ?mediaid,
           'data-playerid': ?playerid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Hulu videos.
class AmpHulu extends DomComponent {
  AmpHulu({
    String? embedId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-hulu',
         attributes: {
           'data-embed-id': ?embedId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed dynamic advertisements or embeds.
class AmpEmbed extends DomComponent {
  AmpEmbed({
    String? type,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-embed',
         attributes: {
           'type': ?type,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to embed Embedly media cards.
class AmpEmbedly extends DomComponent {
  AmpEmbedly({
    String? url,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-embedly',
         attributes: {
           'data-url': ?url,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

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

/// An AMP state container for managing client-side state in AMP pages.
class AmpState extends DomComponent {
  AmpState({
    String? id,
    String? src,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-state',
         attributes: {
           'id': ?id,
           'src': ?src,
           ...?attributes,
         },
       );
}

/// An AMP dynamic list component that fetches JSON content and renders it via a template.
class AmpList extends DomComponent {
  AmpList({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? binding,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-list',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           'binding': ?binding,
           ...?attributes,
         },
       );
}

/// An AMP helper representing forms in AMP HTML.
class AmpForm extends DomComponent {
  AmpForm({
    String? method,
    String? actionXhr,
    String? target,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'form',
         attributes: {
           'method': ?method,
           'action-xhr': ?actionXhr,
           'target': ?target,
           ...?attributes,
         },
       );
}

/// An AMP selection element for dynamic or interactive components.
class AmpSelector extends DomComponent {
  AmpSelector({
    String? id,
    String? name,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-selector',
         attributes: {
           'id': ?id,
           'name': ?name,
           ...?attributes,
         },
       );
}

/// An AMP auto-complete input field.
class AmpAutocomplete extends DomComponent {
  AmpAutocomplete({
    String? filter,
    String? minCharacters,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-autocomplete',
         attributes: {
           'filter': ?filter,
           'min-characters': ?minCharacters,
           ...?attributes,
         },
       );
}

/// An AMP date picker calendar component.
class AmpDatePicker extends DomComponent {
  AmpDatePicker({
    String? mode,
    String? type,
    String? format,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-date-picker',
         attributes: {
           'mode': ?mode,
           'type': ?type,
           'format': ?format,
           ...?attributes,
         },
       );
}

/// An AMP date display component to format dates on the client side.
class AmpDateDisplay extends DomComponent {
  AmpDateDisplay({
    String? datetime,
    String? displayIn,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-date-display',
         attributes: {
           'datetime': ?datetime,
           'display-in': ?displayIn,
           ...?attributes,
         },
       );
}

/// An AMP relative timeago display component.
class AmpTimeago extends DomComponent {
  AmpTimeago({
    String? datetime,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-timeago',
         attributes: {
           'datetime': ?datetime,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP live list component to implement dynamic content updates.
class AmpLiveList extends DomComponent {
  AmpLiveList({
    String? id,
    String? pollInterval,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-live-list',
         attributes: {
           'id': ?id,
           'poll-interval': ?pollInterval,
           ...?attributes,
         },
       );
}

/// An AMP Mustache template wrapper (`<template type="amp-mustache">`).
class AmpMustache extends DomComponent {
  AmpMustache({
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'template',
         attributes: {
           'type': 'amp-mustache',
           ...?attributes,
         },
       );
}

/// An AMP next-page component to implement infinite scroll.
class AmpNextPage extends DomComponent {
  AmpNextPage({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-next-page', attributes: attributes);
}

/// An AMP component to register service workers.
class AmpInstallServiceworker extends DomComponent {
  AmpInstallServiceworker({
    String? src,
    String? dataIframeSrc,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-install-serviceworker',
         attributes: {
           'src': ?src,
           'data-iframe-src': ?dataIframeSrc,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP push notifications module.
class AmpWebPush extends DomComponent {
  AmpWebPush({
    String? id,
    String? helperIframeUrl,
    String? permissionDialogUrl,
    String? serviceWorkerUrl,
    Map<String, String>? attributes,
  }) : super(
         'amp-web-push',
         attributes: {
           'id': ?id,
           'helper-iframe-url': ?helperIframeUrl,
           'permission-dialog-url': ?permissionDialogUrl,
           'service-worker-url': ?serviceWorkerUrl,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP component for displaying user notifications.
class AmpUserNotification extends DomComponent {
  AmpUserNotification({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-user-notification',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to manage cookie and storage consent.
class AmpConsent extends DomComponent {
  AmpConsent({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-consent',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP geo-location utility component.
class AmpGeo extends DomComponent {
  AmpGeo({
    String? id,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-geo',
         attributes: {
           'id': ?id,
           ...?attributes,
         },
       );
}

/// An AMP social sharing button component.
class AmpSocialShare extends DomComponent {
  AmpSocialShare({
    String? type,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-social-share',
         attributes: {
           'type': ?type,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to integrate AddThis social tools.
class AmpAddthis extends DomComponent {
  AmpAddthis({
    String? pubid,
    String? widgetid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-addthis',
         attributes: {
           'data-pubid': ?pubid,
           'data-widgetid': ?widgetid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to support MRAID ads.
class AmpMraid extends DomComponent {
  AmpMraid({
    Map<String, String>? attributes,
  }) : super('amp-mraid', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to embed advertisements.
class AmpAd extends DomComponent {
  AmpAd({
    String? type,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-ad',
         attributes: {
           'type': ?type,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
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
