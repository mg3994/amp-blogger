# AMP Layout & Presentation Skills

This skill set enables an AI Agent to build modern, highly-responsive navigation menus, carousels, accordions, lightboxes, and layout FX using AMP HTML's native design tags.

---

## 1. AmpCarousel Skill

### Purpose
Implements a clean content carousel or image slider without any external JavaScript dependency.

### Parameters
- `type` (String, optional): Slideshow type, either `"slides"` or `"carousel"`.
- `width` (String, optional): Element width.
- `height` (String, optional): Element height.
- `layout` (String, optional): Layout type.
- `autoplay` (bool, optional): Automatically cycles through items.
- `delay` (String, optional): Interval between slides in ms (e.g. `"3000"`).
- `loop` (bool, optional): Loop continuously.

### Dart Example
```dart
import 'package:blogger_theme/blogger_theme.dart';

final imgCarousel = AmpCarousel(
  type: 'slides',
  width: '800',
  height: '400',
  layout: 'responsive',
  autoplay: true,
  delay: '4000',
  loop: true,
  children: [
    AmpImg(src: 'https://example.com/slide1.jpg', width: '800', height: '400', layout: 'responsive'),
    AmpImg(src: 'https://example.com/slide2.jpg', width: '800', height: '400', layout: 'responsive'),
    AmpImg(src: 'https://example.com/slide3.jpg', width: '800', height: '400', layout: 'responsive'),
  ],
);
```

---

## 2. AmpSidebar Skill

### Purpose
Implements temporary sliding menus (e.g., mobile side navigation bars) using the native side-drawer element.

### Parameters
- `id` (String, optional): Unique ID used to open or close the sidebar.
- `layout` (String, optional): Always `"nodisplay"` for sidebars.
- `side` (String, optional): Placement edge, either `"left"` or `"right"`.

### Dart Example
```dart
final mobileSidebar = AmpSidebar(
  id: 'menu-drawer',
  layout: 'nodisplay',
  side: 'left',
  children: [
    Button(
      attributes: {'on': 'tap:menu-drawer.close'},
      children: [Text('Close Menu')],
    ),
    Nav(
      children: [
        Ul(
          children: [
            Li(children: [A(attributes: {'href': '/'}, children: [Text('Home')])]),
            Li(children: [A(attributes: {'href': '/p/about.html'}, children: [Text('About')])]),
          ],
        ),
      ],
    ),
  ],
);
```

---

## 3. AmpAccordion Skill

### Purpose
Implements accordion menus or collapsible QA boxes for organized, user-friendly mobile layouts.

### Parameters
- `animate` (bool, optional): Applies slide animations when expanding/collapsing.

### Dart Example
```dart
final accordionMenu = AmpAccordion(
  animate: true,
  children: [
    Section(
      children: [
        H3(children: [Text('Section 1 - Details')]),
        Div(children: [Text('This is the hidden content for section 1.')]),
      ],
    ),
    Section(
      children: [
        H3(children: [Text('Section 2 - Details')]),
        Div(children: [Text('This is the hidden content for section 2.')]),
      ],
    ),
  ],
);
```

---

## 4. AmpLightbox & AmpLightboxGallery Skills

### Purpose
Presents focus-oriented image views or media overlays cleanly upon triggering tap events.

### Parameters
- `id` (String, optional): Unique identifier for triggering from parent element.

### Dart Example
```dart
final lightboxOverlay = AmpLightbox(
  id: 'contact-lightbox',
  layout: 'nodisplay',
  children: [
    Div(
      attributes: {'class': 'lightbox-content', 'on': 'tap:contact-lightbox.close'},
      children: [
        H2(children: [Text('Contact Us')]),
        P(children: [Text('Call us at +1 234 567 890.')]),
      ],
    ),
  ],
);
```

---

## 5. AmpFitText Skill

### Purpose
Auto-scales font-size of text to completely fit into a constrained visual container.

### Parameters
- `minFontSize` (String, optional): Minimum font-size limit.
- `maxFontSize` (String, optional): Maximum font-size limit.

### Dart Example
```dart
final titleBanner = AmpFitText(
  width: '300',
  height: '100',
  layout: 'responsive',
  minFontSize: '16',
  maxFontSize: '72',
  children: [
    Text('Welcome to our AMP Blog!'),
  ],
);
```

---

## 6. Parallax, flying carpet & other visual FX

### Purpose
Enables modern scroll effects (like Parallax, Flying Carpets, and position observers) natively within the theme template.

### Classes
- `AmpFxFlyingCarpet`: Keeps background static while scrolling.
- `AmpFxCollection`: Bundles special scroll effects.
- `AmpPositionObserver`: Observes viewport status of DOM nodes.
- `AmpAnimation`: Triggers complex CSS keyframe routines.

### Dart Example
```dart
final flyingCarpetSection = AmpFxFlyingCarpet(
  height: '250',
  children: [
    AmpImg(src: 'https://example.com/carpet-bg.jpg', width: '1600', height: '900', layout: 'fixed'),
  ],
);
```

---

## 7. AmpBaseCarousel Skill

### Purpose
Implements the newer, more modern AMP carousel component for customizable content sliders with better touch gestures.

### Parameters
- `width` / `height` / `layout`: Component bounds.
- `loop` (bool, optional): Loop slide sequence.
- `snap` (bool, optional): Snapping behaviour on slides.

### Dart Example
```dart
final modernCarousel = AmpBaseCarousel(
  width: '600',
  height: '300',
  layout: 'responsive',
  loop: true,
  snap: true,
  children: [
    Div(children: [Text('Slide A')]),
    Div(children: [Text('Slide B')]),
  ],
);
```

---

## 8. AMP Web Stories (amp-story)

### Purpose
Creates visually rich, tap-through Web Stories with nested pages, grid layers, and background/foreground graphics.

### Classes
- `AmpStory`: Story canvas.
- `AmpStoryPage`: An individual slide story view.
- `AmpStoryGridLayer`: Arranges elements inside a page (e.g. template layouts: `"vertical"`, `"horizontal"`, `"third-thirds"`).
- `AmpStoryBookend`: Story CTA bookend config file reference.

### Dart Example
```dart
final webStory = AmpStory(
  title: 'My First Story',
  publisher: 'Blogger Author',
  publisherLogoSrc: 'logo.png',
  posterPortraitSrc: 'poster.jpg',
  children: [
    AmpStoryPage(
      id: 'page1',
      children: [
        AmpStoryGridLayer(
          template: 'vertical',
          children: [
            H1(children: [Text('The Adventure Begins')]),
            AmpImg(src: 'scene1.jpg', width: '720', height: '1280', layout: 'responsive'),
          ],
        ),
      ],
    ),
  ],
);
```
