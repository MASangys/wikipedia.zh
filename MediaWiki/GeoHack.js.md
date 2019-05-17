/\*\*

`* The file is used by GeoHack on Tool Labs (linked from `[`Template:GeoTemplate`](https://zh.wikipedia.org/wiki/Template:GeoTemplate "wikilink")`).`
`*`
`* This file is not loaded within a wiki context. Standard libraries (jQuery, mediawiki.js etc) are not available.`
`*/`

/\*\*

`* Copy of standard library function`
`*/`

function appendCSS(text) {

`   var s = document.createElement('style');`
`   s.type = 'text/css';`
`   s.rel = 'stylesheet';`
`   if (s.styleSheet) s.styleSheet.cssText = text //IE`
`   else s.appendChild(document.createTextNode(text + '')) //Safari sometimes borks on null`
`   document.getElementsByTagName('head')[0].appendChild(s);`

}

window.onload = function() {

`   /* Add row hover effect */`
`   appendCSS(".directory tr:hover {background:#fdc !important;}");`

}

var head = document.getElementsByTagName('head')\[0\]; var style =
document.createElement('link'); style.rel = 'stylesheet'; style.type =
'text/css'; style.href = '//maps.wikimedia.org/leaflet/leaflet.css';
head.appendChild(style);

var script = document.createElement('script'); script.type =
'text/javascript'; script.src =
'//maps.wikimedia.org/leaflet/leaflet.js'; head.appendChild(script);

var OSM_class_R =
/\\bOSM:(\[\\d.+-\]+)_(\[\\d.+-\]+)_(\[\\d.+-\]+)_(\\w+)/; function
embedOpenStreetMap() {

`   clearInterval(osmtimer);`
`   var osmTarget = document.getElementById('osmEmbed');`
`   if (osmTarget && OSM_class_R.exec(osmTarget.className)) {`
`       var lat = 1.0 * RegExp.$1,`
`           lon = 1.0 * RegExp.$2,`
`           zoom = RegExp.$3;`
`           `
`       var map = L.map('osmEmbed').setView([lat, lon], zoom);`
`       map.attributionControl.setPrefix( '' );`
`       L.tileLayer('//maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png', {`
`           attribution: '维基媒体地图测试版 | 地图数据 © `<a href="https://www.openstreetmap.org/copyright">`OpenStreetMap贡献者`</a>`'`
`       }).addTo(map);`
`       `
`       L.marker([lat, lon]).addTo(map);`
`   }`

}

osmtimer = setInterval("if (document.getElementById('osmEmbed') && L) {
embedOpenStreetMap(); }", 200); setTimeout('clearInterval(osmtimer)',
5000);