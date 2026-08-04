import 'package:blogger_theme/blogger_theme.dart';
import 'default.dart';

class BodyComponents extends Body {
  const BodyComponents();

  @override
  Iterable<Component> build() {
    return [header_section];
  }
}
