import 'core.dart';
import 'html_components.dart';

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
          children!.isEmpty ||
          (children!.first is! Head && children!.first is! Body),
      'BloggerTheme children should not contain Head or Body elements. Use the `head` and `body` parameters instead.',
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
