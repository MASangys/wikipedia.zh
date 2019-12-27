/\* Hide the images \*/ .geo-nondefault, .geo-multi-punct, /\* Hide stuff meant for accounts with special permissions. Made visible again in

`  `[`MediaWiki:Group-sysop.css`](https://zh.wikipedia.org/wiki/MediaWiki:Group-sysop.css "wikilink")`, `[`MediaWiki:Group-accountcreator.css`](https://zh.wikipedia.org/wiki/MediaWiki:Group-accountcreator.css "wikilink")` and`
`  `[`MediaWiki:Group-autoconfirmed.css`](https://zh.wikipedia.org/wiki/MediaWiki:Group-autoconfirmed.css "wikilink")`. */`

.sysop-show, .accountcreator-show, .autoconfirmed-show, /\* Copied from Common.css - allow for hiding text in compact form e.g. clean up templates \*/ .hide-when-compact, /\* portal pages are badly formatted. Until this changes these should be hidden. (see <https://phabricator.wikimedia.org/T86495>) \*/ .noprint.portal {

`   display: none;`

}

/\* Tablet specific styling \*/ @media all and (min-width: 768px) {

`   #content .vertical-navbox,`
`   #content .navbox {`
`       display: inherit;`
`   }`

}

/\* For linked citation numbers and document IDs, where

`  the number need not be shown on a screen or a handheld,`
`  but should be included in the printed version`

TODO: Move to Citation template when templates have stylesheets See <https://www.mediawiki.org/wiki/Requests_for_comment/Allow_styling_in_templates>

  - /

@media screen, handheld {

`   .citation *.printonly {`
`       display: none;`
`   }`

} /\* Styling for citations (CSS3). Breaks long urls, etc., rather than overflowing box

  - /

.citation {

`   word-wrap: break-word;`

}

/\* Default styling for Navbar template TODO: Move to Navbar template when templates have stylesheets See <https://www.mediawiki.org/wiki/Requests_for_comment/Allow_styling_in_templates>

  - /

.navbar {

`   display: inline;`
`   font-size: 88%;`
`   font-weight: normal;`

} .navbar ul {

`   display: inline;`
`   white-space: nowrap;`

} .navbar li {

`   word-spacing: -0.125em;`

} .navbar.mini li span {

` font-variant: small-caps;`

} /\* Navbar styling when nested in infobox and navbox \*/ .infobox .navbar {

`   font-size: 100%;`

} .navbox .navbar {

`   display: block;`
`   font-size: 100%;`

} .navbox-title .navbar {

`   /* @noflip */`
`   float: left;`
`   /* @noflip */`
`   text-align: left;`
`   /* @noflip */`
`   margin-right: 0.5em;`
`   width: 6em;`

}

/\* Style for horizontal lists (separator following item).

`  @source mediawiki.org/wiki/Snippets/Horizontal_lists`
`  @revision 4.2 (2013-11-20)`
`  @author: `[`User:Edokter`](https://zh.wikipedia.org/wiki/User:Edokter "wikilink")

  - /

.hlist dl, .hlist ol, .hlist ul {

`   margin: 0;`
`   padding: 0;`

} /\* Display list items inline \*/ .hlist dd, .hlist dt, .hlist li {

`   margin: 0;`
`   display: inline;`

} /\* Display nested lists inline \*/ .hlist dl dl, .hlist dl ol, .hlist dl ul, .hlist ol dl, .hlist ol ol, .hlist ol ul, .hlist ul dl, .hlist ul ol, .hlist ul ul {

`   display: inline;`

} /\* Generate interpuncts \*/ .mw-parser-output .hlist dt:after {

`   content: ": ";`

} .mw-parser-output .hlist dd:after, .mw-parser-output .hlist li:after {

`   content: " · ";`
`   font-weight: bold;`

} .mw-parser-output .hlist dd:last-child:after, .mw-parser-output .hlist dt:last-child:after, .mw-parser-output .hlist li:last-child:after {

`   content: none;`

} /\* Add parentheses around nested lists \*/ .mw-parser-output .hlist dd dd:first-child:before, .mw-parser-output .hlist dd dt:first-child:before, .mw-parser-output .hlist dd li:first-child:before, .mw-parser-output .hlist dt dd:first-child:before, .mw-parser-output .hlist dt dt:first-child:before, .mw-parser-output .hlist dt li:first-child:before, .mw-parser-output .hlist li dd:first-child:before, .mw-parser-output .hlist li dt:first-child:before, .mw-parser-output .hlist li li:first-child:before {

`   content: " (";`
`   font-weight: normal;`

} .mw-parser-output .hlist dd dd:last-child:after, .mw-parser-output .hlist dd dt:last-child:after, .mw-parser-output .hlist dd li:last-child:after, .mw-parser-output .hlist dt dd:last-child:after, .mw-parser-output .hlist dt dt:last-child:after, .mw-parser-output .hlist dt li:last-child:after, .mw-parser-output .hlist li dd:last-child:after, .mw-parser-output .hlist li dt:last-child:after, .mw-parser-output .hlist li li:last-child:after {

`   content: ") ";`
`   font-weight: normal;`

} /\* Put ordinals in front of ordered list items \*/ .mw-parser-output .hlist ol {

`   counter-reset: list-item;`

} .mw-parser-output .hlist ol \> li {

`   counter-increment: list-item;`

} .mw-parser-output .hlist ol \> li:before {

`   content: " " counter(list-item) " ";`

} .mw-parser-output .hlist dd ol \> li:first-child:before, .mw-parser-output .hlist dt ol \> li:first-child:before, .mw-parser-output .hlist li ol \> li:first-child:before {

`   content: " (" counter(list-item) " ";`

}

/\* Unbulleted lists e.g. Barack Obama page \*/ .plainlist ul {

`   list-style: none;`

}

/\* Hatnotes and disambiguation notices Please review the default hatnote styles provided by MobileFrontend before adding here.

  - /

.hatnote i {

`   font-style: normal;`

} .hatnote img {

`   display: none;`

}

/\* Geographical coordinates defaults. See [Template:Coord/link](https://zh.wikipedia.org/wiki/Template:Coord/link "wikilink")

`  for how these are used. The classes "geo", "longitude", and`
`  "latitude" are used by the `[`Geo``   ``microformat`](https://zh.wikipedia.org/wiki/Geo_microformat "wikilink")`. */`

.geo-default, .geo-dms, .geo-dec { display: inline; } .longitude, .latitude { white-space: nowrap; }

/\* Prevent line breaks in silly places:

`  1) Where desired`
`  2) Links when we don't want them to`
`  3) Bold "links" to the page itself`
`  4) Ref tags with group names `<ref group="Note">` --> "[Note 1]"`

Please document here what pages use this

  - /

.nowrap, .nowraplinks a, .nowraplinks .selflink, sup.reference a {

`   white-space: nowrap;`

} /\* But allow wrapping where desired: \*/ .wrap, .wraplinks a {

`   white-space: normal;`

}

.client-js .content_block.coordinates {

`   display: none;`
`   text-align: right;`
`   margin-bottom: 0.5em;`
`   font-size: smaller;`

}

.client-js .content_block.coordinates .latitude {

`   display:none;`
`   padding-left: 20px;`
`   background-image: url(//upload.wikimedia.org/wikipedia/commons/thumb/5/57/Edge-firefox.png/50px-Edge-firefox.png);`
`   background-repeat: no-repeat;`
`   -webkit-background-size: auto 15px;`
`   background-size: auto 15px;`

}

/\* Until Geohack is mobile optimised and/or there is a nice alternative e.g. map namespace \*/ .alpha \#li-coordinates {

`   display: list-item;`

}

.client-js .beta .content_block.coordinates {

`   display: block;`

}

.client-js .beta .content_block.coordinates .latitude {

`   display:inline;`

}

/\* hidden sortkey for tablesorter \*/ td .sortkey, th .sortkey {

`   display: none;`
`   speak: none;`

}

/\* For the new main page design \*/

1.  mainpage .floatleft,
2.  mainpage .floatright,
3.  mp-2012-body .floatleft,
4.  mp-2012-body .floatright {

`   text-align: center;`

}

/\* HACK to workaround VE and badly written CGroups \*/ .noteTA {

`   display: none;`

}