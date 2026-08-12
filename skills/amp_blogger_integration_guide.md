# AMP & Blogger Integration Master Guide

This guide describes how an AI Agent can design and compile strict, 100% valid AMP HTML themes inside Google Blogger (Blogspot) using the `blogger_theme` Dart library.

---

## 1. Strict AMP Blogger Template Structure

To generate a valid AMP document, the top-level template must disable standard Blogger CSS injections, override injected namespace attributes, and integrate the required AMP metadata, boilerplates, and script engines.

### Recommended Configuration
1. **Disable Injected CSS**: Set `'b:css': 'false'` in the `BloggerTheme` attributes.
2. **Clear Namespaces**: Standard Blogger outputs XHTML attributes like `xmlns:b`. Use `BAttr` to reset them.
3. **Mandatory Meta Tags**: Add Charset and Viewport.
4. **Canonical Link**: Add `<link rel="canonical" href="...">`.
5. **Boilerplate CSS**: Add `<style amp-boilerplate>...</style>` and `<noscript>...` styles.
6. **AMP JS Engine**: Include the core `v0.js` script.

---

## 2. Master Template Blueprint

Here is the complete template blueprint that an AI agent should generate to compile a strict AMP theme:

```dart
import 'package:blogger_theme/blogger_theme.dart';

void main() {
  final theme = BloggerTheme(
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
    // Reset attributes to clean XML output for strict AMP validation
    children: [
      BAttr(name: 'xmlns', value: ''),
      BAttr(name: 'xmlns:b', value: ''),
      BAttr(name: 'xmlns:expr', value: ''),
      BAttr(name: 'xmlns:data', value: ''),
    ],
    head: [
      // Required AMP Head elements
      AmpCharset(),
      AmpViewport(),
      AmpCanonical('https://example.blogspot.com/'),
      const AmpBoilerplate(),
      AmpRuntimeScript(),

      // Extension script loaders
      AmpExtensionScript(extension: 'amp-sidebar'),
      AmpExtensionScript(extension: 'amp-carousel'),
    ],
    body: [
      AmpHtml(
        children: [
          Div(
            attributes: {'class': 'wrapper'},
            children: [
              H1(children: [Text('My AMP Blogger Theme')]),

              // Custom Sidebar menu
              AmpSidebar(
                id: 'menu-drawer',
                layout: 'nodisplay',
                side: 'left',
                children: [
                  Button(
                    attributes: {'on': 'tap:menu-drawer.close'},
                    children: [Text('Close Menu')],
                  ),
                ],
              ),

              // Custom Carousel slider
              AmpBaseCarousel(
                width: '600',
                height: '300',
                layout: 'responsive',
                loop: true,
                snap: true,
                children: [
                  AmpImg(src: 'slide1.png', width: '600', height: '300', layout: 'responsive'),
                  AmpImg(src: 'slide2.png', width: '600', height: '300', layout: 'responsive'),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  final xml = theme.generate();
  print(xml);
}
```

---

## 3. Best Practices for Agents

- **Always specify width & height**: AMP requires explicit layout sizes for elements like `AmpImg`, `AmpVideo`, and `AmpIframe` to maintain a zero-CLS (Cumulative Layout Shift) page load guarantee.
- **Strict HTTPS on Embeds**: Any script, stylesheet, or media file loaded dynamically in an iframe (`AmpIframe`) must utilize the `https://` protocol.
- **Load Script Extensions**: For every specialized element (e.g. `AmpSidebar`, `AmpCarousel`, `AmpYoutube`), ensure to append the corresponding `AmpExtensionScript` tag inside the theme's `head` block.
