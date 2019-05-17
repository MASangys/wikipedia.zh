连接
(SQL)操作是数据库管理中重要的一环，而嵌套循环连接是通过嵌套的循环语句把多个表连接起来的简单[算法](../Page/算法.md "wikilink")，但是效率并不理想。

## 算法内容

两个关系数据库表R和S通过如下的方法连接在一起：

`  For each tuple r in R do`
`     For each tuple s in S do`
`        If r and s satisfy the join condition`
`           Then output the tuple <r,s>`

这种算法将会从硬盘中读取 n<sub>r</sub>\*b<sub>s</sub>+ b<sub>r</sub> 个页，
b<sub>r</sub> 和 b<sub>s</sub> 是R和S表所占用的页的个数，
n<sub>r</sub> 是R表中的[记录数](../Page/记录.md "wikilink")。

这种算法的IO次数为 \(O(|R||S|)\)，\(|R|\)\(|S|\)

## 改进方法

这种算法可以通过更改循环的嵌套方式减少硬盘的访问次数到 b<sub>r</sub>\*b<sub>s</sub>+
b<sub>r</sub> 次。 对于R表的每一页，S的每一个记录只需要被读一次。

`  For each block block_r in R do`
`     For each tuple s in S do`
`        For each tuple r in block_r do`
`           If r and s satisfy the join condition`
`              Then output the tuple <r,s>`

<table>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:LampFlowchart.svg" title="fig:替代=Stub icon">替代=Stub icon</a></p></td>
<td><p><em>This <a href="../Page/计算机科学.md" title="wikilink">computer science</a> article is a <a href="https://zh.wikipedia.org/wiki/Wikipedia:小作品" title="wikilink">stub</a>. You can help Wikipedia by [//en.wikipedia.org/w/index.php?title=Nested_loop_join&amp;action=edit expanding it].</em></p>
<div class="plainlinks hlist navbar mini" id="77" style="position: absolute; right: 15px; display: none;">
<ul>
<li><a href="https://zh.wikipedia.org/wiki/Template:Compsci-stub" title="wikilink"><abbr title="View this template">v</abbr></a></li>
<li><abbr title="Discuss this template">t</abbr></li>
<li>[//en.wikipedia.org/w/index.php?title=Template:Comp-sci-stub&amp;action=edit <abbr title="Edit this template">e</abbr>]</li>
</ul>
</div></td>
</tr>
</tbody>
</table>

[Category:電腦科學小作品](https://zh.wikipedia.org/wiki/Category:電腦科學小作品 "wikilink")