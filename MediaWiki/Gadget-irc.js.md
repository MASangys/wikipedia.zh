/\*

This is the script to add CGI:IRC login box to random pages (like
[WN:IRC](https://zh.wikipedia.org/wiki/WN:IRC "wikilink")). Please
report problems to [m:n:user
talk:Bawolff](https://zh.wikipedia.org/wiki/m:n:user_talk:Bawolff "wikilink")
(http://en.wikinews.org/wiki/user_talk:Bawolff ). modifications may
take some time to get through caching. For yourself you can do a hard
refresh of
\[/w/index.php?title=Mediawiki:Irc.js\&action=raw\&ctype=text/javascript\&dontcountme=s
this page\] to make mods go live. From
<http://en.wikinews.org/wiki/mediawiki:Irc.js> this is version 2.0. If
you have any complaints, comments requests, please contact me at
<http://en.wikinews.org/wiki/user_talk:Bawolff>

  -
    Just add `<div id="cgiircbox"/>` (some wikis may need `<div
    id="cgiircbox"></div>`) to a random page. You can style and add
    classes to thsi div if you want. in fact it doesn' even have to be a
    div, but a block level element is recommended (could be `<center
    id="cgiircbox"/>`)

Note: This is heavily based on the login page from CGI:IRC 0.5 (or more
specificly it is a reimplementation of the login page in javascript, to
get arround restrictions on which elements can be added to a mediawiki
page, plus a few extra features added along the way). CGI:IRC is made by
David Leadbeater and is under the GPL. See <http://cgiirc.sf.net> .
(therefor i geuss you could consider the entire combined thing under the
gpl. I'm not a 100% sure how the copyright issue for this works, in any
case I'm ok with any of my edits to the script being GPL)

``` javascript
*/


/*extern wgUserName wgUserGroups, new_input, new_element, new_label, setcharset*/
/*function add_irc() {
    var debug = false;
    var irc_div = document.getElementById("cgiircbox");
    if (irc_div) {
        var ircframe = document.createElement("iframe");
        var src_attr = document.createAttribute("src");
        var dim = new Array(document.createAttribute("width"), document.createAttribute("height"));
        src_attr.nodeValue = "//webchat.freenode.net/?channels=%23wikipedia-zh&uio=MT1mYWxzZQ9a&prompt=1";
        dim[0].nodeValue = "100%";
        dim[1].nodeValue = "500";
        ircframe.setAttributeNode(src_attr);
        ircframe.setAttributeNode(dim[0]);
        ircframe.setAttributeNode(dim[1]);
        irc_div.appendChild(ircframe);

    }
}*/
//because this is already from a load event
//add_irc();
//
```