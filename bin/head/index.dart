import 'package:blogger_theme/blogger_theme.dart';

import 'head_custom_codes.dart';
import 'meta.dart';
import 'css/skin.dart';
import 'css/layout.dart';

class HeadComponents extends Component {
  const HeadComponents();

  @override
  Iterable<Component> build() {
    return [
      BComment(
        children: [Text('<!--[ <head> | <!> [below] Custom codes ]-->')],
      ),
      HeadCustomCodes(),
      BloggerMeta(),
      styleCSS, //TODO: remove
      tempSkinCSS,
    ];
  }
}
