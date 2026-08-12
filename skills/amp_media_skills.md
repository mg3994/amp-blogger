# AMP Media Skills

This skill set enables an AI Agent to embed, manipulate, and generate optimized media elements using AMP HTML components within a Blogger theme layout.

---

## 1. AmpImg Skill

### Purpose
Replaces the standard HTML `<img>` tag with the high-performance `<amp-img>` component. AMP requires the image dimensions (width and height) to be specified explicitly so the page layout can be calculated before resources load.

### Schema & Parameters
- `src` (String, optional): The URL of the image. Can be omitted if using expression attributes.
- `alt` (String, optional): Alternative text for accessibility.
- `width` (String, optional): Explicit width (e.g., `"400"`).
- `height` (String, optional): Explicit height (e.g., `"300"`).
- `layout` (String, optional): AMP layout type (e.g., `"responsive"`, `"fixed"`, `"intrinsic"`).
- `attributes` (Map<String, String>, optional): Additional HTML or Blogger-specific attributes (such as `expr:src` or class names).
- `children` (Iterable<Component>, optional): Optional placeholder or fallback components inside.

### Dart Example
```dart
import 'package:blogger_theme/blogger_theme.dart';

// Responsive AMP Image
final ampImage = AmpImg(
  src: 'https://example.com/image.jpg',
  alt: 'A beautiful scenery',
  width: '600',
  height: '400',
  layout: 'responsive',
);

// Blogger expression-bound AMP Image
final exprAmpImage = AmpImg(
  width: '800',
  height: '500',
  layout: 'responsive',
  attributes: {
    'expr:src': 'data:post.featuredImage',
    'expr:alt': 'data:post.title',
  },
);
```

---

## 2. AmpVideo Skill

### Purpose
Embeds video content using the optimized `<amp-video>` component, supporting custom control, autoplay, loops, and custom poster configurations.

### Schema & Parameters
- `src` (String, optional): The URL of the video file.
- `width` (String, optional): Width of the video frame.
- `height` (String, optional): Height of the video frame.
- `layout` (String, optional): AMP layout (e.g. `"responsive"`).
- `poster` (String, optional): Image URL to show before the video plays.
- `autoplay` (bool, optional): Auto plays the video when visible.
- `loop` (bool, optional): Loops the video play.
- `controls` (bool, optional): Show browser controls.
- `attributes` (Map<String, String>, optional): Custom key-values.

### Dart Example
```dart
final ampVideo = AmpVideo(
  src: 'https://example.com/video.mp4',
  width: '640',
  height: '360',
  layout: 'responsive',
  poster: 'https://example.com/poster.jpg',
  autoplay: true,
  controls: true,
);
```

---

## 3. AmpAudio Skill

### Purpose
Provides a customizable `<amp-audio>` tag to embed HTML5 audio content safely and efficiently.

### Schema & Parameters
- `src` (String, optional): Audio file URL.
- `autoplay` (bool, optional): Automatically play audio when loaded.
- `loop` (bool, optional): Loop audio playback.
- `attributes` (Map<String, String>, optional): Map of extra attributes.

### Dart Example
```dart
final ampAudio = AmpAudio(
  src: 'https://example.com/podcast.mp3',
  autoplay: false,
  loop: true,
);
```

---

## 4. AmpAnim Skill

### Purpose
Embeds animated images (e.g., GIFs) using `<amp-anim>` for improved scroll performance and reduced CPU cycles.

### Schema & Parameters
- `src` (String, optional): Animated image URL.
- `alt` (String, optional): Alternative description.
- `width` (String, optional): Frame width.
- `height` (String, optional): Frame height.
- `layout` (String, optional): Layout type.
- `attributes` (Map<String, String>, optional): Additional parameters.

### Dart Example
```dart
final ampAnim = AmpAnim(
  src: 'https://example.com/animation.gif',
  width: '300',
  height: '250',
  layout: 'fixed',
  alt: 'Loading spinner',
);
```

---

## 5. AmpIframe Skill

### Purpose
Integrates rich third-party content securely using `<amp-iframe>`, enforcing sandbox constraints and preventing style jank.

### Schema & Parameters
- `src` (String, optional): URL of the iframe content. Needs to be HTTPS.
- `width` (String, optional): Frame width.
- `height` (String, optional): Frame height.
- `layout` (String, optional): Layout (e.g. `"responsive"`).
- `sandbox` (String, optional): Permissions (e.g. `"allow-scripts allow-same-origin"`).
- `attributes` (Map<String, String>, optional): Additional configuration entries.

### Dart Example
```dart
final ampIframe = AmpIframe(
  src: 'https://maps.example.com/embed',
  width: '800',
  height: '450',
  layout: 'responsive',
  sandbox: 'allow-scripts allow-same-origin',
);
```
