> 本文内容由[MediaWiki:Print.css](https://zh.wikipedia.org/wiki/MediaWiki:Print.css)转换而来。


/\* 标题与内容字体互换，优化纸张打印效果\*/ html, body {

`   font-family: 'Linux Libertine',Georgia,Times,serif;`

} .mw-body h1, .mw-body h2, .mw-body h3, .mw-body h4, .mw-body h5, .mw-body h6 {

`   font-family: sans-serif;`

}

/\* Do not print:

`  1: When in mainspace: Article message boxes,`
`     navboxes, sister project boxes, disambig links,`
`     and items marked as metadata.`
`  2: Privacy, about, disclaimer, redirect and section edit links.`
`  3: Show/hide toggles for collapsible items.`
`  4: Items marked as noprint.`

  - /

.ns-0 .ambox, .ns-0 .navbox, .ns-0 .vertical-navbox, .ns-0 .infobox.sisterproject, .ns-0 .hatnote, .ns--1 .hatnote, .ns--1 .dablink, .ns-0 .dablink, .ns-0 .metadata, .ns-0 .mbox-small, .editlink, .navbar, a.NavToggle, span.collapseButton, span.mw-collapsible-toggle, .ns-0 .mw-indicators, .ns-0 .mw-cite-backlink, .ns-0 .stub,

1.  filetoc,
2.  footer-places,
3.  privacy, \#about, \#disclaimer,
4.  catlinks,

span\#coordinates, span.toctoggle, th .sortkey, td .sortkey .noprint {

`   display: none !important;`

}

/\* Add formatting to make sure that "external references" from templates

`  like `[`Template:Ref`](https://zh.wikipedia.org/wiki/Template:Ref "wikilink")` do not get URL expansion, not even when printed.`
`  The anchor itself has class "external autonumber" and the url expansion`
`  is inserted when printing (see the common printing style sheet at`
`  `<http://en.wikipedia.org/w/skins/common/commonPrint.css>`) using the`
`  ":after" pseudo-element of CSS. Also hide in `<cite>` elements.`

  - /

<!-- end list -->

1.  content cite a.external.text:after,

.nourlexpansion a.external.text:after, .nourlexpansion a.external.autonumber:after {

`   display: none !important;`

}

/\* Uncollapse collapsible tables/divs.

`  The proper way to do this for tables is to use display:table-row,`
`  but this is not supported by all browsers, so use display:block as fallback.`

  - /

table.collapsible tr, div.NavPic, div.NavContent {

`   display: block !important;`

} table.collapsible tr {

`   display: table-row !important;`

}

/\* Hiding some items when printing with Simple skin \*/ .skin-simple div\#column-one, .skin-simple div\#f-poweredbyico, .skin-simple div\#f-copyrightico, .skin-simple .editsection {

`   display: none; `

}

/\* Restoring font size \*/ /\* \#bodyContent {

`   font-size: 100% !important;`

} \*/ @import "/w/index.php?title=MediaWiki:Gadget-fontsize.css\&action=raw\&ctype=text/css";

/\* Hide \[show\]/\[hide\] links \*/ .NavToggle {

`   display: none !important;`

}

/\* On websites with siteSub visible, the margin on the firstHeading is not needed. \*/

1.  firstHeading {

`   margin: 0;`

}

/\* 消除的文字背景颜色 \*/ mark.template-facttext{

`   background-color:transparent;`

}

/\* We don't want very long URLs (that are added to the content in print) to widen the canvas \*/

1.  content a.external.text:after,
2.  content a.external.autonumber:after {

`   word-wrap: break-word;`

}

/\*避免分页断行\*/

blockquote,table,pre,.toc{

`   page-break-inside:avoid;`

} .toc{

`   box-decoration-break: clone;`

}

/\* - Basic infobox styling - Remove background colors, they are hard to print

  - /

.infobox {

`   border: solid 1px #aaa;`
`   background-color: #fff;`
`   border-spacing: 0;`
`   border-collapse: collapse;`
`   width: 180pt !important; /*T174957*/`

}

.infobox \> \* \> tr \> td, .infobox \> \* \> tr \> th {

`   padding: 2px 5px;`
`   border-bottom: 1px solid #EAECF0;       `

}

/\* Reduce noise for print medium - labels may be links \*/ .infobox a, /\* reset last border (set above) of infobox \*/ .infobox \> \* \> tr:last-child \> th, .infobox \> \* \> tr:last-child \> td {

`   border: 0;`

}

/\* References \*/ .refbegin a, .references a, .reference a {

`   color: black !important;`

}

.printfooter {

`   clear:both;`

}