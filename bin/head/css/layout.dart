import 'package:blogger_theme/blogger_theme.dart';

final tempSkinCSS = BIf(
  cond: 'data:view.isLayoutMode',
  children: [
    BTemplateSkin(''' 
/* Override defaults */
body#layout::-webkit-scrollbar{-webkit-appearance:none;width:8px;height:8px}
body#layout::-webkit-scrollbar-track{background:#f9f9f9}
body#layout::-webkit-scrollbar-thumb{background:#d1d1d1;border-radius:2px}
body#layout::-webkit-scrollbar-thumb:hover{background:#9E9E9E}
body#layout::-webkit-scrollbar-thumb:active{background:#848484}
body#layout{position:relative;background-color:#fff!important;font-family:Roboto,sans-serif;margin:0 auto!important;padding:16px 8px 0!important;border:0!important;text-align:left!important;max-width:1080px!important}
body#layout .layout-title{font-size:15px!important;white-space:nowrap;overflow:hidden}
body#layout div.section{background-color:#fef5ea!important;border-radius:10px!important;border-color:#e4c7a6;margin:0 8px 16px 8px}
body#layout div.section h4{font-size:15px!important;font-weight:normal!important;margin-left:0;text-align:center;background:#fff;color:#784141;margin:0 0 10px 0;padding:8px;border-radius:10px;border:1px solid #e4c7a6}
body#layout .widget-content{background-color:transparent!important;box-shadow:none!important}
body#layout .Blog .widget-content{height:auto!important}
body#layout .widget .widget-wrap2{border-radius:10px;background-color:#f97777!important}
body#layout .widget .widget-wrap3{border-radius:inherit;background-color:#fff!important}
body#layout .widget .widget-content{border-radius:inherit}
body#layout .widget.draggable-widget .widget-wrap3{border-top-left-radius:4px;border-bottom-left-radius:4px}
body#layout .layout-widget-description{font-size:13px!important;line-height:1.6em;opacity:0.8}
body#layout .add_widget{display:block;padding:0;border:none;border-radius:0}
body#layout .add-icon{display:none}
body#layout .add_widget a{font-size:14px !important;margin:auto;text-decoration:none;color:#b64b4b;border-radius:8px;padding:8px;text-align:center;border:1.6px dashed #b64b4b}
body#layout .add_widget a::after{content:'( + )';margin-left:4px}
body#layout .add_widget a:hover{color:#784141;border-color:#784141}
body#layout .visibility .editlink.icon{height:24px!important;width:24px!important;border:1px solid #b8b8b8!important;border-radius:30%!important;background-size:70%!important}
body#layout .visibility .editlink.icon:hover{background-color:#e7e0ec!important}

/* Custom functions */
body#layout .section.bl-grid-section{padding-left:8px;padding-right:8px}
body#layout .section.bl-grid-section:after{content:'';display:table;clear:both}
body#layout .section.bl-grid-section h4{margin-right:8px;margin-left:8px}
body#layout .section.bl-grid-section .widget{width:50%;float:left;margin:8px 0 0 0}
body#layout .section.bl-grid-section .widget .widget-wrap1{padding:4px 8px}
body#layout .section.bl-grid-section .layout-widget-description{white-space:nowrap;overflow:hidden}
body#layout .section.bl-grid-section .dropregion{width:50%!important;float:left;clear:right;margin:0!important;border:0!important;height:0!important;}
body#layout .section.bl-grid-section .draggable-widget.el_active{margin-bottom:0!important}

body#layout .section.bl-hide-title{padding-top:8px}
body#layout .section.bl-hide-title h4,
body#layout .bl-hide-element,
body#layout .bl-hide-description .layout-widget-description,
body#layout #theme_section_noscript .layout-widget-description,
body#layout #theme_section_header_title .layout-widget-description,
body#layout #theme_section_header_search .layout-widget-description,
body#layout #theme_section_header_icons .layout-widget-description,
body#layout #theme_section_tabbed_menu .layout-widget-description,
body#layout #theme_section_navigation .layout-widget-description,
body#layout #theme_section_notification .layout-widget-description{display:none!important}

/* Custom Styles */
body#layout .headC{display:flex}
body#layout .headL{width:30%}
body#layout .headR{display:flex;width:70%}
body#layout .headS{width:50%;height:fit-content}
body#layout .headP{width:50%}

body#layout .mainN{display:flex}
body#layout .mainL{width:30%}
body#layout .mainR{width:70%}

body#layout .mainB{display:flex}
body#layout .blogB{width:60%}
body#layout .sideB{width:40%}
  '''),
  ],
);
