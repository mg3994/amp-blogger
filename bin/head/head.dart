import 'package:blogger_theme/blogger_theme.dart';

class BloggerHead extends Component {
  const BloggerHead();

  @override
  Iterable<Component> build() {
    return [
      Title(children: [Text('Blogger Theme Head')]),
    ];
  }
}
