import 'package:blogger_theme/blogger_theme.dart';
import 'meta.dart';
import 'skin.dart';

class BloggerHead extends Component {
  const BloggerHead();

  @override
  Iterable<Component> build() {
    return [
      BIf(
        cond: 'data:blog.view not in ["x-content-lazy", "x-content-blog"]',
        children: [BloggerMeta(), BloggerSkinAndStyles()],
      ),
    ];
  }
}
