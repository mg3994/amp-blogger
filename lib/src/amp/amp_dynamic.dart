import '../core.dart';

/// An AMP state container for managing client-side state in AMP pages.
class AmpState extends DomComponent {
  AmpState({
    String? id,
    String? src,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-state',
         attributes: {
           'id': ?id,
           'src': ?src,
           ...?attributes,
         },
       );
}

/// An AMP dynamic list component that fetches JSON content and renders it via a template.
class AmpList extends DomComponent {
  AmpList({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? binding,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-list',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           'binding': ?binding,
           ...?attributes,
         },
       );
}

/// An AMP helper representing forms in AMP HTML.
class AmpForm extends DomComponent {
  AmpForm({
    String? method,
    String? actionXhr,
    String? target,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'form',
         attributes: {
           'method': ?method,
           'action-xhr': ?actionXhr,
           'target': ?target,
           ...?attributes,
         },
       );
}

/// An AMP selection element for dynamic or interactive components.
class AmpSelector extends DomComponent {
  AmpSelector({
    String? id,
    String? name,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-selector',
         attributes: {
           'id': ?id,
           'name': ?name,
           ...?attributes,
         },
       );
}

/// An AMP auto-complete input field.
class AmpAutocomplete extends DomComponent {
  AmpAutocomplete({
    String? filter,
    String? minCharacters,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-autocomplete',
         attributes: {
           'filter': ?filter,
           'min-characters': ?minCharacters,
           ...?attributes,
         },
       );
}

/// An AMP date picker calendar component.
class AmpDatePicker extends DomComponent {
  AmpDatePicker({
    String? mode,
    String? type,
    String? format,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-date-picker',
         attributes: {
           'mode': ?mode,
           'type': ?type,
           'format': ?format,
           ...?attributes,
         },
       );
}

/// An AMP date display component to format dates on the client side.
class AmpDateDisplay extends DomComponent {
  AmpDateDisplay({
    String? datetime,
    String? displayIn,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-date-display',
         attributes: {
           'datetime': ?datetime,
           'display-in': ?displayIn,
           ...?attributes,
         },
       );
}

/// An AMP relative timeago display component.
class AmpTimeago extends DomComponent {
  AmpTimeago({
    String? datetime,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-timeago',
         attributes: {
           'datetime': ?datetime,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP live list component to implement dynamic content updates.
class AmpLiveList extends DomComponent {
  AmpLiveList({
    String? id,
    String? pollInterval,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-live-list',
         attributes: {
           'id': ?id,
           'poll-interval': ?pollInterval,
           ...?attributes,
         },
       );
}

/// An AMP Mustache template wrapper (`<template type="amp-mustache">`).
class AmpMustache extends DomComponent {
  AmpMustache({
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'template',
         attributes: {
           'type': 'amp-mustache',
           ...?attributes,
         },
       );
}

/// An AMP next-page component to implement infinite scroll.
class AmpNextPage extends DomComponent {
  AmpNextPage({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-next-page', attributes: attributes);
}

/// An AMP component to register service workers.
class AmpInstallServiceworker extends DomComponent {
  AmpInstallServiceworker({
    String? src,
    String? dataIframeSrc,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-install-serviceworker',
         attributes: {
           'src': ?src,
           'data-iframe-src': ?dataIframeSrc,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywall systems from Fewcents platform.
class AmpAccessFewcents extends DomComponent {
  AmpAccessFewcents({
    Map<String, String>? attributes,
  }) : super('amp-access-fewcents', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywalls with the LaterPay platform.
class AmpAccessLaterpay extends DomComponent {
  AmpAccessLaterpay({
    Map<String, String>? attributes,
  }) : super('amp-access-laterpay', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywalls from Poool.
class AmpAccessPoool extends DomComponent {
  AmpAccessPoool({
    Map<String, String>? attributes,
  }) : super('amp-access-poool', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywalls from Scroll membership.
class AmpAccessScroll extends DomComponent {
  AmpAccessScroll({
    Map<String, String>? attributes,
  }) : super('amp-access-scroll', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates dynamic content from the BySide service.
class AmpBysideContent extends DomComponent {
  AmpBysideContent({
    Map<String, String>? attributes,
  }) : super('amp-byside-content', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates a Google One Tap login widget.
class AmpOnetapGoogle extends DomComponent {
  AmpOnetapGoogle({
    String? clientid,
    Map<String, String>? attributes,
  }) : super(
         'amp-onetap-google',
         attributes: {
           'data-clientid': ?clientid,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Renders remote or inline JSON/dynamic data.
class AmpRender extends DomComponent {
  AmpRender({
    String? src,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-render',
         attributes: {
           'src': ?src,
           ...?attributes,
         },
       );
}

/// Implements subscription access protocols for Subscribe with Google.
class AmpSubscriptionsGoogle extends DomComponent {
  AmpSubscriptionsGoogle({
    Map<String, String>? attributes,
  }) : super('amp-subscriptions-google', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Implements generalized subscription protocols.
class AmpSubscriptions extends DomComponent {
  AmpSubscriptions({
    Map<String, String>? attributes,
  }) : super('amp-subscriptions', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Appends a reCAPTCHA v3 token to AMP form submissions.
class AmpRecaptchaInput extends DomComponent {
  AmpRecaptchaInput({
    String? sitekey,
    String? action,
    Map<String, String>? attributes,
  }) : super(
         'amp-recaptcha-input',
         attributes: {
           'data-sitekey': ?sitekey,
           'data-action': ?action,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Dynamically rewrites target URLs on click (e.g., for affiliate linking).
class AmpLinkRewriter extends DomComponent {
  AmpLinkRewriter({
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-link-rewriter',
         attributes: attributes,
       );
}

/// Automates monetizing commerce links on AMP articles with Skimlinks affiliate network.
class AmpSkimlinks extends DomComponent {
  AmpSkimlinks({
    String? publisherCode,
    Map<String, String>? attributes,
  }) : super(
         'amp-skimlinks',
         attributes: {
           'publisher-code': ?publisherCode,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Handles affiliate routing and link conversions using Smartlinks.
class AmpSmartlinks extends DomComponent {
  AmpSmartlinks({
    String? linkid,
    Map<String, String>? attributes,
  }) : super(
         'amp-smartlinks',
         attributes: {
           'link-id': ?linkid,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP push notifications module.
class AmpWebPush extends DomComponent {
  AmpWebPush({
    String? id,
    String? helperIframeUrl,
    String? permissionDialogUrl,
    String? serviceWorkerUrl,
    Map<String, String>? attributes,
  }) : super(
         'amp-web-push',
         attributes: {
           'id': ?id,
           'helper-iframe-url': ?helperIframeUrl,
           'permission-dialog-url': ?permissionDialogUrl,
           'service-worker-url': ?serviceWorkerUrl,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// An AMP component for displaying user notifications.
class AmpUserNotification extends DomComponent {
  AmpUserNotification({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-user-notification',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP component to manage cookie and storage consent.
class AmpConsent extends DomComponent {
  AmpConsent({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-consent',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// An AMP geo-location utility component.
class AmpGeo extends DomComponent {
  AmpGeo({
    String? id,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-geo',
         attributes: {
           'id': ?id,
           ...?attributes,
         },
       );
}

/// An AMP component to support MRAID ads.
class AmpMraid extends DomComponent {
  AmpMraid({
    Map<String, String>? attributes,
  }) : super('amp-mraid', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to embed advertisements.
class AmpAd extends DomComponent {
  AmpAd({
    String? type,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-ad',
         attributes: {
           'type': ?type,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Shows personalized content recommendation blocks.
class AmpRecommender extends DomComponent {
  AmpRecommender({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-recommender', attributes: attributes);
}

/// Handles content subscription paywalls and user access.
class AmpAccess extends DomComponent {
  AmpAccess({
    String? id,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-access',
         attributes: {
           'id': ?id,
           ...?attributes,
         },
       );
}

/// Dynamically and automatically inserts advertisements into an AMP page.
class AmpAutoAds extends DomComponent {
  AmpAutoAds({
    String? type,
    String? adJson,
    Map<String, String>? attributes,
  }) : super(
         'amp-auto-ads',
         attributes: {
           'type': ?type,
           'data-ad-json': ?adJson,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Dynamically replaces phone numbers in links to enable call tracking.
class AmpCallTracking extends DomComponent {
  AmpCallTracking({
    String? config,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-call-tracking',
         attributes: {
           'config': ?config,
           ...?attributes,
         },
       );
}

/// Used to conduct user experience (A/B testing) experiments on AMP pages.
class AmpExperiment extends DomComponent {
  AmpExperiment({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-experiment', attributes: attributes);
}

/// Provides input masking capabilities inside form fields.
class AmpInputmask extends DomComponent {
  AmpInputmask({
    String? mask,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-inputmask',
         attributes: {
           'mask': ?mask,
           ...?attributes,
         },
       );
}

/// Provides customizable behavior for ad exits in AMPHTML ads.
class AmpAdExit extends DomComponent {
  AmpAdExit({
    Map<String, String>? attributes,
    super.children,
  }) : super('amp-ad-exit', attributes: attributes);
}

/// Automatically generates analytics configs for Web Stories.
class AmpStoryAutoAnalytics extends DomComponent {
  AmpStoryAutoAnalytics({
    Map<String, String>? attributes,
  }) : super('amp-story-auto-analytics', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Interactive subscription widget for Web Push notifications.
class AmpWebPushWidget extends DomComponent {
  AmpWebPushWidget({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-web-push-widget',
         attributes: {
           'id': ?id,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Displays a MathML formula.
class AmpMathml extends DomComponent {
  AmpMathml({
    String? formula,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-mathml',
         attributes: {
           'data-formula': ?formula,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Displays a countdown sequence to a specified date.
class AmpDateCountdown extends DomComponent {
  AmpDateCountdown({
    String? enddate,
    String? timeleftMs,
    String? offsetSeconds,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-date-countdown',
         attributes: {
           'enddate': ?enddate,
           'timeleft-ms': ?timeleftMs,
           'offset-seconds': ?offsetSeconds,
           ...?attributes,
         },
       );
}

/// Adds several dynamic CSS class names onto the `<body>` element.
class AmpDynamicCssClasses extends DomComponent {
  AmpDynamicCssClasses({
    Map<String, String>? attributes,
  }) : super('amp-dynamic-css-classes', attributes: attributes);

  @override
  Iterable<Component> build() => [];
}

/// Triggers and monitors the loading of custom fonts.
class AmpFont extends DomComponent {
  AmpFont({
    String? fontFamily,
    String? timeout,
    String? onInsertClass,
    String? onRemoveClass,
    Map<String, String>? attributes,
  }) : super(
         'amp-font',
         attributes: {
           'font-family': ?fontFamily,
           'timeout': ?timeout,
           'on-insert-class': ?onInsertClass,
           'on-remove-class': ?onRemoveClass,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Truncates text with an ellipsis, optionally showing an overflow/expand element.
class AmpTruncateText extends DomComponent {
  AmpTruncateText({
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-truncate-text',
         attributes: {
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Renders 3D glTF models directly in the web browser.
class Amp3dGltf extends DomComponent {
  Amp3dGltf({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-3d-gltf',
         attributes: {
           'src': ?src,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Displays Adobe After Effects (Lottie) JSON animations.
class AmpBodymovinAnimation extends DomComponent {
  AmpBodymovinAnimation({
    String? loop,
    String? autoplay,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    super.children,
  }) : super(
         'amp-bodymovin-animation',
         attributes: {
           'loop': ?loop,
           'autoplay': ?autoplay,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );
}

/// Integrates interactive quizzes and polls from Riddle.com.
class AmpRiddleQuiz extends DomComponent {
  AmpRiddleQuiz({
    String? riddleId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-riddle-quiz',
         attributes: {
           'data-riddle-id': ?riddleId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}

/// Integrates interactive Apester media cards.
class AmpApesterMedia extends DomComponent {
  AmpApesterMedia({
    String? mediaId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super(
         'amp-apester-media',
         attributes: {
           'data-media-id': ?mediaId,
           'width': ?width,
           'height': ?height,
           'layout': ?layout,
           ...?attributes,
         },
       );

  @override
  Iterable<Component> build() => [];
}
