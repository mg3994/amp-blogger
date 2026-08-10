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

  // Test 6: AmpScript, Amp3dGltf, AmpBodymovinAnimation
  final dynamicAmp = AmpHtml(children: [
    AmpScript(src: 'worker.js', nodom: 'true'),
    Amp3dGltf(src: 'model.gltf', width: '100', height: '100', layout: 'responsive'),
    AmpBodymovinAnimation(loop: 'true', autoplay: 'true', width: '200', height: '200', layout: 'fixed'),
  ]).render();

  if (!dynamicAmp.contains('<amp-script src="worker.js" nodom="true"/>') ||
      !dynamicAmp.contains('<amp-3d-gltf src="model.gltf" width="100" height="100" layout="responsive"/>') ||
      !dynamicAmp.contains('<amp-bodymovin-animation loop="true" autoplay="true" width="200" height="200" layout="fixed"/>')) {
    print('Failed Test 6: $dynamicAmp');
    throw Exception('Dynamic/Advanced AMP elements rendering mismatch');
  }
  print('✓ AmpScript, Amp3dGltf, AmpBodymovinAnimation rendering passed');

  // Test 7: Paywall, experiments, and inputmask elements
  final enterpriseAmp = AmpHtml(children: [
    AmpAccess(id: 'membership-paywall'),
    AmpAutoAds(type: 'adsense'),
    AmpExperiment(),
    AmpInputmask(mask: '99-999'),
  ]).render();

  if (!enterpriseAmp.contains('<amp-access id="membership-paywall"/>') ||
      !enterpriseAmp.contains('<amp-auto-ads type="adsense"/>') ||
      !enterpriseAmp.contains('<amp-experiment/>') ||
      !enterpriseAmp.contains('<amp-inputmask mask="99-999"/>')) {
    print('Failed Test 7: $enterpriseAmp');
    throw Exception('Enterprise AMP elements rendering mismatch');
  }
  print('✓ Enterprise AMP components (Access, Auto-ads, Experiment, Inputmask) rendering passed');

  // Test 8: Mathml, Gist, and Font loading components
  final extendedAmp = AmpHtml(children: [
    AmpMathml(formula: 'x^2'),
    AmpGist(gistid: '12345'),
    AmpFont(fontFamily: 'Roboto'),
  ]).render();

  if (!extendedAmp.contains('<amp-mathml data-formula="x^2"/>') ||
      !extendedAmp.contains('<amp-gist data-gistid="12345"/>') ||
      !extendedAmp.contains('<amp-font font-family="Roboto"/>')) {
    print('Failed Test 8: $extendedAmp');
    throw Exception('Extended AMP components rendering mismatch');
  }
  print('✓ Extended AMP components (Mathml, Gist, Font) rendering passed');

  // Test 10: Interactive Web Story elements
  final storyInteractives = AmpHtml(children: [
    AmpStoryInteractiveQuiz(id: 'quiz-1', question: 'What is 2+2?', option1: '3', option2: '4'),
    AmpStoryInteractivePoll(id: 'poll-1', question: 'Favorite color?', option1: 'Blue', option2: 'Red'),
    AmpStoryInteractiveSlider(id: 'slider-1', question: 'Rate this', emoji: '🌟'),
  ]).render();

  if (!storyInteractives.contains('<amp-story-interactive-quiz id="quiz-1" chip-text="What is 2+2?" option-1-text="3" option-2-text="4"/>') ||
      !storyInteractives.contains('<amp-story-interactive-poll id="poll-1" chip-text="Favorite color?" option-1-text="Blue" option-2-text="Red"/>') ||
      !storyInteractives.contains('<amp-story-interactive-slider id="slider-1" chip-text="Rate this" emoji="&#x1F31F;"/>')) {
    print('Failed Test 10: $storyInteractives');
    throw Exception('Interactive Story components rendering mismatch');
  }
  print('✓ Interactive Story components (Quiz, Poll, Slider) rendering passed');

  // Test 9: AmpValidator static analysis
  final invalidHtml = '<html><body>Hello World</body></html>';
  final invalidErrors = AmpValidator.validate(invalidHtml);
  if (invalidErrors.isEmpty) {
    throw Exception('AmpValidator failed to catch invalid AMP layout');
  }
  print('✓ AmpValidator correctly caught invalid AMP layout (${invalidErrors.length} errors found)');

  final validAmpDoc = '<!DOCTYPE html><html amp=""><head><meta charset="utf-8"/><meta name="viewport" content="width=device-width"/><link rel="canonical" href="."/><style amp-boilerplate="amp-boilerplate"></style><script async="async" src="https://cdn.ampproject.org/v0.js"/></head><body>Hello</body></html>';
  final validErrors = AmpValidator.validate(validAmpDoc);
  if (validErrors.isNotEmpty) {
    print('Errors found in valid layout: $validErrors');
    throw Exception('AmpValidator failed on valid layout');
  }
  print('✓ AmpValidator correctly validated valid AMP layout');

  // Test 11: Specialized Media & Wordpress Embeds
  final specializedEmbeds = AmpHtml(children: [
    AmpGoogleDocumentEmbed(src: 'doc-url'),
    AmpWordpressEmbed(url: 'wp-post'),
    AmpStoryAudioSticker(),
  ]).render();

  if (!specializedEmbeds.contains('<amp-google-document-embed src="doc-url"/>') ||
      !specializedEmbeds.contains('<amp-wordpress-embed data-url="wp-post"/>') ||
      !specializedEmbeds.contains('<amp-story-audio-sticker/>')) {
    print('Failed Test 11: $specializedEmbeds');
    throw Exception('Specialized Embed components rendering mismatch');
  }
  print('✓ Specialized Embed components (Google Doc, Wordpress, Story sticker) rendering passed');

  // Test 12: Video Platforms and Social Review components
  final socialMediaEmbeds = AmpHtml(children: [
    AmpImaVideo(src: 'ima-ad-tag-url'),
    AmpWistiaPlayer(videoid: 'wistia-video-id'),
    AmpYotpo(appKey: 'yotpo-app-key'),
  ]).render();

  if (!socialMediaEmbeds.contains('<amp-ima-video data-src="ima-ad-tag-url"/>') ||
      !socialMediaEmbeds.contains('<amp-wistia-player data-videoid="wistia-video-id"/>') ||
      !socialMediaEmbeds.contains('<amp-yotpo data-app-key="yotpo-app-key"/>')) {
    print('Failed Test 12: $socialMediaEmbeds');
    throw Exception('Video and Social Review components rendering mismatch');
  }
  print('✓ Video and Social Review components (IMA, Wistia, Yotpo) rendering passed');

  // Test 13: Recaptcha, Imgur, and story social sharing elements
  final advancedWidgets = AmpHtml(children: [
    AmpRecaptchaInput(sitekey: 'recaptcha-key', action: 'submit'),
    AmpImgur(imgurid: 'imgur-id', width: '200', height: '200', layout: 'fixed'),
    AmpStorySocialShare(),
  ]).render();

  if (!advancedWidgets.contains('<amp-recaptcha-input data-sitekey="recaptcha-key" data-action="submit"/>') ||
      !advancedWidgets.contains('<amp-imgur data-imgurid="imgur-id" width="200" height="200" layout="fixed"/>') ||
      !advancedWidgets.contains('<amp-story-social-share/>')) {
    print('Failed Test 13: $advancedWidgets');
    throw Exception('Advanced widget components rendering mismatch');
  }
  print('✓ Advanced widget components (Recaptcha, Imgur, Story social share) rendering passed');

  print('All AMP tests passed successfully!');
}
