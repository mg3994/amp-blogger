/// A node in the Blogger theme component tree.
///
/// All renderable objects in this package implement [Component].
abstract class Component {
  const Component();
  Iterable<Component> build();
}

/// A text node that is rendered with optional XML escaping.
class Text extends Component {
  final String value;
  final bool escape;

  const Text(this.value, {this.escape = true});

  @override
  Iterable<Component> build() => [];
}

/// A raw text node that disables XML escaping.
class RawText extends Text {
  const RawText(super.value, {super.escape = false});
}

/// A DOM-like element with a tag, attributes, and child components.
class DomComponent extends Component {
  final String tag;
  final Map<String, String>? attributes;
  final Iterable<Component>? children;

  const DomComponent(this.tag, {this.attributes, this.children});

  @override
  Iterable<Component> build() => children ?? [];
}

/// A wrapper for grouping components without introducing a DOM tag.
class Fragment extends Component {
  final Iterable<Component> children;

  const Fragment({required this.children});

  @override
  Iterable<Component> build() => children;
}

/// Escapes XML reserved characters, filters XML 1.0 restricted control characters (C0 and C1),
/// and converts non-ASCII Unicode characters into safe XML hexadecimal Numeric Character References (NCRs).
String _escapeXml(String text) {
  final sb = StringBuffer();
  for (final rune in text.runes) {
    if (rune == 38) {
      // '&'
      sb.write('&amp;');
    } else if (rune == 60) {
      // '<'
      sb.write('&lt;');
    } else if (rune == 62) {
      // '>'
      sb.write('&gt;');
    } else if (rune == 34) {
      // '"'
      sb.write('&quot;');
    } else if (rune == 39) {
      // "'"
      sb.write('&apos;');
    } else if ((rune >= 0x00 && rune <= 0x08) ||
        rune == 0x0B ||
        rune == 0x0C ||
        (rune >= 0x0E && rune <= 0x1F) ||
        (rune >= 0x7F && rune <= 0x9F)) {
      sb.write(' ');
    } else if (rune >= 0x09 && rune <= 0x0A) {
      // Tab, LF
      sb.writeCharCode(rune);
    } else if (rune == 0x0D) {
      // CR
      sb.writeCharCode(rune);
    } else if (rune >= 0x20 && rune <= 0x7E) {
      // Standard ASCII printable
      sb.writeCharCode(rune);
    } else {
      // Non-ASCII Unicode character - convert to hex NCR
      sb.write('&#x${rune.toRadixString(16).toUpperCase()};');
    }
  }
  return sb.toString();
}

/// Renders a [Component] tree to an XML string.
class Renderer {
  const Renderer();
  String render(Component component) {
    var sb = StringBuffer();
    _renderComponent(component, sb);
    return sb.toString();
  }

  void _renderComponent(Component component, StringBuffer sb) {
    if (component is Text) {
      sb.write(
        component.escape ? _escapeXml(component.value) : component.value,
      );
    } else if (component is DomComponent) {
      sb.write('<${component.tag}');
      if (component.attributes != null) {
        for (var entry in component.attributes!.entries) {
          sb.write(' ${entry.key}="${_escapeXml(entry.value)}"');
        }
      }

      var children = component.build();
      if (children.isEmpty) {
        sb.write('/>');
      } else {
        sb.write('>');
        for (var child in children) {
          _renderComponent(child, sb);
        }
        sb.write('</${component.tag}>');
      }
    } else {
      for (var child in component.build()) {
        _renderComponent(child, sb);
      }
    }
  }
}

/// Converts string literals into [Text] components.
extension StringAsComponent on String {
  Component get component => Text(this);
}

/// Extension on [Component] to enable direct rendering.
extension RenderComponentExtension on Component {
  /// Renders this component tree to an XML string using an optional custom [Renderer].
  String render([Renderer renderer = const Renderer()]) {
    return renderer.render(this);
  }
}


/// Extension to easily create dynamic/custom [DomComponent]s using any tag name.
extension CustomDomComponentExtension on String {
  /// Creates a custom [DomComponent] using this string as the tag name.
  DomComponent tag({Map<String, String>? attributes, Iterable<Component>? children}) {
    return DomComponent(this, attributes: attributes, children: children);
  }
}