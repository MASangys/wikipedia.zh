下表比较了[HTML5](../Page/HTML5.md "wikilink")[画布元素对绘图](../Page/Canvas_\(HTML元素\).md "wikilink")[API的支持及网页浏览器的原生支持程度](https://zh.wikipedia.org/wiki/API "wikilink")，无任何[插件](../Page/插件.md "wikilink")、附加组件或[ECMAScript](../Page/ECMAScript.md "wikilink")工作区。

## 画布功能

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Gecko_(layout_engine)" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>getContext</code></p></td>
<td><p>rowspan="2" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>toDataURL</code></p></td>
<td><p>[1]</p></td>
<td><p>[2]</p></td>
<td><p>[3]</p></td>
<td></td>
</tr>
</tbody>
</table>

## 支持的上下文

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Gecko_(layout_engine)" title="wikilink">Gecko</a></p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a></p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>2d</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/WebGL.md" title="wikilink">WebGL</a></p></td>
<td><p>[4]</p></td>
<td><p>[5]</p></td>
<td><p>[6]</p></td>
<td><p>2.9.220[7]</p></td>
</tr>
</tbody>
</table>

## 画布2D渲染上下文

<table>
<thead>
<tr class="header">
<th><p>|</p></th>
<th><p><a href="../Page/Trident_(排版引擎).md" title="wikilink">Trident</a>[8]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Gecko_(layout_engine)" title="wikilink">Gecko</a>[9]</p></th>
<th><p><a href="../Page/WebKit.md" title="wikilink">WebKit</a>[10]</p></th>
<th><p><a href="../Page/Presto.md" title="wikilink">Presto</a>[11][12]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>画布状态</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>save</code></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="odd">
<td><p><code>restore</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>转换</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>scale</code></p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="even">
<td><p><code>rotate</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>translate</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>transform</code></p></td>
<td><p>[13][14][15][16]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>setTransform</code></p></td>
<td><p>[17]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>合成</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>globalAlpha</code></p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
<td><p>rowspan="2" </p></td>
</tr>
<tr class="even">
<td><p><code>globalCompositeOperation</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>颜色与样式</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>strokeStyle</code></p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
<td><p>rowspan="5" </p></td>
</tr>
<tr class="odd">
<td><p><code>fillStyle</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>createLinearGradient</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>createRadialGradient</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>createPattern</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>线条样式</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>lineWidth</code></p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" </p></td>
</tr>
<tr class="odd">
<td><p><code>lineCap</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>lineJoin</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>miterLimit</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>阴影</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>shadowOffsetX</code></p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" [18]</p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="4" [19]</p></td>
</tr>
<tr class="even">
<td><p><code>shadowOffsetY</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>shadowBlur</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>shadowColor</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>简单形状</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>clearRect</code></p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
<td><p>rowspan="3" </p></td>
</tr>
<tr class="odd">
<td><p><code>fillRect</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>strokeRect</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>复杂形状</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>beginPath</code></p></td>
<td><p>rowspan="13" </p></td>
<td><p>rowspan="4" </p></td>
<td><p>rowspan="13" </p></td>
<td><p>rowspan="13" </p></td>
</tr>
<tr class="odd">
<td><p><code>closePath</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>moveTo</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>lineTo</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>quadraticCurveTo</code></p></td>
<td><p>[20]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>bezierCurveTo</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>arcTo</code></p></td>
<td><p>[21]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>rect</code></p></td>
<td><p>rowspan="6" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>arc</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>fill</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>stroke</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>clip</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>isPointInPath</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>集中管理</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>drawFocusRing</code></p></td>
<td></td>
<td><p>[22]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>文本</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>font</code></p></td>
<td><p>rowspan="6" </p></td>
<td><p>rowspan="6" {{#tag:ref|Gecko在1.9中以不同的名字加入了实验性支持。[23]|group=注}}</p></td>
<td><p>rowspan="6" </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>textAlign</code></p></td>
<td><p>rowspan="5" </p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>textBaseline</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>fillText</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>strokeText</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>measureText</code></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>图像</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>drawImage</code></p></td>
<td><p>rowspan="4" </p></td>
<td></td>
<td><p>rowspan="4" </p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>createImageData</code></p></td>
<td><p>[24][25]</p></td>
<td><p>[26]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>getImageData</code></p></td>
<td><p>[27]</p></td>
<td><p>rowspan="2" [28]</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>putImageData</code></p></td>
<td><p>[29][30]</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 注释

## 参考文献

### [Trident参考](https://zh.wikipedia.org/wiki/Trident "wikilink")

### [Gecko](../Page/Gecko.md "wikilink")参考

### [Webkit参考](https://zh.wikipedia.org/wiki/Webkit "wikilink")

### [Presto](../Page/Presto.md "wikilink")参考

### 其他参考

## 外部链接

  -
{{-}}

[Category:HTML5](https://zh.wikipedia.org/wiki/Category:HTML5 "wikilink") [Category:排版引擎比较](https://zh.wikipedia.org/wiki/Category:排版引擎比较 "wikilink")

1.  <https://developer.mozilla.org/en/HTML/Element/canvas>

2.

3.  Presto 2.0部分支持此属性。

4.

5.

6.

7.

8.

9.

10.

11.

12.

13. Opera 9.5（Presto 2.1）支持此功能，但Presto 2.1.1至2.5的支持表格表明该属性不被支持。

14.

15.

16.

17.
18.

19. Presto 2.4之前仅部分支持此属性。

20. 在Gecko 1.8中显示不正确。

21.

22.

23.

24.

25.

26.

27.
28.
29.

30.