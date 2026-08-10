import 'package:blogger_theme/blogger_theme.dart';

void main() {
  print('Running AMP Component Tests...');

  // Test 1: AmpImg
  final img = AmpImg(
    src: 'https://example.com/logo.png',
    alt: 'Logo',
    width: '100',
    height: '100',
    layout: 'fixed',
  );
  final imgXml = img.render();
  if (!imgXml.contains('<amp-img src="https://example.com/logo.png" alt="Logo" width="100" height="100" layout="fixed"/>')) {
    print('Failed Test 1: $imgXml');
    throw Exception('AmpImg rendering mismatch');
  }
  print('✓ AmpImg rendering passed');

  // Test 2: AmpCarousel
  final carousel = AmpCarousel(
    type: 'slides',
    autoplay: true,
    children: [
      AmpImg(src: 'img1.png'),
    ],
  );
  final carouselXml = carousel.render();
  if (!carouselXml.contains('<amp-carousel type="slides" autoplay="autoplay">') || !carouselXml.contains('<amp-img src="img1.png"/>')) {
    print('Failed Test 2: $carouselXml');
    throw Exception('AmpCarousel rendering mismatch');
  }
  print('✓ AmpCarousel rendering passed');

  // Test 3: AmpBoilerplate and scripts
  final boilerplate = const AmpBoilerplate().render();
  if (!boilerplate.contains('<style amp-boilerplate="amp-boilerplate">') || !boilerplate.contains('<noscript><style amp-boilerplate="amp-boilerplate">')) {
    print('Failed Test 3 (boilerplate): $boilerplate');
    throw Exception('AmpBoilerplate rendering mismatch');
  }
  print('✓ AmpBoilerplate rendering passed');

  final runtime = AmpRuntimeScript().render();
  if (!runtime.contains('<script async="async" src="https://cdn.ampproject.org/v0.js"/>')) {
    print('Failed Test 3 (runtime): $runtime');
    throw Exception('AmpRuntimeScript rendering mismatch');
  }
  print('✓ AmpRuntimeScript rendering passed');

  final ext = AmpExtensionScript(extension: 'amp-sidebar').render();
  if (!ext.contains('<script async="async" custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0.1/amp-sidebar-0.1.js"/>')) {
    print('Failed Test 3 (extension): $ext');
    throw Exception('AmpExtensionScript rendering mismatch');
  }
  print('✓ AmpExtensionScript rendering passed');

  // Test 4: CustomDomComponentExtension
  final customComp = 'amp-custom-web-element'.tag(
    attributes: {'data-custom': 'val'},
    children: [Text('Hello')],
  );
  final customXml = customComp.render();
  if (!customXml.contains('<amp-custom-web-element data-custom="val">Hello</amp-custom-web-element>')) {
    print('Failed Test 4: $customXml');
    throw Exception('CustomDomComponentExtension rendering mismatch');
  }
  print('✓ CustomDomComponentExtension rendering passed');

  // Test 5: AmpHtml, AmpCharset, AmpViewport, AmpCanonical, AmpStory and AmpBaseCarousel
  final ampHtml = AmpHtml(children: [
    AmpCharset(),
    AmpViewport(),
    AmpCanonical('https://example.com/canonical'),
    AmpBaseCarousel(loop: true, snap: true, children: [Text('Slide 1')]),
  ]).render();

  if (!ampHtml.contains('<html amp="">') ||
      !ampHtml.contains('<meta charset="utf-8"/>') ||
      !ampHtml.contains('<meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1"/>') ||
      !ampHtml.contains('<link rel="canonical" href="https://example.com/canonical"/>') ||
      !ampHtml.contains('<amp-base-carousel loop="true" snap="true">Slide 1</amp-base-carousel>')) {
    print('Failed Test 5: $ampHtml');
    throw Exception('AMP Layout helper / carousel rendering mismatch');
  }
  print('✓ AmpHtml layouts and AmpBaseCarousel rendering passed');

  print('All AMP tests passed successfully!');
}
