# AMP Social & Embed Skills

This skill set enables an AI Agent to construct and integrate pre-built social components and media widgets using standard, highly-optimized AMP social tags.

---

## 1. YouTube & Vimeo Video Embeds

### Purpose
Allows smooth embedding of YouTube and Vimeo players via `<amp-youtube>` and `<amp-vimeo>` to prevent blockages or render lag caused by traditional scripting.

### Parameters
- `videoid` (String, optional): The ID of the target video.
- `width` (String, optional): Element width.
- `height` (String, optional): Element height.
- `layout` (String, optional): AMP layout type.
- `attributes` (Map<String, String>, optional): Extra metadata.

### Dart Example
```dart
import 'package:blogger_theme/blogger_theme.dart';

final youtubeEmbed = AmpYoutube(
  videoid: 'dQw4w9WgXcQ',
  width: '560',
  height: '315',
  layout: 'responsive',
);

final vimeoEmbed = AmpVimeo(
  videoid: '76979871',
  width: '640',
  height: '360',
  layout: 'responsive',
);
```

---

## 2. SoundCloud Audio Embeds

### Purpose
Provides a component `<amp-soundcloud>` to render clean SoundCloud track widgets.

### Parameters
- `trackid` (String, optional): The SoundCloud track ID.
- `visual` (bool, optional): If true, renders the large image artwork player.

### Dart Example
```dart
final soundcloudEmbed = AmpSoundcloud(
  trackid: '4993116',
  visual: true,
);
```

---

## 3. DailyMotion & Gfycat Embeds

### Purpose
Supports DailyMotion videoid streams and Gfycat animations.

### Parameters
- `videoid` / `gfyid` (String, optional): Element specific ID.
- `width` / `height` / `layout`: Dimensions and rendering rules.

### Dart Example
```dart
final dmEmbed = AmpDailymotion(
  videoid: 'x7tg8lh',
  width: '480',
  height: '270',
  layout: 'responsive',
);

final gfycatEmbed = AmpGfycat(
  gfyid: 'ComplexImpishGoose',
  width: '640',
  height: '360',
  layout: 'responsive',
);
```

---

## 4. Instagram, Twitter & Pinterest Embeds

### Purpose
Embed social posts, pins, and boards from Instagram, Twitter, and Pinterest using efficient AMP wrappers.

### Parameters
- `shortcode` (String, optional): Instagram shortcode identifier.
- `tweetid` (String, optional): Twitter tweet ID.
- `pinId` / `pinDo` (String, optional): Pinterest Pin parameters.

### Dart Example
```dart
final instagramPost = AmpInstagram(
  shortcode: 'CG6p-v7A1N-',
  width: '400',
  height: '480',
  layout: 'responsive',
);

final tweet = AmpTwitter(
  tweetid: '1319340919321415680',
  width: '375',
  height: '472',
  layout: 'responsive',
);

final pin = AmpPinterest(
  pinId: '473652073315939268',
  pinDo: 'embedPin',
  width: '236',
  height: '350',
  layout: 'fixed',
);
```

---

## 5. Facebook Platform Integration

### Purpose
Fully integrates Facebook comments, likes, pages, and posts using specific Facebook-friendly AMP wrappers.

### Classes
- `AmpFacebook`: Standard Facebook posts/videos.
- `AmpFacebookComments`: Embed commenting sections.
- `AmpFacebookLike`: FB Like widget.
- `AmpFacebookPage`: FB Brand Pages.

### Dart Example
```dart
final fbComments = AmpFacebookComments(
  href: 'https://example.com/blog-post-1',
  numposts: '5',
  width: '500',
  height: '400',
  layout: 'responsive',
);
```

---

## 6. Social Share & AddThis Utilities

### Purpose
Empower users with social sharing buttons using `<amp-social-share>` or the complete AddThis toolbar component `<amp-addthis>`.

### Parameters
- `type` (String, optional): Platform type (e.g. `"twitter"`, `"facebook"`, `"linkedin"`).
- `pubid` / `widgetid` (String, optional): AddThis publisher/widget credentials.

### Dart Example
```dart
final shareRow = Div(
  attributes: {'class': 'share-container'},
  children: [
    AmpSocialShare(type: 'twitter'),
    AmpSocialShare(type: 'facebook'),
    AmpSocialShare(type: 'gplus'),
  ],
);

final addThisEmbed = AmpAddthis(
  pubid: 'ra-566d581179',
  widgetid: 'at-top-sharing',
  width: '320',
  height: '50',
  layout: 'fixed',
);
```
