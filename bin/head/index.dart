import 'package:blogger_theme/blogger_theme.dart';
import 'default.dart';
import 'head_custom_codes.dart';
import 'meta.dart';

class HeadComponents extends Head {
  const HeadComponents();

  @override
  Iterable<Component> build() {
    return [
      BComment(
        children: [Text('<!--[ <head> | <!> [below] Custom codes ]-->')],
      ),
      HeadCustomCodes(),
      BloggerMeta(),
      style, //TODO: remove
    ];
  }
}
