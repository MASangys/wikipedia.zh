> 本文内容由[MediaWiki:Vector.css](https://zh.wikipedia.org/wiki/MediaWiki:Vector.css)转换而来。


/\* 此处的 CSS 将影响使用 Vector 皮肤的用户 \*/

body.ns-4.page-Wikipedia_首页 \#deleteconfirm, body.ns-4.page-Wikipedia_首页 \#t-cite, body.ns-4.page-Wikipedia_首页 \#footer-info-lastmod, body.ns-4.page-Wikipedia_首页 \#siteSub, body.ns-4.page-Wikipedia_首页 \#contentSub, body.ns-4.page-Wikipedia_首页 h1.firstHeading {

`   display: none !important;`

}

body.ns-4.page-Wikipedia_首页 \#jump-to-nav {

`   margin: 0 !important;`

}

/\*  \*/

1.  mw-panel div.portal div.body ul li.GA {

` background: url("//upload.wikimedia.org/wikipedia/commons/4/42/Monobook-bullet-ga.png") no-repeat 0% 0%;`
` margin-left: -10px;`
` padding-left: 10px;`

}

/\*  \*/

1.  mw-panel div.portal div.body ul li.FA {

` background: url("//upload.wikimedia.org/wikipedia/commons/d/d4/Monobook-bullet-star.png") no-repeat 0% 0%;`
` margin-left: -10px;`
` padding-left: 10px;`

}

.badge-featuredarticle, .badge-featuredlist {

`   list-style-image: url("//upload.wikimedia.org/wikipedia/commons/d/d4/Monobook-bullet-star.png");`

}

.badge-goodarticle {

`   list-style-image: url("//upload.wikimedia.org/wikipedia/commons/4/42/Monobook-bullet-ga.png");`

}

/\* 顯示 "維基百科，自由的百科全書" \*/ body.ns-0 \#siteSub, body.ns-1 \#siteSub {

`   display: inline;`

}

/\* The following are Vector bugfixes \*/

/\* Temporary fix until [bugzilla:19567](https://zh.wikipedia.org/wiki/bugzilla:19567 "wikilink") is addressed \*/

1.  siteNotice div { margin: 0; }
2.  siteNotice div.expanded table.siteNoticeUser { margin-bottom: 1em; }

/\* end of bugfixes \*/

1.  coordinates {

` position: absolute;`
` top: 0em;`
` right: 0em;`
` float: right;`
` margin: 0.0em;`
` padding: 0.0em;`
` line-height: 1.5em;`
` text-align: right;`
` text-indent: 0;`
` font-size: 85%;`
` text-transform: none;`
` white-space: nowrap;`

}

/\* For the new main page design \*/

1.  mp-2012-banner {

`   /* In default font size, #bodyContent has font-size: 0.8em. */`
`   /* See also: `[`bugzilla:57401`](https://zh.wikipedia.org/wiki/bugzilla:57401 "wikilink")` */`
`   margin: 0 -1.25em;`
`   margin: 0 -1rem !important;`

}

body.vector-animateLayout \#mp-2012-banner {

`   -moz-transition: margin-left 250ms, margin-right 250ms;`
`   -webkit-transition: margin-left 250ms, margin-right 250ms;`
`   -o-transition: margin-left 250ms, margin-right 250ms;`
`   transition: margin-left 250ms, margin-right 250ms;`

}

@media screen and (min-width: 982px) {

`   #mp-2012-banner {`
`       margin: 0 -1.875em;`
`       margin: 0 -1.5rem !important;`
`   }`

}

.selected-anniversary dl {

`   list-style-image: url("`<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAANAQMAAABb8jbLAAAABlBMVEX///8AUow5QSOjAAAAAXRSTlMAQObYZgAAABNJREFUCB1jYEABBQw/wLCAgQEAGpIDyT0IVcsAAAAASUVORK5CYII=>`");`
`   list-style-type: disc;`

}