import 'package:blogger_theme/blogger_theme.dart';
import 'variables.dart';

final css = ''' 
body#layout .headC{display:flex}
body#layout .headL{width:30%}
body#layout .headR{display:flex;width:70%}
body#layout .headS{width:50%;height:fit-content}
body#layout .headP{width:50%}


''';

final styleCSS = BSkin(variables: skinVariable, children: [RawText(css)]);
