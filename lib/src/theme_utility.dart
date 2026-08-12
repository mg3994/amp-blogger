import 'core.dart';
import 'html_components.dart';
import 'blogger_components.dart';

/// Builds a complete Blogger theme document from head and body components.
///
/// Use [generate] to render the theme as a full XML string with the required
/// Blogger template declaration.
class BloggerTheme extends Component {
  final Iterable<Component> head;
  final Iterable<Component> body;
  final Iterable<Component>? children;
  final Map<String, String>? attributes;

  const BloggerTheme({
    this.head = const [],
    this.body = const [],
    this.children,
    this.attributes,
  });

  @override
  Iterable<Component> build() {
    assert(
      children == null ||
          !children!.any((child) {
            if (child is BTag) {
              final tagName = child.name ?? child.attributes?['name'];
              return tagName == 'head' || tagName == 'body';
            }
            if (child is DomComponent) {
              return child.tag == 'head' || child.tag == 'body';
            }
            return false;
          }),
      'BloggerTheme top-level children should not contain <head> or <body> elements. Use the `head` and `body` parameters instead.',
    );

    // Assert that the head parameter contains BSkin (or equivalent b:skin) somewhere
    final hasSkin = head.any((c) => _hasComponent(c, (comp) => comp is BSkin || (comp is DomComponent && comp.tag == 'b:skin')));
    assert(
      hasSkin,
      'BloggerTheme head must contain at least one BSkin or b:skin element somewhere (direct or nested).',
    );

    // Assert that the body parameter contains BSection (or equivalent b:section) somewhere
    final hasSection = body.any((c) => _hasComponent(c, (comp) => comp is BSection || (comp is DomComponent && comp.tag == 'b:section')));
    assert(
      hasSection,
      'BloggerTheme body must contain at least one BSection or b:section element somewhere (direct or nested).',
    );

    final filteredChildren =
        children?.where((c) => c is! Head && c is! Body) ?? const [];
    return [
      Html(
        attributes: attributes,
        children: [
          ...filteredChildren,
          if (head.isNotEmpty) Head(children: head),
          if (body.isNotEmpty) Body(children: body),
        ],
      ),
    ];
  }

  /// Renders this theme to a full Blogger-compatible XML document.
  String generate() {
    var renderer = Renderer();
    return '<?xml version="1.0" encoding="UTF-8" ?>\n<!DOCTYPE html>\n'
   
        '${renderer.render(this)}';
  }
}

/// Recursively searches a component tree to check if any component matches a predicate.
bool _hasComponent(Component component, bool Function(Component) predicate) {
  if (predicate(component)) return true;
  for (var child in component.build()) {
    if (_hasComponent(child, predicate)) return true;
  }
  return false;
}
