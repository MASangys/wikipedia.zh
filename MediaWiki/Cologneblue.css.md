/\* This [CSS](https://zh.wikipedia.org/wiki/Cascading_Style_Sheets "wikilink") is called in addition to [MediaWiki:Common.css](https://zh.wikipedia.org/wiki/MediaWiki:Common.css "wikilink"). See [Catalogue of CSS classes](https://zh.wikipedia.org/wiki/Wikipedia:Catalogue_of_CSS_classes "wikilink") for full list.

/\* The versions for Monobook are at [MediaWiki:Monobook.css](https://zh.wikipedia.org/wiki/MediaWiki:Monobook.css "wikilink") and [MediaWiki:Monobook.js](https://zh.wikipedia.org/wiki/MediaWiki:Monobook.js "wikilink")

/\*

    <nowiki>*/

    #pabanner { text-align:left !important; }

    /* Standard Navigationsleisten, aka box hiding thingy from .de.*/

    div.Boxmerge,
    div.NavFrame {
            margin: 0px;
            padding: 2px;
            border: 1px solid #aaa;
            text-align: center;
            border-collapse: collapse;
            font-size: 95%;
    }
    div.Boxmerge div.NavFrame {
            border-style: none;
            border-style: hidden;
    }
    div.NavFrame + div.NavFrame {
            border-top-style: none;
            border-top-style: hidden;
    }
    div.NavPic {
            background-color: #fff;
            margin: 0px;
            padding: 2px;
            float: left;
    }
    div.NavFrame div.NavHead {
            height: 1.6em;
            font-weight: bold;
            font-size: 100%;
            background-color: #efefef;
            position:relative;
    }
    div.NavFrame p {
            font-size: 100%;
    }
    div.NavFrame div.NavContent {
            font-size: 100%;
    }
    div.NavFrame div.NavContent p {
            font-size: 100%;
    }
    div.NavEnd {
            margin: 0px;
            padding: 0px;
            line-height: 1px;
            clear: both;
    }
    a.NavToggle {
            position:absolute;
            top:0px;
            right:3px;
            font-weight:normal;
            font-size:smaller;
    }



    #coordinates {
        position:absolute;
        z-index:1;
        border:none;
        background:none;
        left:9px;
        top:5.7em;
        float:left;
        margin:0.0em;
        padding:0.0em;
        line-height:1.5em;
        text-align:left;
        text-indent:0;
        font-size:85%;
        text-transform:none;
        white-space:nowrap;
    }

    /* For patrolled newpages */
    li.not-patrolled {
     background-color: #ffffaa;
     }

    /*</nowiki>

\*/