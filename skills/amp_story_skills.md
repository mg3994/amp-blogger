# AMP Web Stories & Interactive Skills

This skill set enables an AI Agent to construct highly interactive, visual, tap-through AMP Web Stories (`<amp-story>`) and utilize native interactive widgets (polls, quizzes, sliders) inside standard and story pages.

---

## 1. AMP Web Story Container (`amp-story`)

### Purpose
Represents the top-level canvas for a visual, full-screen story experience on the mobile web.

### Parameters
- `title` (String, optional): Title of the story.
- `publisher` (String, optional): Name of the story publisher.
- `publisherLogoSrc` (String, optional): Publisher icon brand logo URL (requires a 1:1 aspect ratio).
- `posterPortraitSrc` (String, optional): Cover poster image (requires a 3:4 aspect ratio).

### Dart Example
```dart
import 'package:blogger_theme/blogger_theme.dart';

final webStory = AmpStory(
  title: 'Exploration of Space',
  publisher: 'Cosmos Magazine',
  publisherLogoSrc: 'https://example.com/logo.png',
  posterPortraitSrc: 'https://example.com/cover.jpg',
  children: [
    // Page list elements...
  ],
);
```

---

## 2. Story Pages & Grid Layers (`amp-story-page`, `amp-story-grid-layer`)

### Purpose
Organizes the story into a sequence of slides. Each page contains layers that define the visual layout template (such as `"fill"`, `"vertical"`, `"horizontal"`, or `"thirds"`).

### Dart Example
```dart
final storyPage = AmpStoryPage(
  id: 'slide-intro',
  children: [
    // Background layer
    AmpStoryGridLayer(
      template: 'fill',
      children: [
        AmpImg(src: 'galaxy.jpg', width: '720', height: '1280', layout: 'responsive'),
      ],
    ),
    // Foreground text layer
    AmpStoryGridLayer(
      template: 'vertical',
      children: [
        H1(children: [Text('Into the Void')]),
        P(children: [Text('A journey across stars...')]),
      ],
    ),
  ],
);
```

---

## 3. Interactive Widgets (Quizzes, Polls, Sliders)

### Purpose
Enables engaging, client-side interactions where readers can cast votes, answer quiz questions, or slide custom emoji rating bars.

### Classes
- `AmpStoryInteractiveQuiz`: Interactive quiz with a question and up to 4 multiple choice options.
- `AmpStoryInteractivePoll`: Poll choice tracker.
- `AmpStoryInteractiveSlider`: Emoji slider for custom user ratings.
- `AmpStoryInteractiveResults`: Displays end results matching the voter selections.

### Dart Example
```dart
final quizPage = AmpStoryPage(
  id: 'quiz-slide',
  children: [
    AmpStoryGridLayer(
      template: 'vertical',
      children: [
        H2(children: [Text('Quick Knowledge Check')]),

        AmpStoryInteractiveQuiz(
          id: 'mars-gravity-quiz',
          question: 'What is Martian gravity relative to Earth?',
          option1: '38% (Correct)',
          option2: '50%',
          option3: '12%',
          option4: '100%',
        ),
      ],
    ),
  ],
);
```

---

## 4. Bookends & Outlinks (`amp-story-bookend`, `amp-story-page-outlink`)

### Purpose
Loads Call-to-Actions (CTAs), external outlinks, or the final social-share bookend at the end of the Web Story.

### Dart Example
```dart
final outlinkPage = AmpStoryPage(
  id: 'end-slide',
  children: [
    AmpStoryGridLayer(
      template: 'vertical',
      children: [
        H1(children: [Text('Thanks for reading!')]),
      ],
    ),
    // Standard outlink swipe-up action
    AmpStoryPageOutlink(
      layout: 'nodisplay',
      children: [
        A(attributes: {'href': 'https://example.com/subscribe'}, children: [Text('Subscribe Now')]),
      ],
    ),
  ],
);
```
