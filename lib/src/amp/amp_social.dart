import '../core.dart';

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

/// Embeds a GitHub Gist securely via an iframe.
class AmpGist extends DomComponent {
  AmpGist({
    String? gistid,
    String? file,
    Map<String, String>? attributes,
  }) : super(
         'amp-gist',
         attributes: {
           'data-gistid': ?gistid,
           'data-file': ?file,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
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
