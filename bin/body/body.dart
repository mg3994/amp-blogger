import 'package:blogger_theme/blogger_theme.dart';

class BloggerBody extends Component {
  const BloggerBody();

  @override
  Iterable<Component> build() {
    return [
      Div(
        attributes: {'class': 'main-container'},
        children: [Text('Blogger Theme Body')],
      ),
    ];
  }
}
