import 'package:blogger_theme/blogger_theme.dart';
import 'layout_sections.dart';
import 'scripts.dart';

class BloggerBody extends Component {
  const BloggerBody();

  @override
  Iterable<Component> build() {
    return [BloggerBodyLayout(), BloggerBodyScripts()];
  }
}
