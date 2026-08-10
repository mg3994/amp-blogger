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
      // Conditionally adds class="amp" to <html> when ?amp=1 is in the URL
      BClass(cond: 'data:view.url.params.amp == "1"', name: 'amp'),
    ],
    head: [
      AmpCharset(),
      AmpViewport(),
      AmpCanonical('https://example.blogspot.com/'),
      const AmpBoilerplate(),
      AmpRuntimeScript(),
      AmpExtensionScript(extension: 'amp-sidebar'),
      AmpExtensionScript(extension: 'amp-carousel'),
    ],
    body: [
      AmpHtml(
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
  );

  final xml = theme.generate();
  print('Generated AMP-compliant Blogger Theme XML:');
  print(xml);
}
