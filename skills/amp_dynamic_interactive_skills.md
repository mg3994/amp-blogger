# AMP Dynamic, Interactive & Utility Skills

This skill set enables an AI Agent to construct robust client-side interactivity, dynamic list rendering, forms processing, and utility components using AMP HTML's native functional tags.

---

## 1. AmpState Skill (AMP-Bind)

### Purpose
Supports complex client-side client state tracking and variable bindings via `<amp-state>` variables.

### Parameters
- `id` (String, optional): The name of the state object.
- `src` (String, optional): JSON source file for initializing state variables.

### Dart Example
```dart
import 'package:blogger_theme/blogger_theme.dart';

final clientState = AmpState(
  id: 'blogPreferences',
  children: [
    RawText('{"theme": "dark", "fontSize": "medium"}'),
  ],
);
```

---

## 2. AmpList & AmpMustache Skill

### Purpose
Retrieves remote JSON payloads and generates dynamic HTML content layouts using client-side Mustache templates.

### Parameters
- `src` (String, optional): Endpoint URL yielding the items array.
- `width` / `height` / `layout`: Dimension guidelines.
- `binding` (String, optional): Binding behaviors (e.g., `"no"` or `"refresh"`).

### Dart Example
```dart
final recentPostsList = AmpList(
  src: 'https://example.com/api/posts.json',
  width: '600',
  height: '400',
  layout: 'responsive',
  children: [
    AmpMustache(
      children: [
        Div(
          attributes: {'class': 'post-card'},
          children: [
            H3(children: [Text('{{title}}')]),
            P(children: [Text('{{snippet}}')]),
          ],
        ),
      ],
    ),
  ],
);
```

---

## 3. AmpForm Skill

### Purpose
Implements secure form submissions and dynamic response processing natively within AMP HTML pages.

### Parameters
- `method` (String, optional): Form HTTP submission method (typically `"post"`).
- `actionXhr` (String, optional): Target endpoint taking XMLHttpRequests.
- `target` (String, optional): Context target (e.g., `"_top"`).

### Dart Example
```dart
final contactForm = AmpForm(
  method: 'post',
  actionXhr: 'https://example.com/api/submit-form',
  target: '_top',
  children: [
    Input(attributes: {'type': 'text', 'name': 'name', 'required': 'required'}),
    Input(attributes: {'type': 'email', 'name': 'email', 'required': 'required'}),
    Button(attributes: {'type': 'submit'}, children: [Text('Submit Now')]),
  ],
);
```

---

## 4. Selector & Inputs (Autocomplete & Pickers)

### Purpose
Provides selectors and complex inputs like Autocomplete inputs and Date calendars natively.

### Classes
- `AmpSelector`: Choice/Selection list items.
- `AmpAutocomplete`: Dynamic autocomplete text list.
- `AmpDatePicker`: Date selection widgets.

### Dart Example
```dart
final modeSelector = AmpSelector(
  name: 'display-mode',
  children: [
    Div(attributes: {'option': 'list'}, children: [Text('List View')]),
    Div(attributes: {'option': 'grid'}, children: [Text('Grid View')]),
  ],
);
```

---

## 5. Client Date-Time Helpers

### Purpose
Formats and handles dates and relative times dynamically inside the user's browser.

### Classes
- `AmpDateDisplay`: Formats date strings on the client.
- `AmpTimeago`: Shows friendly relative times (e.g. `"2 hours ago"`).

### Dart Example
```dart
final dateDisplay = AmpDateDisplay(
  datetime: '2023-11-15T09:30:00Z',
  displayIn: 'local',
  children: [
    AmpMustache(children: [Text('{{dayName}}, {{day}} {{monthName}} {{year}}')]),
  ],
);

final agoDisplay = AmpTimeago(
  datetime: '2023-11-15T09:30:00Z',
  width: '100',
  height: '20',
  layout: 'fixed',
  children: [Text('2023-11-15')],
);
```

---

## 6. Service Worker, Geo, Push & Notifications

### Purpose
Injects service workers, handles geolocation, push preferences, user notifications, cookie consent, and advertising.

### Classes
- `AmpInstallServiceworker`: Registers a service worker.
- `AmpWebPush`: Configures web push modules.
- `AmpUserNotification`: Prompts banner warnings.
- `AmpConsent`: Collects compliance consents.
- `AmpGeo`: Extracts geo-location keys.
- `AmpAd`: Inserts monetized ads dynamically.

### Dart Example
```dart
final consentPrompt = AmpConsent(
  id: 'gdpr-consent',
  layout: 'nodisplay',
  children: [
    Div(
      attributes: {'class': 'consent-dialog'},
      children: [
        P(children: [Text('We use cookies to enhance your experience.')]),
        Button(attributes: {'on': 'tap:gdpr-consent.accept'}, children: [Text('Accept')]),
      ],
    ),
  ],
);

final displayAd = AmpAd(
  type: 'doubleclick',
  width: '320',
  height: '50',
  layout: 'fixed',
);
```

---

## 7. AMP Document Core & Layout Helpers

### Purpose
Simplifies constructing perfectly valid AMP HTML page structures, including mandatory head tags, runtime engines, boilerplate CSS blocks, and extension script loaders.

### Classes
- `AmpHtml`: High level `<html>` helper with native `amp` tags.
- `AmpCharset`: `<meta charset="utf-8"/>` tag.
- `AmpViewport`: Standard responsive viewport meta tag.
- `AmpCanonical`: High level Canonical link tag helper.
- `AmpBoilerplate`: Generates the mandatory AMP stylesheet and noscript fallbacks.
- `AmpRuntimeScript`: Loads the main AMP JS engine.
- `AmpExtensionScript`: Helper component to easily pull in external AMP element files (like `amp-sidebar` or `amp-carousel`).

### Dart Example
```dart
final fullAmpTheme = BloggerTheme(
  attributes: {
    'xmlns': 'http://www.w3.org/1999/xhtml',
    'xmlns:b': 'http://www.google.com/2005/gml/b',
    'xmlns:expr': 'http://www.google.com/2005/gml/expr',
    'xmlns:data': 'http://www.google.com/2005/gml/data',
  },
  head: [
    AmpCharset(),
    AmpViewport(),
    AmpCanonical('https://example.blogspot.com/'),
    const AmpBoilerplate(),
    AmpRuntimeScript(),
    AmpExtensionScript(extension: 'amp-sidebar'),
    AmpExtensionScript(extension: 'amp-carousel', version: '0.2'),
  ],
  body: [
    AmpHtml(
      children: [
        Div(
          attributes: {'class': 'content'},
          children: [
            H1(children: [Text('Valid AMP Page')]),
          ],
        ),
      ],
    ),
  ],
);
```

---

## 8. AMP Blogger Integration: XML Attribute Override & Resetting Technique

### Purpose
Standard Blogger XML compilers inject namespace attributes automatically (such as `xmlns="http://www.w3.org/1999/xhtml"`, `xmlns:b="..."`, `xmlns:expr="..."`, and `xmlns:data="..."`) into the top-level outer document tags. For an AMP page to validate strictly under the AMP standard, these namespace definitions must be reset or removed.

### Solution
Inside the theme declaration, you can utilize Blogger's native `BAttr` elements to override and clear those XML namespace attributes, resetting them to clean, empty strings.

### Dart Example
```dart
final ampBloggerTheme = BloggerTheme(
  attributes: {
    'b:css': 'false',
    'b:defaultwidgetversion': '2',
    'b:layoutsVersion': '3',
    'b:responsive': 'true',
    'b:templateUrl': 'plus-ui.xml',
    'b:templateVersion': '3.7.0',
    'xmlns': 'http://www.w3.org/1999/xhtml',
    'xmlns:b': 'http://www.google.com/2005/gml/b',
    'xmlns:data': 'http://www.google.com/2005/gml/data',
    'xmlns:expr': 'http://www.google.com/2005/gml/expr',
  },
  children: [
    // Override and reset namespaces for strict AMP validity
    BAttr(name: 'xmlns', value: ''),
    BAttr(name: 'xmlns:b', value: ''),
    BAttr(name: 'xmlns:expr', value: ''),
    BAttr(name: 'xmlns:data', value: ''),
  ],
  head: [
    AmpCharset(),
    AmpViewport(),
    const AmpBoilerplate(),
    AmpRuntimeScript(),
  ],
  body: [
    // Your layouts here...
  ],
);
```
