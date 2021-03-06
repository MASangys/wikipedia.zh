> 本文内容由[MediaWiki:Monobook.css](https://zh.wikipedia.org/wiki/MediaWiki:Monobook.css)转换而来。


/\* Monobook皮肤的公共CSS

管理员注意！任何对Monobook.css的改变必须先在技术客栈讨论，谢谢。 \*/

/\* Don't display some stuff on the main page \*/ body.ns-4.page-Wikipedia_首页 \#deleteconfirm, body.ns-4.page-Wikipedia_首页 \#t-cite, body.ns-4.page-Wikipedia_首页 \#lastmod, body.ns-4.page-Wikipedia_首页 \#siteSub, body.ns-4.page-Wikipedia_首页 \#contentSub, body.ns-4.page-Wikipedia_首页 h1.firstHeading {

`   display: none !important;`

} /\* The above causes the bodyContent div to cover most of the

`  tabs on the main page, making them unclickable. Shifting `
`  it down a bit fixes the problem. */`

body.ns-4.page-Wikipedia_首页 \#bodyContent{

`   margin-top: 1.3em;`

}

/\* Donations link to be uncommented during fundraising drives \*/

1.  siteNotice {

`   margin-top:5px;`
`   padding-left: 4px;`
`   font-style: italic;`
`   text-align: center;`

}

/\*

1.  fundraising {

`text-align: center;`
`border: 1px solid gray;`
`padding: 5px;`

}

  - /

/\* BEGIN LIGHT BLUE SECTION

`  Make content area light blue in all namespaces except articles (main namespace). `
`  This is done by setting the background color for all #content areas `
`  to light blue, and then overriding it back to white for any #content `
`  enclosed in a .ns-0 (main namespace). We do the same for the "tab" `
`  backgrounds and some other objects. */`

div\#content, div\#p-cactions li a:hover, div\#p-cactions li.selected a, div\#content div.thumb { /\* "Margin" for thumbs, padding for galleries \*/

`   background-color: #F8FCFF;   /* Light blue */`

} div\#p-cactions li a {

`   background-color: #F7F9FB;   /* Light blue-gray inactive tabs */`

}

.ns-0 div\#content, .ns-0 div\#p-cactions li a:hover, .ns-0 div\#p-cactions li.selected a, .ns-0 div\#content div.thumb, .ns-4.page-Wikipedia_首页 div\#content, .ns-4.page-Wikipedia_首页 div\#p-cactions li a:hover, .ns-4.page-Wikipedia_首页 div\#p-cactions li.selected a, .ns-4.page-Wikipedia_首页 div\#content div.thumb {

`   background-color: white;     /* Set back to white for articles */`

} .ns-0 div\#p-cactions li a, .ns-4.page-Wikipedia_首页 div\#p-cactions li a {

`   background-color: #FBFBFB;   /* Light gray inactive tabs in articles */`

}

@media print {

`   div#content { background: white; } /* White background on print */`

}

/\* Category lists and diffs transparent instead of white. \*/

1.  mw-subcategories table, \#mw-pages table,

table.diff, td.diff-otitle, td.diff-ntitle {

`   background-color: transparent;`

}

/\* END LIGHT BLUE SECTION \*/

/\* 顯示 "維基百科，自由的百科全書" \*/ body.ns-0 \#siteSub, body.ns-1 \#siteSub {

`   display: inline;`

}

/\* Bold 'edit this page' link to encourage newcomers \*/

1.  ca-edit a { font-weight: bold \!important; }

/\* Display "User $1, you are already logged in\!"

`  (`[`MediaWiki:Alreadyloggedin`](https://zh.wikipedia.org/wiki/MediaWiki:Alreadyloggedin "wikilink")`) in red and bold */`

div.alreadyloggedin { color: red; font-weight: bold; }

@media print {

`   /* Do not print edit link in templates using Template:Ed`
`      Do not print certain classes that shouldn't appear on paper */`
`   .editlink, .noprint, .metadata, .dablink { display: none }`
`   #content { background: #FFFFFF; } /* white background on print */`

}

1.  pt-login {

` font-weight: bold;`
` font-size: 110%;`

}

form\#userlogin {

` float: left;`
` padding: 1em 1em .7em 1em;`
` background-color: #ffffe6;`
` border: 2px solid #fc6;`
` color: #000;`
` margin-right: 2em;`

}

form\#userlogin table {

` float: left;`
` background-color: #ffffe6;`
` color: #000;`

}

p.error {

` font-weight: bold;`

}

/\* Fix Fontsize \*/ .portlet h5, .portlet ul,

1.  toc .toctoggle {

`   font-size: 100%;`

} .pBody,

1.  footer,

div.thumb div {

`   font-size: 95%;`

}

h2 {

`   font-weight: bold;`

}

/\* ul {

`   margin: 0.5em 0 0 1.5em;`

}

`*/`

/\* sharedUploadNotice 去掉斜體 \*/

1.  sharedUploadNotice {

`   font-style: normal;`

}

/\* siteNotice 去掉斜体 \*/

1.  siteNotice {

`   font-style: normal;`

}

/\* siteNotice 的表格去除顏色 \*/

1.  siteNotice table {

`   background: transparent;`

}

1.  coordinates {

`   position: absolute;`
`   z-index: 1;`
`   border: none;`
`   background: none;`
`   right: 0;`
`   top: 4.2em;`
`   float: right;`
`   margin: 0.0em;`
`   padding: 0.0em;`
`   padding-right: 30px;`
`   line-height: 1.5em;`
`   text-align: right;`
`   text-indent: 0;`
`   font-size: 85%;`
`   text-transform: none;`
`   white-space: nowrap;`

}

li.FA, .portlet .badge-featuredarticle, .portlet .badge-featuredlist {

`   list-style-image: url("//upload.wikimedia.org/wikipedia/commons/d/d4/Monobook-bullet-star.png");`

}

li.GA, .portlet .badge-goodarticle {

`   list-style-image: url("//upload.wikimedia.org/wikipedia/commons/4/42/Monobook-bullet-ga.png");`

}

.selected-anniversary dl {

`   list-style-image: url("`<data:image/gif;base64,R0lGODlhBQANAIAAAGOMnP///yH5BAEAAAEALAAAAAAFAA0AAAIJjI+pu+APo4SpADs=>`");`
`   list-style-type: square;`

}