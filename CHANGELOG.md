# Changelog

## 4.0.0

- **Modular AMP HTML Support**: Separated the comprehensive AMP components catalogue into dedicated domain subfiles under `lib/src/amp/`:
  - `amp_core.dart`: Boilerplates, script engines, orientation observers, and custom web worker scripts (`AmpScript`).
  - `amp_media.dart`: Basic high-performance elements like `AmpImg`, `AmpVideo`, `AmpAudio`, and `AmpIframe`.
  - `amp_social.dart`: Extensive third-party media embeds (YouTube, Vimeo, SoundCloud, TikTok, Facebook, Twitter, Instagram, Pinterest) and social share plugins.
  - `amp_layout.dart`: Carousels (`AmpCarousel`, `AmpBaseCarousel`), sidebars, lightboxes, accordions, and scroll visual effects.
  - `amp_dynamic.dart`: Dynamic state management (`AmpState`), template lists (`AmpList`, `AmpMustache`), custom forms (`AmpForm`), A/B test experiments, and monetized ad banners.
  - `amp_story.dart`: Rich, immersive Web Story elements (`AmpStory`, `AmpStoryPage`, `AmpStoryGridLayer`, `AmpStoryBookend`) and engaging interactive widgets (quizzes, polls, sliders, and results).
- **Core Document Layout Helpers**: Added `AmpHtml`, `AmpCharset`, `AmpViewport`, `AmpCanonical` to automate valid document setup.
- **AMP-Blogger Integration Techniques**: Integrated instructions on utilizing `BAttr` blocks to override/reset top-level XML namespaces for strict validation.
- **Native Static Analysis Auditor (`AmpValidator`)**: Added a dynamic `AmpValidator` class to audit and analyze compiled layout templates against core AMP compliance rules.
- **Dynamic Tag Extension**: Added `CustomDomComponentExtension` on `String` resolving the long-standing TODO of arbitrary element generation (`'custom-tag'.tag(...)`).
- **Comprehensive Unit Testing**: Introduced a dedicated test suite with 12 validation blocks, establishing 100% compilation and rendering safety.
- **Agentic Skills Workspace**: Added 6 detailed Markdown files under `/skills/` at the repository root to fully guide AI agents inside an agentic workspace.
