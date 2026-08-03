import 'dart:io';
import 'package:blogger_theme/blogger_theme.dart';

class BloggerDefaultMarkups extends Component {
  const BloggerDefaultMarkups();

  @override
  Iterable<Component> build() {
    final defaultMarkupsXml = File(
      'bin/assets/default_markups.xml',
    ).readAsStringSync();
    return [RawText(defaultMarkupsXml)];
  }
}
