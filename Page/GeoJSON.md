**GeoJSON**是一种基于[JSON的](../Page/JSON.md "wikilink")[开源标准格式](../Page/开源标准.md "wikilink")，用来表示地理信息。

功能有点（表示地理位置）、（表示街道、公路、边界）、[多边形](../Page/多边形.md "wikilink")（表示国家、省、领土），以及由以上类型组合成的复合几何图形。

基于GeoJSON作了扩展，使得文件更小。

## 示例

### 几何图形

<table>
<caption>基本几何图形</caption>
<thead>
<tr class="header">
<th><p>类型</p></th>
<th><p>例子</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/点.md" title="wikilink">点</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_Point.svg" title="fig:File:SFA Point.svg"><a href="File:SFA">File:SFA</a> Point.svg</a></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/线段.md" title="wikilink">线段</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_LineString.svg" title="fig:File:SFA LineString.svg"><a href="File:SFA">File:SFA</a> LineString.svg</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/多边形.md" title="wikilink">多边形</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_Polygon.svg" title="fig:File:SFA Polygon.svg"><a href="File:SFA">File:SFA</a> Polygon.svg</a></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_Polygon_with_hole.svg" title="fig:File:SFA Polygon with hole.svg"><a href="File:SFA">File:SFA</a> Polygon with hole.svg</a></p></td>
<td><div class="sourceCode" id="cb1"><pre class="sourceCode JavaScript"><code class="sourceCode javascript"><a class="sourceLine" id="cb1-1" title="1"><span class="op">{</span></a>
<a class="sourceLine" id="cb1-2" title="2">    <span class="st">&quot;type&quot;</span><span class="op">:</span> <span class="st">&quot;Polygon&quot;</span><span class="op">,</span> </a>
<a class="sourceLine" id="cb1-3" title="3">    <span class="st">&quot;coordinates&quot;</span><span class="op">:</span> [</a>
<a class="sourceLine" id="cb1-4" title="4">        [[<span class="dv">35</span><span class="op">,</span>_10]<span class="op">,</span>_[<span class="dv">45</span><span class="op">,</span>_45]<span class="op">,</span>_[<span class="dv">15</span><span class="op">,</span>_40]<span class="op">,</span>_[<span class="dv">10</span><span class="op">,</span>_20]<span class="op">,</span>_[<span class="dv">35</span><span class="op">,</span>_10<span class="op">|</span><span class="dv">35</span><span class="op">,</span> <span class="dv">10</span>]<span class="op">,</span> [<span class="dv">45</span><span class="op">,</span> <span class="dv">45</span>]<span class="op">,</span> [<span class="dv">15</span><span class="op">,</span> <span class="dv">40</span>]<span class="op">,</span> [<span class="dv">10</span><span class="op">,</span> <span class="dv">20</span>]<span class="op">,</span> [<span class="dv">35</span><span class="op">,</span> <span class="dv">10</span>]]<span class="op">,</span> </a>
<a class="sourceLine" id="cb1-5" title="5">        [[<span class="dv">20</span><span class="op">,</span>_30]<span class="op">,</span>_[<span class="dv">35</span><span class="op">,</span>_35]<span class="op">,</span>_[<span class="dv">30</span><span class="op">,</span>_20]<span class="op">,</span>_[<span class="dv">20</span><span class="op">,</span>_30<span class="op">|</span><span class="dv">20</span><span class="op">,</span> <span class="dv">30</span>]<span class="op">,</span> [<span class="dv">35</span><span class="op">,</span> <span class="dv">35</span>]<span class="op">,</span> [<span class="dv">30</span><span class="op">,</span> <span class="dv">20</span>]<span class="op">,</span> [<span class="dv">20</span><span class="op">,</span> <span class="dv">30</span>]]</a>
<a class="sourceLine" id="cb1-6" title="6">    ]</a>
<a class="sourceLine" id="cb1-7" title="7"><span class="op">}</span></a></code></pre></div></td>
</tr>
</tbody>
</table>

<table>
<caption>复合几何图形</caption>
<thead>
<tr class="header">
<th><p>类型</p></th>
<th><p>例子</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/点.md" title="wikilink">点</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_MultiPoint.svg" title="fig:File:SFA MultiPoint.svg"><a href="File:SFA">File:SFA</a> MultiPoint.svg</a></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/线段.md" title="wikilink">线段</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_MultiLineString.svg" title="fig:File:SFA MultiLineString.svg"><a href="File:SFA">File:SFA</a> MultiLineString.svg</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/多边形.md" title="wikilink">多边形</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_MultiPolygon.svg" title="fig:File:SFA MultiPolygon.svg"><a href="File:SFA">File:SFA</a> MultiPolygon.svg</a></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:SFA_MultiPolygon_with_hole.svg" title="fig:File:SFA MultiPolygon with hole.svg"><a href="File:SFA">File:SFA</a> MultiPolygon with hole.svg</a></p></td>
<td><div class="sourceCode" id="cb1"><pre class="sourceCode JavaScript"><code class="sourceCode javascript"><a class="sourceLine" id="cb1-1" title="1"><span class="op">{</span></a>
<a class="sourceLine" id="cb1-2" title="2">    <span class="st">&quot;type&quot;</span><span class="op">:</span> <span class="st">&quot;MultiPolygon&quot;</span><span class="op">,</span> </a>
<a class="sourceLine" id="cb1-3" title="3">    <span class="st">&quot;coordinates&quot;</span><span class="op">:</span> [</a>
<a class="sourceLine" id="cb1-4" title="4">        [</a>
<a class="sourceLine" id="cb1-5" title="5">            [[<span class="dv">40</span><span class="op">,</span>_40]<span class="op">,</span>_[<span class="dv">20</span><span class="op">,</span>_45]<span class="op">,</span>_[<span class="dv">45</span><span class="op">,</span>_30]<span class="op">,</span>_[<span class="dv">40</span><span class="op">,</span>_40<span class="op">|</span><span class="dv">40</span><span class="op">,</span> <span class="dv">40</span>]<span class="op">,</span> [<span class="dv">20</span><span class="op">,</span> <span class="dv">45</span>]<span class="op">,</span> [<span class="dv">45</span><span class="op">,</span> <span class="dv">30</span>]<span class="op">,</span> [<span class="dv">40</span><span class="op">,</span> <span class="dv">40</span>]]</a>
<a class="sourceLine" id="cb1-6" title="6">        ]<span class="op">,</span> </a>
<a class="sourceLine" id="cb1-7" title="7">        [</a>
<a class="sourceLine" id="cb1-8" title="8">            [[<span class="dv">20</span><span class="op">,</span>_35]<span class="op">,</span>_[<span class="dv">10</span><span class="op">,</span>_30]<span class="op">,</span>_[<span class="dv">10</span><span class="op">,</span>_10]<span class="op">,</span>_[<span class="dv">30</span><span class="op">,</span>_5]<span class="op">,</span>_[<span class="dv">45</span><span class="op">,</span>_20]<span class="op">,</span>_[<span class="dv">20</span><span class="op">,</span>_35<span class="op">|</span><span class="dv">20</span><span class="op">,</span> <span class="dv">35</span>]<span class="op">,</span> [<span class="dv">10</span><span class="op">,</span> <span class="dv">30</span>]<span class="op">,</span> [<span class="dv">10</span><span class="op">,</span> <span class="dv">10</span>]<span class="op">,</span> [<span class="dv">30</span><span class="op">,</span> <span class="dv">5</span>]<span class="op">,</span> [<span class="dv">45</span><span class="op">,</span> <span class="dv">20</span>]<span class="op">,</span> [<span class="dv">20</span><span class="op">,</span> <span class="dv">35</span>]]<span class="op">,</span> </a>
<a class="sourceLine" id="cb1-9" title="9">            [[<span class="dv">30</span><span class="op">,</span>_20]<span class="op">,</span>_[<span class="dv">20</span><span class="op">,</span>_15]<span class="op">,</span>_[<span class="dv">20</span><span class="op">,</span>_25]<span class="op">,</span>_[<span class="dv">30</span><span class="op">,</span>_20<span class="op">|</span><span class="dv">30</span><span class="op">,</span> <span class="dv">20</span>]<span class="op">,</span> [<span class="dv">20</span><span class="op">,</span> <span class="dv">15</span>]<span class="op">,</span> [<span class="dv">20</span><span class="op">,</span> <span class="dv">25</span>]<span class="op">,</span> [<span class="dv">30</span><span class="op">,</span> <span class="dv">20</span>]]</a>
<a class="sourceLine" id="cb1-10" title="10">        ]</a>
<a class="sourceLine" id="cb1-11" title="11">    ]</a>
<a class="sourceLine" id="cb1-12" title="12"><span class="op">}</span></a></code></pre></div></td>
</tr>
</tbody>
</table>

## 参考

<references/>

[Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")