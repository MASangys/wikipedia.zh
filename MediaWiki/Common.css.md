/\* 所有皮肤的公共CSS \*/

/\* 管理员注意！任何对Common.css的改变必须先在技术客栈讨论，谢谢。 \*/

/\* Default styling for HTML elements \*/ dfn {

`   font-style: inherit;  /* Reset default styling for `<dfn>` */`

}

/\*

## 参考区

  - /

/\* Make the list of references smaller \*/ ol.references, div.reflist {

`   font-size: 90%;            /* Default font-size */`
`   margin-bottom: 0.5em;`

} div.reflist ol.references{

`   font-size: 100%;           /* Reset font-size when nested in div.reflist */`

} div.reflist ol.references, div.notelist ol.references {

`   list-style-type: inherit;  /* Enable custom list style types */`

}

/\* .references-2column b/c \*/ div.references-2column {

`   -moz-column-count: 2;`
`   column-count: 2;`
`   font-size: 90%;`

} div.references-2column ol.references, div.references-2column div.reflist{

`   font-size: 100%;`

}

/\* Reset top margin for lists embedded in columns \*/ div.columns {

`   margin-top: 0.3em;`

} div.columns dl, div.columns ol, div.columns ul {

`   margin-top: 0;`

}

/\* Avoid list items from breaking between columns \*/ div.columns li, div.columns dd dd {

`   -webkit-column-break-inside: avoid;`
`   page-break-inside: avoid;`
`   break-inside: avoid-column;`

}

/\* Highlight clicked reference in blue to help navigation \*/ ol.references li:target, sup.reference:target, span.citation:target {

`   background-color: #DEF;`

}

/\* Prevent line breaks in silly places:

`  1) Where desired`
`  2) Links when we don't want them to`
`  3) Bold "links" to the page itself`
`  4) HTML formulae`
`  5) Ref tags with group names `<ref group="Note">` --> "[Note 1]"`

  - /

.nowrap, .nowraplinks a, .nowraplinks .selflink, span.texhtml, sup.reference a {

`   white-space: nowrap;`

}

/\* In the case where non-CJK links are joined with CJK punctuations

`  (thus no space after punctuations), browsers tend to disallow link wrap`
`  around those punctuations (see diff=37708459). Insert an empty pseudo-`
`  element with standard wrapping to work around this. */`

.nowraplinks a:before, .nowraplinks .selflink:before {

`   content: " ";`
`   font-size: 0;`
`   white-space: normal;`

}

/\* However if there is a manual nowrap, do not ignore it. \*/ .nowraplinks .nowrap a:before, .nowraplinks .nowrap .selflink:before {

`   white-space: nowrap;`

}

/\* Style for horizontal lists (separator following item) \*/ .skin-monobook .hlist dl, .skin-modern .hlist dl, .skin-vector .hlist dl {

`   line-height: 1.5em;`

} .hlist dl, .hlist ol, .hlist ul {

`   margin: 0;`

} .hlist dd, .hlist dt, .hlist li {

`   display: inline;`
`   margin: 0;`

} /\* Display nested lists inline \*/ .hlist dl dl, .hlist ol ol, .hlist ul ul {

`   display: inline;`

} /\* Generate interpuncts \*/ .hlist dt:after {

`   content: " :";`

} .hlist dd:after, .hlist li:after {

`   content: " · ";`
`   font-weight: bold;`

} .hlist dd:last-child:after, .hlist dt:last-child:after, .hlist li:last-child:after {

`   content: none;`

} /\* for IE 8 \*/ .hlist dd.nopunct:after, .hlist dt.nopunct:after, .hlist li.nopunct:after {

`   content: none;`

} /\* Add parens around nested lists \*/ .hlist dl dl:before, .hlist ol ol:before, .hlist ul ul:before {

`   content: "(";`

} .hlist dl dl:after, .hlist ol ol:after, .hlist ul ul:after {

`   content: ")";`

} /\* Put numbers in ordered lists \*/ .hlist.hnum ol li {

`   counter-increment: level1;`

} .hlist.hnum ol li:before {

`   content: counter(level1) " ";`

} .hlist.hnum ol ol li {

`   counter-increment: level2;`

} .hlist.hnum ol ol li:before {

`   content: counter(level2) " ";`

}

/\* Unbulleted lists \*/ .plainlist ul {

`   line-height: inherit;`
`   list-style: none none;`
`   margin: 0;`

} .plainlist ul li {

`   margin-bottom: 0;`

}

.same-bg { background: none }

/\*

## 提示

  - /

/\* Style for "notices" \*/ .notice {

`   text-align: justify;`
`   margin: 1em;`
`   padding: 0.2em;`

}

1.  disambig {

`   border-top: 3px double #a2a9b1;`
`   border-bottom: 3px double #a2a9b1;`

}

1.  spoiler {

`   border-top: 2px solid #a2a9b1;`
`   border-bottom:2px solid #a2a9b1;`

}

/\*

## 未归类

  - /

/\* Infobox template style \*/

.infobox {

`  border: 1px solid #a2a9b1;`
`  background-color: #f8f9fa;`
`  color: black;`
`  margin-bottom: 0.5em;`
`  margin-left: 1em;`
`  padding: 0.2em;`
`  float: right;`
`  clear: right;`

} .infobox td, .infobox th {

`  vertical-align: top;`

} .infobox caption {

`  font-size: larger;`

} .infobox.bordered {

`  border-collapse: collapse;`

} .infobox.bordered td, .infobox.bordered th {

`  border: 1px solid #a2a9b1;`

} .infobox.bordered .borderless td, .infobox.bordered .borderless th {

`  border: 0;`

}

.infobox.sisterproject {

`  width: 20em;`
`  font-size: 90%;`

}

/\* styles for bordered infobox with merged rows \*/ .infobox.bordered .mergedtoprow td, .infobox.bordered .mergedtoprow th {

`  border: 0;`
`  border-top: 1px solid #a2a9b1;`
`  border-right: 1px solid #a2a9b1;`

}

.infobox.bordered .mergedrow td, .infobox.bordered .mergedrow th {

`  border: 0;`
`  border-right: 1px solid #a2a9b1;`

}

/\* styles for geography infoboxes, e.g. countries, country subdivisions, cities, etc. \*/

.infobox.geography {

`  text-align: left;`
`  border-collapse: collapse;`
`  line-height: 1.2em; `
`  font-size: 90%;`

}

.infobox.geography td, .infobox.geography th {

`  border-top: solid 1px #a2a9b1;`
`  padding: 0.4em 0.6em 0.4em 0.6em;`

} .infobox.geography .mergedtoprow td, .infobox.geography .mergedtoprow th {

`  border-top: solid 1px #a2a9b1;`
`  padding: 0.4em 0.6em 0.2em 0.6em;`

}

.infobox.geography .mergedrow td, .infobox.geography .mergedrow th {

`     border: 0;`
`     padding: 0 0.6em 0.2em 0.6em;`

}

.infobox.geography .mergedbottomrow td, .infobox.geography .mergedbottomrow th {

`  border-top: 0;`
`  border-bottom: solid 1px #a2a9b1;`
`  padding: 0 0.6em 0.4em 0.6em;`

}

.infobox.geography .maptable td, .infobox.geography .maptable th {

`     border: 0;`
`     padding: 0;`

}

1.  wpSave {

` font-weight: bold;`

}

/\* class hiddenStructure is defunct. See [Wikipedia:hiddenStructure](https://zh.wikipedia.org/wiki/Wikipedia:hiddenStructure "wikilink") \*/ .hiddenStructure {

`   display: inline ! important;`
`   color: #f00; `
`   background-color: #0f0;`

}

/\* Removes underlines from certain links \*/ .nounderlines a {

`   text-decoration: none !important;`

}

/\* Custom link colors for use in [MediaWiki:Edittools](https://zh.wikipedia.org/wiki/MediaWiki:Edittools "wikilink") \*/ .charboxblack a:link, .charboxblack a:hover, .charboxblack a:visited, .charboxblack a:active { color: black; } .charboxsilver a:link, .charboxsilver a:hover, .charboxsilver a:visited, .charboxsilver a:active { color: silver; } .charboxgray a:link, .charboxgray a:hover, .charboxgray a:visited, .charboxgray a:active { color: gray; } .charboxwhite a:link, .charboxwhite a:hover, .charboxwhite a:visited, .charboxwhite a:active { color: white; } .charboxmaroon a:link, .charboxmaroon a:hover, .charboxmaroon a:visited, .charboxmaroon a:active { color: maroon; } .charboxred a:link, .charboxred a:hover, .charboxred a:visited, .charboxred a:active { color: red; } .charboxpurple a:link, .charboxpurple a:hover, .charboxpurple a:visited, .charboxpurple a:active { color: purple; } .charboxfuchsia a:link, .charboxfuchsia a:hover, .charboxfuchsia a:visited, .charboxfuchsia a:active { color: fuchsia; }

.charboxgreen a:link, .charboxgreen a:hover, .charboxgreen a:visited, .charboxgreen a:active { color: green; } .charboxlime a:link, .charboxlime a:hover, .charboxlime a:visited, .charboxlime a:active { color: lime; } .charboxolive a:link, .charboxolive a:hover, .charboxolive a:visited, .charboxolive a:active { color: olive; } .charboxyellow a:link, .charboxyellow a:hover, .charboxyellow a:visited, .charboxyellow a:active { color: yellow; }

.charboxnavy a:link, .charboxnavy a:hover, .charboxnavy a:visited, .charboxnavy a:active { color: navy; } .charboxblue a:link, .charboxblue a:hover, .charboxblue a:visited, .charboxblue a:active { color: blue; } .charboxteal a:link, .charboxteal a:hover, .charboxteal a:visited, .charboxteal a:active { color: teal; } .charboxaqua a:link, .charboxaqua a:hover, .charboxaqua a:visited, .charboxaqua a:active { color: aqua; }

/\*

## 未归类

  - /

/\* Class styles \*/

/\* Special characters list below edit window works better without underlining \*/

1.  editpage-specialchars a { text-decoration: none; }
2.  editpage-specialchars a:hover { text-decoration: underline; }

/\* If you don't want to see special characters list at all,

`  put the following line in your User:You/monobook.css file`
` (and remove the slash-asterisk comments) */`

/\* \#editpage-specialchars { display: none; } \*/

/\* Makes the background of a framed image white instead of gray. \*/ /\* Only visible with transparent images. \*/ /\* See \#Framed_image_background_color \*/ div.thumb div a img {

`   background-color:#f8f9fa;`

}

/\* Put a checker background at the image description page only visible if the image has transparent background \*/

1.  file img {background: url("//upload.wikimedia.org/wikipedia/commons/5/5d/Checker-16x16.png") repeat;}

/\* Hatnotes and disambiguation notices \*/ .hatnote {

`   /* @noflip */`
`   font-size: small;`

} .hatnote i {

`   font-style: normal;`

}

div.hatnote {

`   /* @noflip */`
`   padding-left: 2em;`
`   margin-bottom: 0.8em; /* 小于1.2可能会导致错行问题*/`
`   margin-top: 0.8em;`
`   /* background: url(//upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Disambig_gray.svg/26px-Disambig_gray.svg.png) no-repeat;*/`

} div.hatnote + div.hatnote {

`   margin-top: -0.5em;`

}

/\*

## 地理坐标

Geographical coordinates defaults. See [Template:Coord/link](https://zh.wikipedia.org/wiki/Template:Coord/link "wikilink")

`  for how these are used. The classes "geo", "longitude", and`
`  "latitude" are used by the `[`Geo``   ``microformat`](https://zh.wikipedia.org/wiki/Geo_microformat "wikilink")`.`
`*/`

.geo-default, .geo-dms, .geo-dec { display: inline; } .geo-nondefault, .geo-multi-punct { display: none; } .longitude, .latitude { white-space: nowrap; }

/\*

## 未归类

/\* custom edits \*/ /\* Default style for navigation boxes \*/ .navbox { /\* Navbox container style \*/

`   border: 1px solid #a2a9b1;`
`   width: 100%; `
`   margin: auto;`
`   clear: both;`
`   font-size: 88%;`
`   text-align: center;`
`   padding: 1px;`

} .navbox-inner, .navbox-subgroup {

`   width: 100%;`

} .navbox th, .navbox-title, .navbox-abovebelow {

`   text-align: center;       /* Title and above/below styles */`
`   padding-left: 1em;`
`   padding-right: 1em;`

} th.navbox-group { /\* Group style \*/

`   white-space: nowrap;`
`   /* @noflip */`
`   text-align: right;`

} .navbox, .navbox-subgroup {

`   background: #fdfdfd;      /* Background color */`

} .navbox-list {

`   border-color: #fdfdfd;    /* Must match background color */`

} .navbox th, .navbox-title {

`   background: #ccccff;      /* Level 1 color */`

} .navbox-abovebelow, th.navbox-group, .navbox-subgroup .navbox-title {

`   background: #ddddff;      /* Level 2 color */`

} .navbox-subgroup .navbox-group, .navbox-subgroup .navbox-abovebelow {

`   background: #e6e6ff;      /* Level 3 color */`

} .navbox-even {

`   background: #f7f7f7;      /* Even row striping */`

} .navbox-odd {

`   background: transparent;  /* Odd row striping */`

} table.navbox + table.navbox { /\* Single pixel border between adjacent navboxes \*/

`   margin-top: -1px;          /* (doesn't work for IE6, but that's okay)       */`

} .navbox .hlist td dl, .navbox .hlist td ol, .navbox .hlist td ul, .navbox td.hlist dl, .navbox td.hlist ol, .navbox td.hlist ul {

`   padding: 0.125em 0;       /* Adjust hlist padding in navboxes */`

} .navbox .hlist dd, .navbox .hlist dt, .navbox .hlist li {

`   white-space: nowrap;      /* Nowrap list items in navboxes */`
`   white-space: normal !ie;  /* IE < 8 no-wraps entire list, so disable it */`

} .navbox .hlist dd dl, .navbox .hlist dt dl, .navbox .hlist li ol, .navbox .hlist li ul {

`   white-space: normal;      /* But allow parent list items to be wrapped */`

} ol + table.navbox, ul + table.navbox {

`   margin-top: 0.5em;        /* Prevent lists from clinging to navboxes */`

}

/\* Default styling for Navbar template \*/ .navbar {

`   display: inline;`
`   font-weight: normal;`

} .navbar ul {

`   display: inline;`
`   white-space: nowrap;`

} .navbar li {

`   word-spacing: -0.125em;`

} .navbar.mini li abbr\[title\] {

`   font-variant: small-caps;`
`   border-bottom: none;`
`   text-decoration: none;`
`   cursor: inherit;`

} /\* Navbar styling when nested in navbox \*/ .navbox .navbar {

`   display: block;`

} .navbox-title .navbar {

`   /* @noflip */`
`   float: left;`
`   /* @noflip */`
`   text-align: left;`
`   /* @noflip */`
`   margin-right: 0.5em;`
`   width: 8em;`

}

/\* 'show'/'hide' buttons created dynamically by the CollapsibleTables javascript

`  in `[`MediaWiki:Common.js`](https://zh.wikipedia.org/wiki/MediaWiki:Common.js "wikilink")` are styled here so they can be customised. */`

.collapseButton {

`   /* @noflip */`
`   float: right;`
`   font-weight: normal;`
`   /* @noflip */`
`   margin-left: 0.5em;`
`   /* @noflip */`
`   text-align: right;`
`   width: auto;`

} /\* In navboxes, the show/hide button balances the v·d·e links

`  from `[`Template:Navbar`](https://zh.wikipedia.org/wiki/Template:Navbar "wikilink")`, so they need to be the same width. */`

.navbox .collapseButton {

`   width: 8em;`

}

/\* For display uneditable section \*/ .noedit .editsection, .noedit .mw-editsection {

`   display: none;`

}

.DYKvote h2, .DYKvote h3, .DYKvote h4 {

`   margin-top: 2em;`

} /\*

## for some templates

Messagebox templates

  - /

.messagebox {

`  border: 1px solid #a2a9b1;`
`  background-color: #f8f9fa;`
`  width: 80%;`
`  margin: 0 auto 1em auto;`
`  padding: .2em;`
`  display: inherit; /* 臨時抑制 `<https://phabricator.wikimedia.org/T232553>` 及 `<https://gerrit.wikimedia.org/r/535738>` 的修改 */`

} .messagebox.merge {

`  border: 1px solid #c0b8cc;`
`  background-color: #f0e5ff;`
`  text-align: center;`

} .messagebox.cleanup {

`  border: 1px solid #9f9fff;`
`  background-color: #efefff;`
`  text-align: center;`

} .messagebox.standard-talk {

`  border: 1px solid #c0c090;`
`  background-color: #f8eaba;`

} .messagebox.nested-talk {

`  border: 1px solid #c0c090;`
`  background-color: #f8eaba;`
`  width: 100%;`
`  margin: 2px 4px 2px 4px;`

} .messagebox.small {

`  width: 238px;`
`  font-size: 85%;`
`  float: right;`
`  clear: both;`
`  margin: 0 0 1em 1em;`
`  line-height: 1.25em; `

} .messagebox.small-talk {

` width: 238px;`
` font-size: 85%;`
` float: right;`
` clear: both;`
` margin: 0 0 1em 1em;`
` line-height: 1.25em; `
` background: #f8f9fa;`

} /\* For template documentation \*/ .template-documentation {

`   clear: both;`
`   margin: 1em 0 0 0;`
`   border: 1px solid #a2a9b1; `
`   background-color: #ecfcf4; `
`   padding: 5px;`

}

/\*

## external link

`Change the external link icon to an Adobe icon for all PDF files `
`(in browsers that support these CSS selectors, like Mozilla and Opera)`

`*/`

1.  bodyContent a\[href$=".pdf"\].external,
2.  bodyContent a\[href\*=".pdf?"\].external,
3.  bodyContent a\[href\*=".pdf\#"\].external,
4.  bodyContent a\[href$=".PDF"\].external,
5.  bodyContent a\[href\*=".PDF?"\].external,
6.  bodyContent a\[href\*=".PDF\#"\].external {

`   background: url(//upload.wikimedia.org/wikipedia/commons/2/23/Icons-mini-file_acrobat.gif) center right no-repeat;`
`   padding-right: 16px;`

}

/\*

## other

  - /

span.lanLabel {

`   color: #72777d;`
`   padding-left: 0.5em;`

}

tt span.minor {

`   margin: 0 -2px 0 -3px;`
`   font-size: 12px;`

} tt span.newpage {

`   margin: 0 1px 0 -6px;`
`   font-size: 12px;`

} tt span.bot {

`   margin: 0 -6px 0 1px;`
`   font-size: 12px;`

} /\*tt span.unpatrolled\*/

/\* 用于封禁类模板，如Template:Uw-block1 \*/ div.user-block {

`   padding: 5px;`
`   border: 1px solid #a2a9b1;`
`   background-color: #FFEFD5;`

}

/\* For linked citation numbers and document IDs, where the number need not be shown on a screen or a handheld, but should be included in the printed version \*/

@media screen, handheld, projection {

`   cite *.printonly {`
`       display: none;`
`   }`

}

/\*

## MetaBox

  - /

/\* Nou esquema de colors per a la Plantilla:Metacaixa usada a la portada \*/

/\* Configuració per defecte en lila

`  Tons usats; 1; 7050a0 2; 9070c0 3; b090e0 4; d0b0ff 5; f0d0ff */`

.mcBoto {

` background-color: #d0b0ff; /* 4 */`
` border: 0.15em solid #000000;`
` border-color: #f0d0ff #b090e0 #9070c0 #f0d0ff;  /* 5 3 3 5 */`
` border-radius-topleft: .5em;`
` border-radius-topright: .5em;`
` -moz-border-radius: .5em .5em 0em 0em;`
` cursor:pointer;`
` display: inline;`
` margin-right: 0.1em;`
` padding: 0.2em 0.3em 0.2em 0.3em;`
` position: relative;}`

.mcBoto a, .mcBoto strong {

` background: none !important;`
` color:#7050a0 !important;  /* 1 */`
` font-size: 90%;`
` font-weight: bold;`
` padding: 0 !important;`
` text-decoration: none !important;}`

.mcBoto a:hover, .mcBoto strong:hover {

` color: black !important;`
` text-decoration: underline !important;}`

.mcBotoSel {

` background-color: #9070c0; /* 2 */`
` border: 0.15em solid #000000;`
` border-color: #b090e0 #7050a0 #9070c0 #b090e0;  /* 3 1 2 3 */`
` border-radius-topleft: .5em;`
` border-radius-topright: .5em;`
` -moz-border-radius: .5em .5em 0em 0em;`
` cursor: default;`
` display: inline;`
` margin-right: 0.1em;`
` padding: 0.2em 0.3em 0.2em 0.3em;`
` position: relative;`
` color:white;}`

.mcBotoSel a {

` background: none !important;`
` color:white !important;`
` cursor: default;`
` font-size: 90%;`
` font-weight: bold;`
` padding: 0 !important;`
` text-decoration: none !important;}`

.mcContingut {

` background-color: #f8f8ff;`
` border: 0.2em solid #9070c0; /* 2 */`
` border-color: #9070c0 #7050a0 #7050a0 #9070c0 ; /* 2 1 1 2 */`
` -moz-border-radius: 0em .5em .5em 0em;`
` border-radius-topright: .5em;`
` border-radius-bottomright: .5em;`
` padding: 1em;`
` position: static;  /* Si hi posem relative falla amb MSIE */}`

.mcPestanya {

` background-color: #f8f8ff;`
` border-color: #7050a0 #b090e0 #b090e0 #7050a0; /* 1 3 3 1 */  width: 100%;`

}

/\* Configuració del Verd 1;60b030 2;75c045 3;90d060 4;a5e085 5;c0f090 \*/

.mcVerd .mcBoto {

`background-color: #a5e085; /* 4 */`
`border-color: #c0f090 #90d060 #75c045 #c0f090;  /* 5 3 2 5 */}`

.mcVerd .mcBoto a, .mcVerd .mcBoto strong {

` color:#60b030 !important;  /* 1 */`
` font-size:90%}`

.mcVerd .mcBoto a:hover, .mcVerd .mcBoto strong:hover {

` color: black !important;`
` text-decoration: underline;}`

.mcVerd .mcBotoSel {

` background-color: #75c045; /* 2 */`
` border-color: #90d060 #60b030 #75c045 #90d060;  /* 3 1 2 3 */}`

.mcVerd .mcContingut {

` background-color: #f5fffa;`
` border-color: #75c045 #60b030 #60b030 #75c045 ; /* 2 1 1 2 */}`

.mcVerd .mcPestanya {

` background-color: #f5fffa;`
` border-color: #60b030 #90d060 #90d060 #60b030; /* 1 3 3 1 */}`

/\* Configuració del Vermell 1;CC0000 2;FF0000 3;FF8888 4;FFAAAA 5;FFCCCC \*/

.mcVermell .mcBoto {

`background-color: #FFAAAA; /* 4 */`
`border-color: #FFCCCC #FF8888 #FF0000 #FFCCCC;  /* 5 3 2 5 */}`

.mcVermell .mcBoto a, .mcVermell .mcBoto strong {

` color:#CC0000 !important;  /* 1 */`
` font-size:90%}`

.mcVermell .mcBoto a:hover .mcVermell .mcBoto strong:hover {

` color: black !important;`
` text-decoration: underline;}`

.mcVermell .mcBotoSel {

` background-color: #FF0000; /* 2 */`
` border-color: #FF8888 #CC0000 #FF0000 #FF8888;  /* 3 1 2 3 */}`

.mcVermell .mcContingut {

` background-color: #fffafa;`
` border-color: #FF0000 #CC0000 #CC0000 #FF0000; /* 2 1 1 2 */}`

.mcVermell .mcPestanya {

` background-color: #fffafa;`
` border-color: #CC0000 #FF0000 #FF0000 #CC0000; /* 1 3 3 1 */}`

/\* Configuració del Blau 1;3379de 2;5b8dd6 3;88abde 4;a7c1e6 5;c8d6e9 \*/

.mcBlau .mcBoto {

`background-color: #a7c1e6; /* 4 */`
`border-color: #c8d6e9 #88abde #5b8dd6 #c8d6e9;  /* 5 3 2 5 */}`

.mcBlau .mcBoto a, .mcBlau .mcBoto strong {

` color:#3379de !important;  /* 1 */`
` font-size:90%}`

.mcBlau .mcBoto a:hover .mcBlau .mcBoto strong:hover {

` color: black !important;`
` text-decoration: underline;}`

.mcBlau .mcBotoSel {

` background-color: #5b8dd6; /* 2 */`
` border-color: #88abde #3379de #5b8dd6 #88abde;  /* 3 1 2 3 */}`

.mcBlau .mcContingut {

` background-color: #f0f8ff;`
` border-color: #5b8dd6 #3379de #3379de #5b8dd6; /* 2 1 1 2 */}`

.mcBlau .mcPestanya {

` background-color: #f0f8ff;`
` border-color: #3379de #88abde #88abde #3379de; /* 1 3 3 1 */}`


/\* Configuració del Groc 1;ffd813 2;ffe147 3;ffe977 4;fff1a4 5;fef4bc \*/

.mcGroc .mcBoto {

`background-color: #fff1a4; /* 4 */`
`border-color: #fef4bc #ffe977 #ffe147 #fef4bc;  /* 5 3 2 5 */}`

.mcGroc .mcBoto a, .mcGroc .mcBoto strong {

` color:#ffd813 !important;  /* 1 */`
` font-size:90%}`

.mcGroc .mcBoto a:hover .mcGroc .mcBoto strong:hover {

` color: black !important;`
` text-decoration: underline;}`

.mcGroc .mcBotoSel {

` background-color: #ffe147; /* 2 */`
` border-color: #ffe977 #ffd813 #ffe147 #ffe977;  /* 3 1 2 3 */}`

.mcGroc .mcContingut {

` background-color: #fffce8;`
` border-color: #ffe147 #ffd813 #ffd813 #ffe147; /* 2 1 1 2 */}`

.mcGroc .mcPestanya {

` background-color: #fffce8;`
` border-color: #ffd813 #88abde #88abde #ffd813; /* 1 3 3 1 */}`

/\* Configuració del Taronja 1;ff820e 2;ff9d42 3;ffac5d 4;ffbd7f 5;ffd0a4 6;ffeedd \*/

.mcTaronja .mcBoto {

`background-color: #ffbd7f; /* 4 */`
`border-color: #ffd0a4 #ffac5d #ff9d42 #ffd0a4;  /* 5 3 2 5 */}`

.mcTaronja .mcBoto a, .mcTaronja .mcBoto strong {

` color:#ff820e !important;  /* 1 */`
` font-size:90%}`

.mcTaronja .mcBoto a:hover .mcTaronja .mcBoto strong:hover {

` color: black !important;`
` text-decoration: underline;}`

.mcTaronja .mcBotoSel {

` background-color: #ff9d42; /* 2 */`
` border-color: #ffac5d #ff820e #ff9d42 #ffac5d;  /* 3 1 2 3 */}`

.mcTaronja .mcContingut {

` background-color: #ffeedd; /* 6 */`
` border-color: #ff9d42 #ff820e #ff820e #ff9d42; /* 2 1 1 2 */}`

.mcTaronja .mcPestanya {

` background-color: #ffeedd; /* 6 */`
` border-color: #ff820e #ffac5d #ffac5d #ff820e; /* 1 3 3 1 */}`

/\* Final d'estils de la Metacaixa \*/

/\*HERE FINISHES "METABOX" COLOUR-SCHEMES\*/

/\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

  -   - Styles for mboxes\*\*
          -   - /

/\* Cell sizes for ambox/tmbox/imbox/cmbox/ombox/fmbox/dmbox message boxes \*/ th.mbox-text, td.mbox-text { /\* The message body cell(s) \*/

`   border: none; `
`   padding: 0.25em 0.9em;       /* 0.9em left/right */`
`   width: 100%;    /* Make all mboxes the same width regardless of text length */`

} td.mbox-image { /\* The left image cell \*/

`   border: none; `
`   padding: 2px 0 2px 0.9em;    /* 0.9em left, 0px right */`
`   text-align: center; `

} td.mbox-imageright { /\* The right image cell \*/

`   border: none;`
`   padding: 2px 0.9em 2px 0;    /* 0px left, 0.9em right */`
`   text-align: center; `

} td.mbox-empty-cell { /\* An empty narrow cell \*/

`   border: none;`
`   padding: 0px;`
`   width: 1px;`

}

/\* Article message box styles \*/ table.ambox {

`   margin: 0px 10%;   /* 10% = Will not overlap with other elements */`
`   border: 1px solid #a2a9b1; `
`   border-left: 10px solid #36c;    /* Default "notice" blue */`
`   background: #f8f9fa; `

} table.ambox + table.ambox { /\* Single border between stacked boxes. \*/

`   margin-top: -1px;`

} .ambox th.mbox-text, .ambox td.mbox-text { /\* The message body cell(s) \*/

`   padding: 0.25em 0.5em;       /* 0.5em left/right */`

} .ambox td.mbox-image { /\* The left image cell \*/

`   padding: 2px 0 2px 0.5em;    /* 0.5em left, 0px right */`

} .ambox td.mbox-imageright { /\* The right image cell \*/

`   padding: 2px 0.5em 2px 0;    /* 0px left, 0.5em right */`

}

table.ambox-notice {

`   border-left: 10px solid #36c;    /* Blue */`

} table.ambox-speedy {

`   border-left: 10px solid #b32424;    /* Red */`
`   background: #fee7e6;                   /* Pink */`

} table.ambox-delete {

`   border-left: 10px solid #b32424;    /* Red */`

} table.ambox-content {

`   border-left: 10px solid #f28500;    /* Orange */`

} table.ambox-style {

`   border-left: 10px solid #fc3;    /* Yellow */`

} table.ambox-move {

`   border-left: 10px solid #9932cc;    /* Purple */`

} table.ambox-protection {

`   border-left: 10px solid #a2a9b1;       /* Gray-gold */`

}

/\* Image message box styles \*/ table.imbox {

`   margin: 4px 10%; `
`   border-collapse: collapse; `
`   border: 3px solid #36c;    /* Default "notice" blue */`
`   background: #f8f9fa;`

} .imbox .mbox-text .imbox { /\* For imboxes inside imbox-text cells. \*/

`   margin: 0 -0.5em;    /* 0.9 - 0.5 = 0.4em left/right. */`

} .mbox-inside .imbox { /\* For imboxes inside other templates. \*/

`   margin: 4px;`

}

table.imbox-notice {

`   border: 3px solid #36c;    /* Blue */`

} table.imbox-speedy {

`   border: 3px solid #b32424;    /* Red */`
`   background: #fee7e6;             /* Pink */`

} table.imbox-delete {

`   border: 3px solid #b32424;    /* Red */`

} table.imbox-content {

`   border: 3px solid #f28500;    /* Orange */`

} table.imbox-style {

`   border: 3px solid #fc3;    /* Yellow */`

} table.imbox-move {

`   border: 3px solid #9932cc;    /* Purple */`

} table.imbox-protection {

`   border: 3px solid #a2a9b1;       /* Gray-gold */`

} table.imbox-license {

`   border: 3px solid #88a;       /* Dark gray */`
`   background: #f7f8ff;          /* Light gray */`

} table.imbox-featured {

`   border: 3px solid #cba135;    /* Brown-gold */`

}

/\* Category message box styles \*/ table.cmbox {

`   margin: 3px 10%;`
`   border-collapse: collapse;`
`   border: 1px solid #a2a9b1; `
`   background: #eaf3ff;    /* Default "notice" blue */`

}

table.cmbox-notice {

`   background: #eaf3ff;    /* Blue */`

} table.cmbox-speedy {

`   margin-top: 4px;`
`   margin-bottom: 4px;`
`   border: 4px solid #b32424;    /* Red */`
`   background: #fee7e6;          /* Pink */`

} table.cmbox-delete {

`   background: #fee7e6;    /* Red */`

} table.cmbox-content {

`   background: #FFE7CE;    /* Orange */`

} table.cmbox-style {

`   background: #FFF9DB;    /* Yellow */`

} table.cmbox-move {

`   background: #E4D8FF;    /* Purple */`

} table.cmbox-protection {

`   background: #EFEFE1;    /* Gray-gold */`

}

/\* Other pages message box styles \*/ table.ombox {

`   margin: 4px 10%; `
`   border-collapse: collapse; `
`   border: 1px solid #a2a9b1;       /* Default "notice" gray */`
`   background: #f8f9fa;`

}

table.ombox-notice {

`   border: 1px solid #a2a9b1;       /* Gray */`

} table.ombox-speedy {

`   border: 2px solid #b32424;    /* Red */`
`   background: #fee7e6;             /* Pink */`

} table.ombox-delete {

`   border: 2px solid #b32424;    /* Red */`

} table.ombox-content {

`   border: 1px solid #f28500;    /* Orange */`

} table.ombox-style {

`   border: 1px solid #fc3;    /* Yellow */`

} table.ombox-move {

`   border: 1px solid #9932cc;    /* Purple */`

} table.ombox-protection {

`   border: 2px solid #a2a9b1;       /* Gray-gold */`

}

/\* Talk page message box styles \*/ table.tmbox {

`   margin: 4px 10%;`
`   border-collapse: collapse;`
`   border: 1px solid #c0c090;    /* Default "notice" gray-brown */`
`   background: #f8eaba;`

} .mediawiki .mbox-inside .tmbox { /\* For tmboxes inside other templates. The "mediawiki" \*/

`   margin: 2px 0;               /* class ensures that this declaration overrides other */`
`   width: 100%;  /* For Safari and Opera */     /* styles (including mbox-small above) */`

} .mbox-inside .tmbox.mbox-small { /\* "small" tmboxes should not be small when \*/

`   line-height: 1.5em;          /* also "nested", so reset styles that are   */   `
`   font-size: 100%;             /* set in "mbox-small" above.                */`

}

table.tmbox-speedy {

`   border: 2px solid #b32424;    /* Red */`
`   background: #fee7e6;             /* Pink */`

} table.tmbox-delete {

`   border: 2px solid #b32424;    /* Red */`

} table.tmbox-content {

`   border: 2px solid #f28500;    /* Orange */`

} table.tmbox-style {

`   border: 2px solid #fc3;    /* Yellow */`

} table.tmbox-move {

`   border: 2px solid #9932cc;    /* Purple */`

} table.tmbox-protection, table.tmbox-notice {

`   border: 1px solid #c0c090;    /* Gray-brown */`

}

/\* Disambig and set index box styles \*/ table.dmbox {

`   clear: both; `
`   margin: 0.9em 1em; `
`   border-top: 1px solid #ccc; `
`   border-bottom: 1px solid #ccc; `
`   background: transparent;`
`   font-size: small;`

}

/\* Footer and header message box styles \*/ table.fmbox {

`   clear: both;`
`   margin: 0.2em 0;`
`   width: 100%;`
`   border: 1px solid #a2a9b1;`
`   background: #f8f9fa;     /* Default "system" gray */`

} table.fmbox-system {

`   background: #f8f9fa;`

} table.fmbox-warning {

`   border: 1px solid #bb7070;  /* Dark pink */`
`   background: #ffdbdb;        /* Pink */`

} table.fmbox-editnotice {

`   background: transparent;`

} /\* Div based "warning" style fmbox messages. \*/ div.mw-warning-with-logexcerpt, div.mw-lag-warn-high, div.mw-cascadeprotectedwarning, div\#mw-protect-cascadeon {

`   clear: both;`
`   margin: 0.2em 0;`
`   border: 1px solid #bb7070;`
`   background: #ffdbdb;`
`   padding: 0.25em 0.9em;`

} /\* Div based "system" style fmbox messages. Used in

`  `[`MediaWiki:Noarticletext`](https://zh.wikipedia.org/wiki/MediaWiki:Noarticletext "wikilink")`. */`

div.noarticletext, div.fmbox-system {

`   clear: both;`
`   margin: 0.2em 0;`
`   border: 1px solid #a2a9b1;`
`   background: #f8f9fa;`
`   padding: 0.25em 0.9em;`

}

/\* These mbox-small classes must be placed after all other

`  ambox/tmbox/ombox etc classes. "body.mediawiki" is so `
`  they override "table.ambox + table.ambox" above. */`

body.mediawiki table.mbox-small { /\* For the "small=yes" option. \*/

`   clear: right;`
`   float: right;`
`   margin: 4px 0 4px 1em;`
`   width: 238px;`
`   font-size: 88%;`
`   line-height: 1.25em;`

} body.mediawiki table.mbox-small-left { /\* For the "small=left" option. \*/

`   margin: 4px 1em 4px 0;`
`   width: 238px;`
`   border-collapse: collapse;`
`   font-size: 88%;`
`   line-height: 1.25em;`

}

/\* CODE FOR COMPACT AMBOX \*/

/\* Remove borders, backgrounds, padding, etc. \*/ .compact-ambox table.ambox {

`   border: none;`
`   border-collapse: collapse;`
`   background: transparent;`
`   margin: 0 0 0 1.6em !important;`
`   padding: 0 !important;`
`   width: auto;`
`   display: block;`

} body.mediawiki .compact-ambox table.mbox-small-left {

`   font-size: 100%;`
`   width: auto;`
`   margin: 0;`

} /\* Style the text cell as a list item and remove its padding \*/ .compact-ambox table .mbox-text {

`   padding: 0 !important;`
`   margin: 0 !important;`

} .compact-ambox table .mbox-text-span {

`   display: list-item;`
`   line-height: 1.5em;`
`   list-style-type: square;`
`   list-style-image: url("`<data:image/gif;base64,R0lGODlhBQANAIAAAGOMnP///yH5BAEAAAEALAAAAAAFAA0AAAIJjI+pu+APo4SpADs=>`");`

} /\* Style for compact ambox \*/ /\* Hide the images \*/ .compact-ambox table .mbox-image, .compact-ambox table .mbox-imageright, .compact-ambox table .mbox-empty-cell {

`   display: none;`

}

1.  siteNotice div {

`   margin: 0;`

}

1.  mw-dismissable-notice {

`   background:transparent;`

}

1.  wpSummary, \#wpSummaryLabel, input\#wpSummary,input.mw-summary{

`       margin-top: 0;`
`   margin-bottom: 0;`

}

/\* Allow limiting of which header levels are shown in a TOC;

<div class="toclimit-3">

, for instance, will limit to

`  showing ==headings== and ===headings=== but no further`
`  (as long as there are no =headings= on the page, which`
`  there shouldn't be according to the MoS).`
`*/`

.toclimit-2 .toclevel-2, .toclimit-3 .toclevel-3, .toclimit-4 .toclevel-4, .toclimit-5 .toclevel-5, .toclimit-6 .toclevel-6, .toclimit-7 .toclevel-7 { display: none; }

/\* 解决cite定位内文字显示为斜体的问题 \*/ cite {

`   font-style: normal;`

}

/\* Change logo for zh-hans variants \*/

1.  p-logo a:lang(zh-hans),
2.  p-logo a:lang(zh-cn),
3.  p-logo a:lang(zh-my),
4.  p-logo a:lang(zh-sg) {

`   background-image: url(/static/images/project-logos/zhwiki-hans.png) !important;`

}

/\* [Phabricator:T37337](https://zh.wikipedia.org/wiki/Phabricator:T37337 "wikilink"), improve resolution of logo on high-resolution screens. \*/ @media (-webkit-min-device-pixel-ratio: 1.5), (min-resolution: 1.5dppx) {

`   #p-logo a:lang(zh-hans),`
`   #p-logo a:lang(zh-cn),`
`   #p-logo a:lang(zh-my),`
`   #p-logo a:lang(zh-sg) {`
`       background-image: url(/static/images/project-logos/zhwiki-hans-1.5x.png) !important;`
`       background-size: 136px auto;`
`   }`

} @media (-webkit-min-device-pixel-ratio: 2), (min-resolution: 2dppx) {

`   #p-logo a:lang(zh-hans),`
`   #p-logo a:lang(zh-cn),`
`   #p-logo a:lang(zh-my),`
`   #p-logo a:lang(zh-sg) {`
`       background-image: url(/static/images/project-logos/zhwiki-hans-2x.png) !important;`
`       background-size: 135px auto;`
`   }`

}

/\* Pie chart test: Transparent borders \*/ .transborder {

`   border: solid transparent;`

}

  - html .transborder { /\* IE6 \*/

`   border: solid #000001;`
`   filter: chroma(color=#000001);`

}

/\* <http://zh.wikipedia.org/w/index.php?oldid=18291698#.E7.BB.B4.E5.9F.BA.E8.8D.A3.E8.AA.89.E5.A5.96.E5.8A.B1.E6.A8.A1.E6.9D.BF.E5.87.BA.E4.BA.86.E5.A4.A7.E9.97.AE.E9.A2.98> \*/ .ns-14 .mw-content-ltr \> div\[dir=ltr\] {

`   clear: both;`

}

/\* [template:fact的文字背景色设置](https://zh.wikipedia.org/wiki/template:fact "wikilink") \*/ .template-facttext{

`   background-color: #eaecf0; margin: -.3em 0; padding: .3em 0;`

}

/\* Hide stuff meant for accounts with special permissions. Made visible again in

`  `[`MediaWiki:Group-sysop.css`](https://zh.wikipedia.org/wiki/MediaWiki:Group-sysop.css "wikilink")` and `[`MediaWiki:Group-accountcreator.css`](https://zh.wikipedia.org/wiki/MediaWiki:Group-accountcreator.css "wikilink")`. */`

.sysop-show, .accountcreator-show {

`   display: none;`

}

/\*编辑提交按钮部分的样式\*/

.mw-summary-preset {

`   display: inline;`
`   margin: 0;`
`   padding: 0;`

} .mw-summary-preset-item {

`   border-left: 1px solid #a2a9b1;`
`   display: inline-block;`
`   line-height: 1.25em;`
`   margin: 0.125em 0;`
`   padding: 0 0.5em;`

} .mw-summary-preset-item:first-child {

`   border-left: medium none;`
`   padding-left: 0.25em;`

} .mw-summary-preset-item:last-child {

`   padding-right: 0.25em;`

}

1.  pagehistory li.not-patrolled {

`   background-color: #FFA !important;`

}

/\* HACK to workaround VE and badly written CGroups \*/ .noteTA {

`   display: none;`

}

/\* 页底文字太小 \*/ div\#footer ul li{

`   font-size:small;    `

}

/\* 解决small标签中文字体太小 \*/ small{

`   font-size:.857em;   `

} big{

`   font-size:1.143em;  `

}

/\* 存废讨论旧样式 \*/ body.ns-4.action-view\[class\*=" page-Wikipedia_頁面存廢討論_"\] h2, body.ns-4.action-view\[class\*=" page-Wikipedia_檔案存廢討論_"\] h2, body.ns-4.action-submit\[class\*=" page-Wikipedia_頁面存廢討論_"\] h2, body.ns-4.action-submit\[class\*=" page-Wikipedia_檔案存廢討論_"\] h2 {

`   border-bottom: none;`
`   font-size: 132%;`
`   margin-bottom: .3em;`

} body.ns-4.action-view\[class\*=" page-Wikipedia_頁面存廢討論_"\] h3, body.ns-4.action-view\[class\*=" page-Wikipedia_檔案存廢討論_"\] h3, body.ns-4.action-submit\[class\*=" page-Wikipedia_頁面存廢討論_"\] h3, body.ns-4.action-submit\[class\*=" page-Wikipedia_檔案存廢討論_"\] h3 {

`   font-size: 116%;`
`   margin-bottom: .3em;`

}

/\* 最近更改说明不自动换行 \*/

.mw-changeslist-legend dd {

`   white-space: nowrap;`

}

/\* For portals, added 2011-12-07 -bv

`  On wide screens, show these as two columns`
`  On narrow and mobile screens, let them collapse into a single column */`

.portal-column-left {

`   float: left;`
`   width: 50%;`

} .portal-column-right {

`   float: right;`
`   width: 49%;`

} .portal-column-left-wide {

`   float: left;`
`   width: 60%;`

} .portal-column-right-narrow {

`   float: right;`
`   width: 39%;`

} .portal-column-left-extra-wide {

`   float: left;`
`   width: 70%;`

} .portal-column-right-extra-narrow {

`   float: right;`
`   width: 29%;`

} @media only screen and (max-width: 800px) {

`   /* Decouple the columns on narrow screens */`
`   .portal-column-left,`
`   .portal-column-right,`
`   .portal-column-left-wide,`
`   .portal-column-right-narrow,`
`   .portal-column-left-extra-wide,`
`   .portal-column-right-extra-narrow {`
`       float: inherit;`
`       width: inherit;`
`   }`

}

1.  mw-content-text:lang(zh-Hans) .zhwiki-lang-zh-hant,
2.  mw-content-text:lang(zh-CN) .zhwiki-lang-zh-hant,
3.  mw-content-text:lang(zh-MY) .zhwiki-lang-zh-hant,
4.  mw-content-text:lang(zh-SG) .zhwiki-lang-zh-hant {

`   display: none;`

}

1.  mw-content-text:lang(zh-Hant) .zhwiki-lang-zh-hans,
2.  mw-content-text:lang(zh-HK) .zhwiki-lang-zh-hans,
3.  mw-content-text:lang(zh-MO) .zhwiki-lang-zh-hans,
4.  mw-content-text:lang(zh-TW) .zhwiki-lang-zh-hans {

`   display: none;`

}

/\* Main page fixes \*/

1.  interwiki-completelist {

`   font-weight: bold;`

}

/\* MediaWiki:Tag-jimmy-bot-non-free \*/ .tag-jimmy-bot-non-free {

`   color: red;`
`   font-size: 1.143em;`

}