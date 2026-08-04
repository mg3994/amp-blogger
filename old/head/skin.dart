import 'dart:io';
import 'package:blogger_theme/blogger_theme.dart';

class BloggerSkinAndStyles extends Component {
  const BloggerSkinAndStyles();

  @override
  Iterable<Component> build() {
    final headContentXml = File(
      'bin/assets/head_content.xml',
    ).readAsStringSync();
    return [RawText(headContentXml)];
  }
}
