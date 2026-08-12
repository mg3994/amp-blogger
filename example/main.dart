import 'package:blogger_theme/blogger_theme.dart';

void main() {
  final theme = BloggerTheme(
    attributes: {
      'b:responsive': 'true',
      'b:defaultwidgetversion': '2',
      'b:layoutsversion': '3',
      'b:css': 'false',
      'xmlns': 'http://www.w3.org/1999/xhtml',
      'xmlns:b': 'http://www.google.com/2005/gml/b',
      'xmlns:data': 'http://www.google.com/2005/gml/data',
      'xmlns:expr': 'http://www.google.com/2005/gml/expr',
    },
    // Reset attributes to clean XML output for strict AMP validation
    children: [
      BAttr(name: 'xmlns', value: ''),
      BAttr(name: 'xmlns:b', value: ''),
      BAttr(name: 'xmlns:expr', value: ''),
      BAttr(name: 'xmlns:data', value: ''),
      // Conditionally adds amp="amp" (or lightning bolt symbol ⚡) to <html> on mobile requests
      BAttr(cond: 'data:blog.isMobileRequest', name: 'amp', value: 'amp'),
      // Alternatively, you can use the ⚡ symbol:
      // BAttr(cond: 'data:blog.isMobileRequest', name: '⚡', value: ''),
    ],
    head: [
      AmpCharset(),
      AmpViewport(),
      AmpCanonical('https://example.blogspot.com/'),
      const AmpBoilerplate(),
      AmpRuntimeScript(),
      AmpExtensionScript(extension: 'amp-sidebar'),
      AmpExtensionScript(extension: 'amp-carousel'),
      const BSkin('body { font-family: Arial, sans-serif; }'),
    ],
    body: [
      AmpHtml(
        children: [
          BSection(
            id: 'main-content',
            children: [
              BWidget(
                id: 'Blog1',
                type: 'Blog',
                children: [
                  BIncludable(
                    id: 'main',
                    children: [
                      Div(
                        attributes: {'class': 'wrapper'},
                        children: [
                          H1(children: [Text('My AMP Blogger Theme')]),

                          // Custom Sidebar menu
                          AmpSidebar(
                            id: 'menu-drawer',
                            layout: 'nodisplay',
                            side: 'left',
                            children: [
                              Button(
                                attributes: {'on': 'tap:menu-drawer.close'},
                                children: [Text('Close Menu')],
                              ),
                            ],
                          ),

                          // Custom Carousel slider
                          AmpBaseCarousel(
                            width: '600',
                            height: '300',
                            layout: 'responsive',
                            loop: true,
                            snap: true,
                            children: [
                              AmpImg(src: 'slide1.png', width: '600', height: '300', layout: 'responsive'),
                              AmpImg(src: 'slide2.png', width: '600', height: '300', layout: 'responsive'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  final xml = theme.generate();
  print('Generated AMP-compliant Blogger Theme XML:');
  print(xml);

  print('\nRunning pre-compilation AMP Static Analysis...');
  final errors = AmpValidator.validate(xml);
  if (errors.isEmpty) {
    print('✓ Congratulations! Your generated Blogger theme is 100% AMP-compliant!');
  } else {
    print('✗ AMP Validation Errors Found:');
    for (var error in errors) {
      print('  - $error');
    }
  }
}
