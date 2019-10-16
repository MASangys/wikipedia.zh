本页面将演示如何使用\<mapframe/\></code>和\<maplink/\>标签显示地图。

## 开始使用

<mapframe text="旧金山市区" width="250" height="250" zoom="13" longitude="-122.3988" latitude="37.8013" lang="zh"/>

此段代码将在页面上插入一个简单的交互式地图（如右图所示），您可以通过双击地图或单击右角的图标来将这张地图放大。

``` xml
<mapframe text="旧金山市区" width="250" height="250" zoom="13" longitude="-122.3988" latitude="37.8013" lang="zh"/>
```

其中，*width*和*height*属性用于设置地图的宽度和长度，*zoom*属性用于设置地图的缩放比例。*longitude*和*latitude*属性分别为地图中心的[经度](../Page/经度.md "wikilink")和[纬度](../Page/纬度.md "wikilink")，*lang*属性为地图显示的语言。此外，您还可以使用*align*属性设置地图的控制地图的对齐方式是居左（left）、居右（right）或是居中（center）。



## \<mapframe/\>的用法

<mapframe text="旧金山博物馆" width="350" height="350" zoom="13" longitude="-122.39953994750977"

latitude="37.81032643553478"> {

` "type": "Feature",`
` "geometry": { "type": "Point", "coordinates": [-122.3988, 37.8013] },`
` "properties": {`
`   "title": "`[`旧金山现代艺术博物馆`](../Page/旧金山现代艺术博物馆.md "wikilink")`",`
`   "description": "`[`Giant_Mirror_at_the_Exploratorium.jpeg`](https://zh.wikipedia.org/wiki/File:Giant_Mirror_at_the_Exploratorium.jpeg "fig:Giant_Mirror_at_the_Exploratorium.jpeg")`",`
`   "marker-symbol": "museum",`
`   "marker-size": "large",`
`   "marker-color": "0050d0"`
` }`

} </mapframe>

\<mapframe\>\<mapframe/\>中的内容必须为空或者为一个有效的GejJSON数据格式，GejJsion数据可以由

[GejJSON在线编辑器](http://geojson.io/#map=15/37.7977/-122.4057)生成。

``` xml
<mapframe text="旧金山博物馆" width="350" height="350" zoom="13" longitude="-122.39953994750977"

latitude="37.81032643553478">
{
  "type": "Feature",
  "geometry": { "type": "Point", "coordinates": [-122.3988, 37.8013] },
  "properties": {
    "title": "[[旧金山现代艺术博物馆|旧金山现代艺术博物馆]]",
    "description": "[[File:Giant_Mirror_at_the_Exploratorium.jpeg|200px]]",
    "marker-symbol": "museum",
    "marker-size": "large",
    "marker-color": "0050d0"
  }
}
</mapframe>
```

### 框架

无框架地图适合作为[模板的一部分插入](https://zh.wikipedia.org/wiki/wp:模板 "wikilink")，而有框架地图适合于直接插入到页面中，无论是手动插入还是使用可视化编辑器。

  - 若要插入没有框架的地图，请添加“frameless”属性: \<mapframe frameless ...\>
  - 若要添加标题，请使用text ="…"属性。

**注意**:添加text属性将强制显示框架，即使您设置了frameless属性。

## \<maplink\>

将\<mapframe\>改为\<maplink\>会生成一个打开全屏地图的链接<maplink zoom="13" longitude="-122.3995" latitude="37.8103" />

``` xml
<maplink zoom="13" longitude="-122.3995" latitude="37.8103" />
```

\<maplink\>可以通过设置"text"属性来自定义链接的文本。 <maplink text="请点击这里" zoom="13" longitude="-122.3995" latitude="37.8103" />

``` xml
<maplink text="请点击这里" zoom="13" longitude="-122.3995" latitude="37.8103" />
```

\<maplink\>标签可包含与\<mapframe\>标签同样的GejJSON数据。

### \<maplink\> 的自动计数功能

<mapframe text="Several groups of automatic counters" width="350" height="350" zoom="13" longitude="-122.39902496337889"

latitude="37.80151060070086"> {

` "type": "FeatureCollection",`
` "features": [`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number",`
`       "marker-color": "302060"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.41816520690917,`
`         37.79097260220947`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number",`
`       "marker-color": "302060"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.40786552429199,`
`         37.799654055191525`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number",`
`       "marker-color": "302060"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.40185737609865,`
`         37.796262984039544`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number",`
`       "marker-color": "302060"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.38743782043457,`
`         37.80535070427755`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number",`
`       "marker-color": "302060"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.38005638122557,`
`         37.795449103799726`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-letter",`
`       "marker-color": "208020"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.40941047668457,`
`         37.81850557172186`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-letter",`
`       "marker-color": "208020"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.40357398986815,`
`         37.81280993744834`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-letter",`
`       "marker-color": "208020"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.39842414855956,`
`         37.8071138637568`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number-bar",`
`       "marker-color": "f01080"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.41181373596191,`
`         37.78595317184089`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number-bar",`
`       "marker-color": "f01080"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.39542007446289,`
`         37.787674400057654`
`       ]`
`     }`
`   },`
`   {`
`     "type": "Feature",`
`     "properties": {`
`       "marker-symbol": "-number-bar",`
`       "marker-color": "f01080"`
`     },`
`     "geometry": {`
`       "type": "Point",`
`       "coordinates": [`
`         -122.38649368286131,`
`         37.78401144262929`
`       ]`
`     }`
`   }`
` ]`

} </mapframe>

\<maplink\> 会创建一个链接，当单击时显示全屏幕地图。链接文本可以用text属性设置。如果没有设置属性，链接文本为相应坐标 (如: <maplink zoom=5 latitude=12.3 longitude=45.6/>)。如果使用了GeoJSON, 可设置*marker-symbol*键的值为“-number”或“-letter”。设置为“-number”的标地会以1,2,3,4...递增， and \<tvar|minusletter2\>\<code 设置为“-letter”的标地会以[字母表a](../Page/拉丁字母.md "wikilink"),b,c,d...z的顺序显示。

``` xml
<mapframe text="Several groups of automatic counters" width="350" height="350" zoom="13" longitude="-122.39902496337889"

latitude="37.80151060070086">
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number",
        "marker-color": "302060"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.41816520690917,
          37.79097260220947
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number",
        "marker-color": "302060"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.40786552429199,
          37.799654055191525
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number",
        "marker-color": "302060"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.40185737609865,
          37.796262984039544
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number",
        "marker-color": "302060"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.38743782043457,
          37.80535070427755
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number",
        "marker-color": "302060"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.38005638122557,
          37.795449103799726
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-letter",
        "marker-color": "208020"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.40941047668457,
          37.81850557172186
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-letter",
        "marker-color": "208020"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.40357398986815,
          37.81280993744834
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-letter",
        "marker-color": "208020"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.39842414855956,
          37.8071138637568
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number-bar",
        "marker-color": "f01080"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.41181373596191,
          37.78595317184089
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number-bar",
        "marker-color": "f01080"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.39542007446289,
          37.787674400057654
        ]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "marker-symbol": "-number-bar",
        "marker-color": "f01080"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [
          -122.38649368286131,
          37.78401144262929
        ]
      }
    }
  ]
}
</mapframe>
```

If GeoJSON has more than one counter, the value of the first one will be shown as the link text. Optionally, editors may

add a suffix to have multiple counters on the page at the same time. This way \<tvar|numbermuseum\>`‑number‑museum`\</\> will have different counter from \<tvar|numberbar\>`‑number‑bar`\</\>.

It would make sense to use a distinct color for each counting group. All data added via \<tvar|maplink\>`<maplink>`\</\> will also be shown in all maps inserted with \<tvar|mapframe\>`<mapframe>`\</\>, unless the \<tvar|group\>`group`\</\> attribute is used. </translate>

``` xml
{{see
| name=Exploratorium | url=http://www.exploratorium.edu/
| lat=37.8013 | long=-122.3988
| content=A great museum
}}
```

<translate> could be expanded into </translate>

``` xml
<maplink zoom=9 latitude=37.8013 longitude=-122.3988>
{
  "type": "Feature",
  "geometry": { "type": "Point", "coordinates": [-122.3988, 37.8013] },
  "properties": {
    "title": "Exploratorium",
    "marker-color": "228b22",
    "marker-symbol": "-number-see"
  }
}
</maplink>
```

<translate> The attributes \<tvar|zoom\>`zoom`\</\>, \<tvar|latitude\>`latitude`\</\>, and \<tvar|

longitude\>`longitude`\</\> control the location of the popup map. Use \<tvar|text\>`text`\</\> for the text of the link (could be any valid wikitext markup). Use \<tvar|group\>`group`\</\> to add the contents of this tag to the named group (see below).

## Groups

</translate>

<translate> For use on the Wikivoyage project, there is a need to show a map whose data is defined somewhere else on the page. For

example, there may be multiple points of interest (POI) defined with \<tvar|maplink\>`<maplink>`\</\> tags, and one common map on the side of the page that shows them all.

The grouping concept allows editors to share data between multiple \<tvar|mapframe\>`<mapframe>`\</\> and \<tvar|maplink\>`<maplink>`\</\>

tags.

By default, the data inside the \<tvar|mapframe\>`<mapframe>`\</\> or \<tvar|maplink\>`<maplink>`\</\> tag is shown only for that one tag, and will not be shown anywhere else.

If \<tvar|mapframe\>`<mapframe>`\</\> or \<tvar|maplink\>`<maplink>`\</\> specify the \<tvar|group\>`group="..."`\</\> attribute, the

data inside those tags will be placed into a named group, together with all the other data by the same group name. As a

result, any tags with the same group name will show the same map data, and each tag may incrementally add data to the

group.

A tag may also show other groups, regardless if it belongs to a group or not, by specifying the \<tvar|show\>`show="..."`\</\> attribute. Comma-separated multiple group names may be specified. The group name may only

contain lower case English letters. This matrix shows what data will be shown for each tag. </translate>

``` xml numberLines
<maplink>                               -- shows 1
<maplink group='food'>                  -- shows   2   4       8   10
<maplink group='bar'  show='bar'>       -- shows     3           9
<maplink group='food' show='bar'>       -- shows   2 3 4       8 9 10
<maplink              show='bar'>       -- shows     3   5       9
<maplink              show='food,bar'>  -- shows   2 3 4   6   8 9 10
<mapframe>                              -- shows             7
<mapframe group='food'>                 -- shows   2   4       8   10
<mapframe group='bar'  show='bar'>      -- shows     3           9
<mapframe group='food' show='bar'>      -- shows   2 3 4       8 9 10
<mapframe              show='bar'>      -- shows     3           9    11
<mapframe              show='food,bar'> -- shows   2 3 4       8 9 10    12
```

## <translate> External data</translate>

<mapframe text="Alaska" width=300 height=300 zoom=3 longitude=-152.58 latitude=64.01> {

` "type": "ExternalData",`
` "service": "geoshape",`
` "ids": "Q797"`

} </mapframe> <translate> In addition to drawing polygons using GeoJSON, you may also get outlines of the well known geographical objects by their

Wikidata ID if they are marked as such in the OpenStreetMap database. For example, Wikidata item for Alaska is

[Q797](https://zh.wikipedia.org/wiki/wikidata:Q797 "wikilink"), and we can draw it on the map by using "external data" reference. More than one ID may be specified

separated by a comma.</translate>

<translate> **Note:** Wikidata IDs are relatively new to the OSM community. There are only about 40,000 polygons with IDs. To add

more, visit <https://www.openstreetmap.org/> and add `Wikidata` tag with the `Q` value. The data should

become available to Kartographer within 2 days.</translate>

``` xml
<mapframe text="Alaska" width=300 height=300 zoom=3 longitude=-152.58 latitude=64.01>
{
  "type": "ExternalData",
  "service": "geoshape",
  "ids": "Q797"
}
</mapframe>
```



### GeoShape by Wikidata ID with properties

<mapframe text="Interstate Highway I-696" width=300 height=300> {

` "type": "ExternalData",`
` "service": "geoline",`
` "ids": "Q2108",`
` "properties": {`
`   "title": "Highway I-696",`
`   "description": "`[`I696-1988.JPG`](https://zh.wikipedia.org/wiki/File:I696-1988.JPG "fig:I696-1988.JPG")`",`
`   "stroke": "#ffb100",`
`   "stroke-width": 8`
` }`

} </mapframe> For external data, you can also add styles and titles, using the **properties** keyword.

``` xml
<mapframe text="Interstate Highway I-696" width=300 height=300>
{
  "type": "ExternalData",
  "service": "geoline",
  "ids": "Q2108",
  "properties": {
    "title": "Highway I-696",
    "description": "[[File:I696-1988.JPG|200px]]",
    "stroke": "#ffb100",
    "stroke-width": 8
  }
}
</mapframe>
```

The main style keys are: "stroke" (color), "stroke-width", "stroke-opacity", "fill" (color), "fill-opacity".

### Combining multiple data types

<mapframe text="Caderousse city wall" width="300" height="300" zoom="15" longitude="4.75600" latitude="44.10200" > \[

` {`
`   "type": "ExternalData",`
`   "service": "geoshape",`
`   "ids": "Q13518258",`
`   "properties": {`
`     "stroke": "#ffb100",`
`     "stroke-width": 6,`
`   }`
` },`
` {`
`   "type": "Feature",`
`   "geometry": { "type": "Point", "coordinates": [4.75566, 44.104498] },`
`   "properties": {`
`     "title": "Porte de Castellan"`
`   }`
` },`
` {`
`   "type": "Feature",`
`   "geometry": { "type": "Point", "coordinates": [4.75829, 44.10258] },`
`   "properties": {`
`     "title": "Porte Léon Roche"`
`   }`
` }`

\] </mapframe> You can also combine ExternalData, Feature, and FeatureCollection together in the same <mapframe> or <maplink>

element

``` xml
<mapframe text="Caderousse city wall" width="300" height="300" zoom="15" longitude="4.75600" latitude="44.10200">
[
  {
    "type": "ExternalData",
    "service": "geoshape",
    "ids": "Q13518258",
    "properties": {
      "stroke": "#ffb100",
      "stroke-width": 6,
    }
  },
  {
    "type": "Feature",
    "geometry": { "type": "Point", "coordinates": [4.75566, 44.104498] },
    "properties": {
      "title": "Porte de Castellan"
    }
  },
  {
    "type": "Feature",
    "geometry": { "type": "Point", "coordinates": [4.75829, 44.10258] },
    "properties": {
      "title": "Porte Léon Roche"
    }
  }
]
</mapframe>
```



### GeoShapes via Wikidata Query

<mapframe latitude="52" longitude="-110" zoom="3" width="500" height="500" text="Governors of US states with their party

affiliation"> {

` "type": "ExternalData",`
` "service": "geoshape",`
` "query": "`

SELECT ?id ?head

` (SAMPLE(?img) as ?img) `
` (min(?partyId) as ?party) `
` (if(?party = '0', '#800000', if(?party = '1', '#000080', '#008000')) as ?fill)`
` (concat('`[`wikipedia:',``   ``substr(str(?link),31,500),``   ``'{{!}}',``   ``?headLabel,``   ``'`](https://zh.wikipedia.org/wiki/wikipedia:',_substr\(str\(?link\),31,500\),_'{{!}}',_?headLabel,_' "wikilink")`') as ?title)`
` (concat(?stateLabel, '\\n', '`[`File:',``   ``substr(str(?img),``   ``52,``   ``500),``   ``'{{!}}200px`](https://zh.wikipedia.org/wiki/File:',_substr\(str\(?img\),_52,_500\),_'{{!}}200px "fig:File:', substr(str(?img), 52, 500), '{{!}}200px")`') as ?description)`

WHERE {

` ?id wdt:P31 wd:Q35657 .`
` ?id wdt:P6 ?head .`
` ?head wdt:P102 ?party .`
` BIND(if(?party = wd:Q29468, '0', if(?party = wd:Q29552, '1', '2')) as ?partyId) `
` SERVICE wikibase:label {`
`   bd:serviceParam wikibase:language 'en' .`
`   ?head rdfs:label ?headLabel .`
`   ?id rdfs:label ?stateLabel .`
` }`
` OPTIONAL {`
`   ?head wdt:P18 ?img .`
` }`
` ?link schema:about ?head .`
` ?link schema:isPartOf <`<https://en.wikipedia.org/>`> .`

} GROUP BY ?id ?head ?headLabel ?link ?stateLabel "} </mapframe> <translate> While this helps with the simple use cases when the Wikidata ID is well known, sometimes you may want to get a list of IDs

as a result of a Wikidata query. A SPARQL query gets a list of all US states in the ID column of the result, and geoshapes

service adds the geometrical outlines for each state. All other columns in the SPARQL query result become values in the

"properties" object. The "fill" column changes the color of the state. The "title" column shows state governor's name, and

"description" has wiki markup to show the state name and the governor's picture. To edit this query, copy the query

parameter after the "\#" symbol at **https://query.wikidata.org/\#...**:</translate>

``` xml
<mapframe latitude="52" longitude="-110" zoom="3" width="500" height="500" text="Governors of US states with their party

affiliation">
{
  "type": "ExternalData",
  "service": "geoshape",
  "query": "
SELECT ?id ?head
  (SAMPLE(?img) as ?img)
  (min(?partyId) as ?party)
  (if(?party = '0', '#800000', if(?party = '1', '#000080', '#008000')) as ?fill)
  (concat('[[wikipedia:',_substr(str(?link),31,500),__'{{!}}',_?headLabel,_'|wikipedia:', substr(str(?link),31,500),  '{{!}}', ?headLabel, ']]') as ?title)
  (concat(?stateLabel, '\\n', '[[File:',_substr(str(?img),_52,_500),_'{{!}}200px|File:', substr(str(?img), 52, 500), '{{!}}200px]]') as ?description)
WHERE {
  ?id wdt:P31 wd:Q35657 .
  ?id wdt:P6 ?head .
  ?head wdt:P102 ?party .
  BIND(if(?party = wd:Q29468, '0', if(?party = wd:Q29552, '1', '2')) as ?partyId)
  SERVICE wikibase:label {
    bd:serviceParam wikibase:language 'en' .
    ?head rdfs:label ?headLabel .
    ?id rdfs:label ?stateLabel .
  }
  OPTIONAL {
    ?head wdt:P18 ?img .
  }
  ?link schema:about ?head .
  ?link schema:isPartOf <https://en.wikipedia.org/> .
} GROUP BY ?id ?head ?headLabel ?link ?stateLabel
"}
</mapframe>
```

</div>