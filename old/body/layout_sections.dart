import 'dart:io';
import 'package:blogger_theme/blogger_theme.dart';

class BloggerBodyLayout extends Component {
  const BloggerBodyLayout();

  @override
  Iterable<Component> build() {
    final bodyLayoutXml = File('bin/assets/body_layout.xml').readAsStringSync();
    return [RawText(bodyLayoutXml)];
  }
}
