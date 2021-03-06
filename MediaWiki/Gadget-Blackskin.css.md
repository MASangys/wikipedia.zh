> 本文内容由[MediaWiki:Gadget-Blackskin.css](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-Blackskin.css)转换而来。


/\*\* MediaWiki:Gadget-Blackskin.css \*\*\*\*\*\*\*

`* Original by `[`:it:Utente:Kormoran`](https://zh.wikipedia.org/wiki/:it:Utente:Kormoran "wikilink")
`* Maintained by `[`User:Dispenser`](https://zh.wikipedia.org/wiki/User:Dispenser "wikilink")` for `[`WP:WikiProject``   ``Accessibility`](https://zh.wikipedia.org/wiki/WP:WikiProject_Accessibility "wikilink")
`*/`

@media screen { /\* Selection highlight \*/

  -

      -
        \-moz-selection { color: \#90FF90; background: \#008000; }
        selection { color: \#90FF90; background: \#008000; }

/\* Color background \*/ html body {

`   background: Black none /* Monobook background */;`
`   color: #00dd00;`

} html \#mw-page-base{

`   background:none /* Vector background */;`

} html div\#content, html .mw-body {

`   background-color: #000000;`
`   color : #00dd00;`
`   border-color : #008000;`

} html .ns-0 div\#content {

`   background : #000000;`

}

/\* Color the links \*/ html a { color: \#7070FF; } html a:visited { color: \#9090D0; } html a:active, html a.new { color: \#FF4040; } html a.interwiki, html a.external { color: \#5386DB; } html a.interwiki:visited, html a.external:visited { color: \#5386DB; } html a.stub { color: \#974253; }

/\* De-Color user signature links (black-on-black) \*/ html a:not(\[class\]) font, html a:not(\[class\]) span, html a:not(\[class\]) bold {

`   background-color:inherit!important;`
`   color:inherit!important;`

} /\* Color user links \*/ /\* html a\[title^="User"\], html a\[title^="Special:Contributions/"\] {

`   background-color:#010!important;`
`   color: #7070FF!important;`

}/\*-\*/

html .mw-body-content .external {

`   background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMBAMAAACkW0HUAAAAFVBMVEUAAAAAAAAAZv8AZswAL14hZIUwYI+U+klIAAAAAXRSTlMAQObYZgAAADxJREFUCNdjgAMmJSUFIBUmKAiimAKBFLOxkSOIElQRCQRSQo5OakBKJEWZlQEo6CTMAKIEwZSxsTHcJAD6JwXY6XjSLgAAAABJRU5ErkJggg==);`

}

/\* Headings \*/ html h1, html \#bodyContent h1, html h2, html \#bodyContent h2, html h3, html \#bodyContent h3, html h4, html \#bodyContent h4, html h5, html \#bodyContent h5, html h6, html \#bodyContent h6 {

`   color: #00dd00;`
`   border-color:#008000;`

}

/\* Color Table of Contents \*/ html \#toc, html .toc, html .mw-warning, html .toccolours {

`   background-color: #002000; `
`   border-color: #008000; `

}

/\* Images \*/ html .mw-body img {

`   border: 2px solid #008000;`
`   background-color: #000000;`

}

/\* Fix background of TeX images, which are black on transparent. \*/ html .mw-body img.mwe-math-fallback-image-inline {

`   background-color: #fff;`
`   filter:invert(100%) hue-rotate(180deg);`
`   -webkit-filter:invert(1) hue-rotate(180deg);`
`   border:none;`

}

html hr {

`   color: #004000;`
`   background-color: #000000;`

}

/\* Color explanations with tool tips \*/ html abbr, html acronym, html .explain {

`   border-color: #004000;`
`   color: White;`
`   background-color: #002000;`

}

/\* Color code snippets \*/ html code {

`   background-color: #00AA00; `
`   color: Black; `
`   border-color: #00AA00;`

}

/\* Color code blocks \*/ html pre, html .mw-code {

`   border-style:dashed;`
`   border-color:#00AA00;`
`   color: White;`
`   background-color: #002000;`

}

/\* Color highlighted ref \*/ html body.action-info .mw-body-content :target, html .citation:target {

`   background-color: rgba(0, 127, 255, 0.133);`

}

/\* Table background colors \*/ html table {

`   background-color: #000000!important;`
`   color: #00dd00!important;`

} html table th {

`   background-color: #1D1C1C!important;`
`   color: #00dd00!important;`

} html table td {

`   background-color: #000000!important;`
`   color: #00dd00!important; `

}

/\* Tabular tables \*/ html table.wikitable {

` border-color: #004000 !important;`
` color: #00dd00!important;`

} html table.wikitable th, html table.wikitable td {

` border-color: #004000 !important;`

} html table.wikitable th {

` background-color: #1D1C1C!important;`

} html table.wikitable td {

` background-color: #000000!important;`

}

/\* JQuery sort arrows \*/ html table.jquery-tablesorter th.headerSort {

`   background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAJCAYAAADdA2d2AAAAPUlEQVR4AWMgCtxlkAPiA0CsREgpCQaC4X8gfggymJoG/sc0mHIDMQ2mE6DcpfQNU/rHPsJgBWg6VSBGOQB5WklTTHq/UAAAAABJRU5ErkJggg==);`

} html table.jquery-tablesorter th.headerSortUp {

`   background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAECAYAAABhnXSoAAAAKklEQVR4AWMgCtxlkAPiA0CsREgpCQaC4X8gfggymJoG/kczmHIDSTEYACAWJKqhXDSPAAAAAElFTkSuQmCC);`

} html table.jquery-tablesorter th.headerSortDown {

`   background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAECAYAAABhnXSoAAAALUlEQVR4AWPACe4yyAExCP7Hgh8CsRID6QBhMD4DKTQY00BKDVYA4gNgmggAAHjLJKrpYfWaAAAAAElFTkSuQmCC);`

}

/\* thumbnails \*/ html .ns-0 \* \#content div.thumb {

`   border-color: #000000;`

} /\* thumbnails \*/ html div.thumb {

`   margin-bottom: .5em;`
`   border-style: solid;`
`   border-color: #002000;`

} html div.thumb div {

`   border: 1px solid #002000;`
`   padding: 3px !important;`
`   background-color: #004000;`

} html div.thumb div a img {

`   border: 1px solid #002000;`

} html div.thumb div a img:not(:hover) {

`   /* Not so bright */`
`   background-color:#777;`

} html div.thumb div div.thumbcaption {

`   border: none;`
`   padding: .3em 0 .1em 0;`

}

/\* galleries \*/ html table.gallery {

`   border: 1px solid #002000;`
`   background-color: #004000;`

} html table.gallery td {

`   background-color: #004000;`
`   border: solid 2px white;`

} html li.gallerybox div.thumb, html div\#content .gallerybox div.thumb {

`   background-color:transparent;`
`   border: 1px solid #002000;`

}

/\* Color category box \*/ html .catlinks {

`   border-color:#800080;`
`   background-color:#000000;`
`   color: #00FFFF;`

}

/\* \#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

`*          Interface Pages`
`* #################################`
`*/`

/\* Color buttons, drop downs, and input boxes \*/ html fieldset {

`   border-color: #004000;`

} html legend {

`   border: 1px solid #004000; /* @theme */`

} html input\[type="number"\], html input\[type="text"\], html input:not(\[type\]), html select {

`   background-color: #004000;`
`   border-color: #008000;  `
`   color: #00dd00;`

} html button, html input\[type="button"\], html input\[type="reset"\], html input\[type="submit"\] {

`   cursor: pointer;`

} html .mw-ui-input:focus {

`   border-color: lime;`
`   box-shadow: inset 0 0 0 1px lime;`

} html .postedit, /\* untested \*/ html .mw-notification { /\* top right bubble \*/

`   background-color:#004000;`
`   background-color:rgba(0, 64, 0, 0.93);`
`   border-color:#008000;`

}

/\*

  -   - Diff rendering

  - /

html table.diff, html td.diff-otitle, html td.diff-ntitle {

`   background-color: #000000;`

} html td.diff-addedline {

`   color: #00a000;`
`   background-color: #004000;`

} html td.diff-deletedline {

`   color: #00a000;`
`   background-color: #004000;`

} html td.diff-context {

`   background-color: #000000;`
`   color: #008000;`

} html .diffchange {

`   color: #00ff00;`

} html td.diff-deletedline .diffchange {

`   background-color:#403618;`

} html td.diff-addedline .diffchange {

`   background-color:#273948;`

}

/\* Color the edit interface \*/ html .wikiEditor-ui {

`   background-color: #002000;`

} html .wikiEditor-ui-toolbar .sections .section {

`   /* Advanced tool, Special characters, etc. */`

} html textarea {

`   background-color: #001000;`
`   color: #90FF90;`

} html .editOptions {

`   background-color: #002000;`
`   border-color: #008000;`

} html div\#editpage-specialchars a {

`   background-color: #000000;`
`   border-color: #008000;`

} html .mw-editform-legacy input\#wpSummary {

` background-color: #000000;`
` color: #90ff90;`

}

/\* Visual Editor \*/ html .oo-ui-toolbar-bar, html .oo-ui-popupWidget-popup, html .oo-ui-popupToolGroup-active.oo-ui-widget-enabled, html .oo-ui-toolGroup.oo-ui-widget-enabled .oo-ui-tool-link .oo-ui-tool-title, html .oo-ui-popupToolGroup .oo-ui-toolGroup-tools {

`   background-color:#002000;`
`   background-image:none;`
`   color:white;`

} html .oo-ui-iconElement-icon {

`   filter: invert(100%); /* Can't style data URI SVGs */`

} html .oo-ui-windowManager-modal \> .oo-ui-dialog {

`   background-color: rgba(0, 0, 0, 0.5);`

} html .oo-ui-windowManager-modal \> .oo-ui-dialog \> .oo-ui-window-frame {

`   background-color:black;`

} html .oo-ui-textInputWidget input, html .oo-ui-textInputWidget textarea {

`   background-color: #001000;`
`   color: #90FF90;`

}

/\* Color history interface \*/ html \#pagehistory li {

`   border: 1px solid #002000;`

} html \#pagehistory li.selected {

`   background-color: #004000;`
`   border: 1px solid #002000;`

} html span.autocomment { color: \#008000; }

/\* Special:Search \*/ html .mw-search-profile-tabs, html \#mw-searchoptions {

` background-color: #002000;`
`   border-color: #008000;`

}

/\* Color the file description \*/ html \#filetoc {

`   background-color: #002000;`
`   border-color: #008000;`

} html .filehistory a img, html \#file img:hover {

`   /* Green checker board */`
`   background-image:url("`<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAQMAAAAlPW0iAAAABlBMVEUAAAAAQABVHvbKAAAAEUlEQVQI12P4z8CAFWEX/Q8Afr8P8erzE9cAAAAASUVORK5CYII=>`");`

}

/\* \#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

`*             Interface`
`* #################################`
`*/`

/\* Colors the tabs across the top of the page \*/ html \#p-cactions {

`   background-color: #000000;  `

} html \#p-cactions li {

`   background-color: #000000;  `
`   border-color: #008000;`

} html \#p-cactions li.selected, html \#p-cactions li.new {

`   background-color: #000000; `

} html \#p-cactions li a {

`   background-color: #000000 !important; `
`   color : #7070FF;`

} html \#p-cactions li.selected a {

`   background-color:#000000 !important/*HACK?*/; `

} /\* Vector Tabs \*/ html div.vectorTabs, html div.vectorTabs span { /\* left and right tab breaks \*/

`   /* `<https://en.wikipedia.org/w/skins/Vector/images/tab-break.png>` */`
`   background-image:none;`

} html div.vectorTabs { border-left:1px solid black; } html div.vectorTabs span { border-right:1px solid black; } html div.vectorTabs ul li {

`   /* `<https://en.wikipedia.org/w/skins/Vector/images/tab-normal-fade.png>` */`
`   background-image: linear-gradient(#000000,#004000);`
`   border-bottom:1px solid #008000;`

} html div.vectorTabs li.selected {

`   /* `<https://en.wikipedia.org/w/skins/Vector/images/tab-current-fade.png>` */`
`   background: #000000;`
`   border-bottom-color:transparent;`

} html div.vectorTabs span a {

`   color:#7070FF;`

} html div.vectorTabs li.selected a, html div.vectorTabs li.selected a:visited {

`   color:#00DD00;`

} /\* Vector watch icon -- XXX contrast issues \*/ html \#ca-watch.icon a {

`   filter:invert(1) hue-rotate(80deg);`

} html \#ca-unwatch.icon a {

`   filter:hue-rotate(280deg);`

}

/\* Vector drop down menus \*/ html div.vectorMenu h3 span {

`   color:#0D0;`

} html div.vectorMenu div.menu {

`   background-color: #000000;`
`   border-color: #a2a9b1;`

} html div.vectorMenu li a {

`   color:#7070FF;`

}

/\* User links (preferences, contribs) \*/ html \#p-personal ul {

`   color: #FFFF00;`
`   background: none;`

} html \#p-personal li a {

` color: #FFFF00;`

} html \#p-personal li a:hover {

` color: #FFFF00;`
` background-color: #636300;`

}

/\* Bad specificity in originals \*/ html \#pt-mytalk a.mw-echo-alert, html \#pt-mytalk a.mw-echo-alert:hover {

`   color: #222;`

} /\* Use vector person icon by your username \*/ html body.skin-monobook li\#pt-userpage { background-image: url(/w/skins/Vector/images/user-icon.png); }

/\* Use black logo \*/ html \#p-logo {

`   background-color: transparent;`

} html .mw-wiki-logo:not(\[href="/wiki/MediaWiki"\]):not(\[href^="/wiki/Wikidata:"\]):not(\[href^="/wiki/Wiktionary:"\]) {

`   -webkit-filter: invert(1);`
`   filter: invert(100%);`

}

/\* Color side portlets \*/ html .portlet {

`   background: #004000;`
`   color: #00dd00;`

} html .portlet h3, html div\#mw-panel div.portal h3 {

`   color:#00dd00;`

} html .pBody {

`   background: #000000;`
`   color: #00dd00;`

} html div\#mw-panel div.portal div.body ul li a {

`   color:#7070FF;`

} html div\#mw-panel div.portal div.body ul li a:visited {

`   color:#9090D0;`

}

/\* Color main search box - Monobook \*/ html input\#searchInput {

`   border: 1px inset; `
`   color: #00dd00; `
`   background : #000000; `

} html input.searchButton {

`   background : #000000; `
`   border: 2px solid;`
`   border-color: #00FFFF #008080 #008080 #00FFFF;`
`   color : #00dd00; `

} /\* Color main search box - Vector \*/ html div\#simpleSearch, html div\#simpleSearch input {

`   background-color:transparent;`
`   color: #00dd00;`

} html div\#simpleSearch \#searchInput::placeholder {

`   color:#008800;`

} /\* Search results suggestion box \*/ html .suggestions-results, html .suggestions-special {

`   background-color: #000000;`
`   border: solid 1px #00dd00;                            `

} html .suggestions-special .special-label {

`   color:#008800;   `

} html .suggestions-result, html .suggestions-special .special-query {

`   color:#00dd00;   `

}

/\* Color footer \*/ html div\#footer {

`   background-color: Black;`
`   color: #00dd00;`
`   border-color: #FFFF00;`
`   padding-bottom: 1.2em;`

} html div\#footer ul li {/\* Vector \*/

`   color:inherit;`

}

/\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

`*  COLOR IN TEMPLATES  *`
`************************/`

html .infobox {

`   background: #002000;`
`   color:#00DD00;`
`   border-color:#00FFFF;`

}

/\* Template:Documentation \*/ html .template-documentation {

`   background-color: #001000!important;`

}

/\* template RFA, AN/I closed \*/ html div.boilerplate, html .portal \> ul {

`   background-color: #000000!important;`

}

/\* \*/ html div.mw-warning-with-logexcerpt, html div.mw-lag-warn-high, html div.mw-cascadeprotectedwarning, html \#mw-protect-cascadeon {

`   background-color: #700;`
`   color:#fff;`

}

html .mw-trackedTemplate {

`   background: #002000 linear-gradient(#333, #000) !important;`
`   border-color: #008000!important;`

} html .quotebox, /\* Template:Quote \*/ html .shortcutbox {

`   background-color: #002000!important;`
`   border-color: #008000!important;`

} html .navbox, html .navbox-subgroup {

} /\* Template:Tmbox \*/ html table.tmbox {

`   border: 1px solid #c0c090!important;    /* Default "notice" gray-brown */`

} html table.tmbox, html table.tmbox th, html table.tmbox td {

`   background: #430!important;`

}

/\* \*/ html table.wikitable td.table-yes {

`   background-color: #008000!important;`

} html table.wikitable td.table-maybe {

`   background-color: #6c7203!important;`

} html table.wikitable td.table-no {

`   background-color: #ad5053!important;`

} html table.wikitable td.table-partial {

`   background-color: #7e6b45!important;`

} html table.wikitable td.table-na, td.table-unknown {

`   background-color: #6d6d6d!important;`

} /\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

`*     WIKI-SPECIFIC    *`
`************************/`

/\* History on Commons \*/

1.  histlegend { background-color:inherit\!important; }

/\* De-color [mw:CentralNotice](https://zh.wikipedia.org/wiki/mw:CentralNotice "wikilink") \*/

1.  centralNotice, \#cnotice-main { background-color:\#000\!important; color:inherit\!important; }

/\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

`*        GADGETS       *`
`************************/`

/\* [WP:Navigation popups](https://zh.wikipedia.org/wiki/WP:Navigation_popups "wikilink") \*/ html .navpopup {

`   background:#000;`
`   border-color:inherit;`
`   color:#0d0;`
`   box-shadow: 0 3px 8px rgba( 50,255,50,0.35 );`

} html .popup_mainlink a {

`    color:#0d0;   `

} html .popup_menu, html .popup_drop:hover .popup_menu, html .popup_drop .popup_menu:hover {

`   background-color:#000;`

} .popup_menu a:hover {

`   background-color: #447;`
`   color: #ccf;`

} html del.popupDiff {

`   background-color:#273948;`

} html ins.popupDiff {

`   background-color:#403618;`

}

/\* [mw:Reference Tooltips](https://zh.wikipedia.org/wiki/mw:Reference_Tooltips "wikilink") \*/ html .referencetooltip li {

`  /*border-color: #008000;*/`
`  background-color:#001000;`
`  /*box-shadow: 2px 4px 2px rgba(0,224,0,0.3); /* tint #00F000 */`

}

/\* [mw:HoverCards](https://zh.wikipedia.org/wiki/mw:HoverCards "wikilink") \*/ html .mwe-popups {

`   background-color: #000;`
`   box-shadow: /* tint #00F000 */`
`       0 30px 90px -20px rgba(0,224,0,0.3),`
`       0px 0px 1px rgba(0,224,0,0.5);`

} /\* callout arrow \*/ html .mwe-popups.mwe-popups-image-tri:after, html .mwe-popups.mwe-popups-no-image-tri:after, html .mwe-popups.mwe-popups-image-tri.flipped_x:after, html .mwe-popups.mwe-popups-no-image-tri.flipped_x:after {

`   border-bottom-color:#000;`

} html .mwe-popups.flipped_y:after, html .mwe-popups.flipped_x_y:after {

`   border-top-color:#000;`

} /\* callout arrow shadow \*/ html .mwe-popups.mwe-popups-image-tri:before, html .mwe-popups.mwe-popups-no-image-tri:before, html .mwe-popups.mwe-popups-image-tri.flipped_x:before, html .mwe-popups.mwe-popups-no-image-tri.flipped_x:before {

`   border-bottom-color:#004000;`

} html .mwe-popups.flipped_y:before, html .mwe-popups.flipped_x_y:before {

`   border-top-color:#004000;`

} html .mwe-popups .mwe-popups-container, html .mwe-popups .mwe-popups-extract {

`   color:#0d0;`

} html .mwe-popups .mwe-popups-extract\[dir='ltr'\]:after {

`   background-image: linear-gradient(to right,rgba(0,0,0,0),#000 50%);`

}

/\* [WP:WikEd](https://zh.wikipedia.org/wiki/WP:WikEd "wikilink") \*/ html .wikEdDiffFragment, html .wikEdPreviewArticle, html .wikEdDiffNoChange, html .wikEdConsoleWrapper {

`   background-color:inherit;`

} html .wikEdButtonsPreview, html .wikEdButtonBarGrip, html .wikEdButtonBarButtonsWrapperVisible, html .wikEdButtonBarButtonsWrapperHidden {

`   background-color:#666;`

} html img.wikEdButton {

`   background-color:#999;`

} html iframe.wikEdFrame {

`   background-color: white;`
`   color: black;`
`   filter: invert(1) hue-rotate(180deg);`

}

/\* [mw:Echo](https://zh.wikipedia.org/wiki/mw:Echo "wikilink") \*/ html .mw-echo-ui-notificationItemWidget-content-message-header, html .mw-echo-ui-notificationItemWidget-unread, html .mw-echo-ui-notificationItemWidget-unread:hover, html .mw-echo-ui-notificationItemWidget, html .mw-echo-ui-notificationItemWidget:hover {

`   color:#0d0;`
`   background-color:#010;`

} html \#pt-notifications-alert .mw-echo-notifications-badge:before {

`   filter:invert(1);`

} html \#pt-notifications-notice .mw-echo-notifications-badge:before {

`   filter:invert(1);`

} /\* [mw:User:Remember the dot/Syntax highlighter](https://zh.wikipedia.org/wiki/mw:User:Remember_the_dot/Syntax_highlighter "wikilink") \*/ html \#wpTextbox0 {

` filter:saturate(8) invert(1) hue-rotate(180deg);`

} html \#wpTextbox0+\#wpTextbox1 {

` filter:invert(1);`

}

/\* de's Flaggedrev \*/ html .flaggedrevs-color-1 {

`   background-color: #102;`

}

html \#mp-2012 .mp-2012-text, html \#mp-2012-banner-title p, html \#mp-2012 \#column-tips, html \#mp-2012 \#column-participate, html \#mp-2012-sisters, html \#mp-2012 \#column-feature-more .column-feature-more-header a {

`   color: #00dd00;`

}

html \#mp-2012-banner {

`   background: #000;`

}

html \#mp-2012-column-right-block-a, html \#mp-2012-column-right-block-b {

`   background: #000;`

}

html \#mp-2012-banner-logo {

`   -webkit-filter: invert(1);`
`   filter: invert(100%);`

}

html \#VillageNav {

`   background-color: #1F1205!important;`

}

html .flow-post {

`   color: #00dd00;`

} html .flow-board-header:before {

`   background-color: #15130f!important;`

}

/\* End @media screen \*/ }