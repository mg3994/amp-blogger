import 'package:blogger_theme/blogger_theme.dart';

final header_section = BSection(
  id: 'header-area',
  className: 'header-section',
  maxwidgets: 1,
  showaddelement: true,
  children: [
    BWidget(
      id: 'Header1',
      type: 'Header',
      title: 'Blog Header Title',
      locked: true,
    ),
  ],
);
