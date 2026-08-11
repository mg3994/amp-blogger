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

/// Embeds videos from 3Q SDN.
class Amp3qPlayer extends DomComponent {
  Amp3qPlayer({
    String? playoutId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-3q-player',
         attributes: {
           'data-playout-id': ?playoutId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players from POWR.
class AmpPowrPlayer extends DomComponent {
  AmpPowrPlayer({
    String? account,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-powr-player',
         attributes: {
           'data-account': ?account,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds a secure TikTok video player.
class AmpTiktok extends DomComponent {
  AmpTiktok({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-tiktok',
         attributes: {
           'data-src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds Reddit posts or comments.
class AmpReddit extends DomComponent {
  AmpReddit({
    String? src,
    String? embedtype,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-reddit',
         attributes: {
           'data-src': ?src,
           'data-embedtype': ?embedtype,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds a secure Imgur image or gallery.
class AmpImgur extends DomComponent {
  AmpImgur({
    String? imgurid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-imgur',
         attributes: {
           'data-imgurid': ?imgurid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
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

/// Embeds a Google Document, Sheet, Slide, or Form securely.
class AmpGoogleDocumentEmbed extends DomComponent {
  AmpGoogleDocumentEmbed({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-google-document-embed',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds a WordPress post dynamically.
class AmpWordpressEmbed extends DomComponent {
  AmpWordpressEmbed({
    String? url,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-wordpress-embed',
         attributes: {
           'data-url': ?url,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds interactive polls or widgets from BeOpinion.
class AmpBeopinion extends DomComponent {
  AmpBeopinion({
    String? myId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-beopinion',
         attributes: {
           'data-my-id': ?myId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds cloud-hosted Slike Video Players.
class AmpSlikeplayer extends DomComponent {
  AmpSlikeplayer({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-slikeplayer',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds a RedBull TV video stream player.
class AmpRedbullPlayer extends DomComponent {
  AmpRedbullPlayer({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-redbull-player',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Displays video ads utilizing the Google Interactive Media Ads (IMA) SDK.
class AmpImaVideo extends DomComponent {
  AmpImaVideo({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-ima-video',
         attributes: {
           'data-src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds video clips from İzlesene.com.
class AmpIzlesene extends DomComponent {
  AmpIzlesene({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-izlesene',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds an interactive Megaphone podcast player.
class AmpMegaphone extends DomComponent {
  AmpMegaphone({
    String? episode,
    Map<String, String>? attributes,
  }) : super(
         'amp-megaphone',
         attributes: {
           'data-episode': ?episode,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players from MowPlayer.
class AmpMrowplayer extends DomComponent {
  AmpMrowplayer({
    String? mediaid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-mowplayer',
         attributes: {
           'data-mediaid': ?mediaid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds O2 video player content.
class AmpO2Player extends DomComponent {
  AmpO2Player({
    String? pid,
    String? vid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-o2-player',
         attributes: {
           'data-pid': ?pid,
           'data-vid': ?vid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds Ooyala video player streams.
class AmpOoyalaPlayer extends DomComponent {
  AmpOoyalaPlayer({
    String? embedCode,
    String? pcode,
    String? playerid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-ooyala-player',
         attributes: {
           'data-embedcode': ?embedCode,
           'data-pcode': ?pcode,
           'data-playerid': ?playerid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds Springboard video streams.
class AmpSpringboardPlayer extends DomComponent {
  AmpSpringboardPlayer({
    String? contentid,
    String? playerid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-springboard-player',
         attributes: {
           'data-contentid': ?contentid,
           'data-playerid': ?playerid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds animated Vine video loops.
class AmpVine extends DomComponent {
  AmpVine({
    String? vineid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-vine',
         attributes: {
           'data-vineid': ?vineid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds Viqeo video stream players.
class AmpViqeoPlayer extends DomComponent {
  AmpViqeoPlayer({
    String? videoid,
    String? profileid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-viqeo-player',
         attributes: {
           'data-videoid': ?videoid,
           'data-profileid': ?profileid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds customized Wistia video player clips.
class AmpWistiaPlayer extends DomComponent {
  AmpWistiaPlayer({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-wistia-player',
         attributes: {
           'data-videoid': ?videoid,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Embeds interactive reviews widgets from Yotpo.
class AmpYotpo extends DomComponent {
  AmpYotpo({
    String? widgetType,
    String? appKey,
    String? productId,
    Map<String, String>? attributes,
  }) : super(
         'amp-yotpo',
         attributes: {
           'data-widget-type': ?widgetType,
           'data-app-key': ?appKey,
           'data-product-id': ?productId,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}
