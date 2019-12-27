This is a tracking category for list errors in [WP:SHIPS](https://zh.wikipedia.org/wiki/WP:SHIPS "wikilink") infoboxes. Lists in the various infobox templates use the common unordered list (\*) markup. The templates read the list markup and produce the correct HTML for unbulleted lists. This overcomes limitations that exist in the [Mediawiki:Common.css](../MediaWiki/Common.css.md "wikilink") `plainlist` class and the templates  and .

In the past, the [WP:SHIPS infobox usage guide](https://zh.wikipedia.org/wiki/Template:Infobox_ship_begin/Usage_guide "wikilink") required unbulleted lists for reasons of limited available space and for aesthetics. Editors used a variety of other methods to create lists in infoboxes. These included  line break HTML tags and the use of  and  templates. Problems with these methods are:

  - use of  makes visually 'correct' lists that are not correct for those who use screen readers. See [MOS:ACCESS §Vertical lists](https://zh.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Accessibility#Vertical_lists "wikilink").
  - limitations in Mediawiki:Common.css, prevent  and  from correctly rendering multi-level lists

The WP:SHIPS infobox templates can detect certain list formatting errors. When those errors are detected, the page is added to this category. In some cases, an error message is rendered in place of the list. The error conditions are:

<table>
<caption>error messages and their meanings</caption>
<thead>
<tr class="header">
<th><p>message</p></th>
<th><p>meaning    </p></th>
<th><p>comments</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span style="font-size:100%%" class="error">list error:<br />
list</span></p></td>
<td><p>The parameter value is plain text that includes  markup</p></td>
<td><p>When creating vertical lists, a common mistake that editors often make is to use line-break tags () instead of proper list markup. Vertical lists made with line-break tags should be replaced with proper unordered (<code>*</code>) or description (<code>;:</code>) lists. Line-break tags are also used for aesthetic purposes. This too is discouraged because tailoring an infobox parameter to suit your display device may not produce the same results on other readers' devices. Consider rewriting the parameter content as a single sentence or as a list of sentences. Consider using  or the HTML entity <code> </code> to control when a sentence wraps to the next line.</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%%" class="error">list error: mixed text and list</span></p></td>
<td><p>the parameter value is plain text followed by an unordered list</p></td>
<td><p>Plain text, commonly marked up as bold, italic, or both, is often used to mimic the 'term' portion of description lists (<code>;:</code> markup). When this is the case, the whole parameter value should be converted to one or more description lists. To override the bold styling normal to the 'term' portion of a description list, wrap the term in .</p></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%%" class="error">list error: too many * at start of list</span></p></td>
<td><p>improper first list-item markup: <code>** item text</code> instead of <code>* item text</code></p></td>
<td><p>In the ship infoboxen, the first item of an unordered list is expected to begin with a single <code>*</code> just as is expected outside of these infoboxen.</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%%" class="error">list error: list item missing markup</span></p></td>
<td><p>the parameter value has a line that does not begin with list-item markup (one or more <code>*</code>)</p></td>
<td><p>Ship infoboxen support only one list per parameter and do not support a mix of list and plain text. Each item of an unordered list is expected to have its own line and to begin with a <code>*</code>. This error message arises when a line in the parameter does not begin with <code>*</code> as the first non-white-space character. Remove blank lines and add unordered list markup (<code>*</code>) as appropriate or convert to description list (<code>;:</code>).</p></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%%" class="error">list error: empty list item</span></p></td>
<td><p>the parameter value begins with list-item markup (one or more <code>*</code>) but has no item text</p></td>
<td><p>The error message occurs when the list item is truly empty (only a <code>*</code>) and also when all of the list item content except the <code>*</code> is hidden inside HTML comment markup (<code>(</code>). Remove the line, remove the comment markup, or add list item content.</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%%" class="error">list error: mixed list type</span></p></td>
<td><p>an unordered list item begins with definition list item markup (<code>*;</code>or <code>*:</code>)</p></td>
<td><p>Ship infoboxen do not support a mix of list types. This error arises when the first non-white-space character following the <code>*</code> is <code>;</code> or <code>:</code>. Often used to indent a list item, <code>:</code> should be replaced with a <code>*</code> (so that the number of <code>*</code> at the beginning of the line is no more than one more than the preceding line). Alternately, convert the list to a description list.</p></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">list error: too many asterisks</span></p></td>
<td><p>indent by more than one step: <code>* item text</code> followed by <code>*** item text</code> for example</p></td>
<td><p>For proper rendering both inside and outside of ship infoboxen, the number of indents associated with unordered list may only increase by a step of one. Trim the number of <code>*</code> at the start of the offending list item.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

[Category:需要清理的信息框模板](https://zh.wikipedia.org/wiki/Category:需要清理的信息框模板 "wikilink") [Category:船舶专题](https://zh.wikipedia.org/wiki/Category:船舶专题 "wikilink")