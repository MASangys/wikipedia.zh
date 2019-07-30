这是**[wikEd](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEd "wikilink")**的使用說明页面。wikEd是运行于浏览器內的全功能文本编辑器，可强化维基百科和其他MediaWiki编辑页面的文字处理功能。

如果您会英文，请在[wikEd讨论页报告错误或请求功能](https://zh.wikipedia.org/wiki/:en:User_talk:Cacycle/wikEd "wikilink")。

[WikEd_screenshot.png](https://zh.wikipedia.org/wiki/File:WikEd_screenshot.png "fig:WikEd_screenshot.png")

## 快速上手

大多数按钮的功能均如一般所預期，和常見的文字处理軟體相似。然而，wikEd有时又比較特别，主要是因為本軟體使用了浏览器內建的[多文字(RTF)编辑接口](../Page/RTF.md "wikilink")。只要您采用支持的浏览器（本軟體與Internet Explorer不相容），并正确安装且启用本軟體，wikEd會在点击条目的\[编辑\]后会立刻载入。

### 格式化文本

和标准编辑窗口不同，在您粘贴文本时，链接还是链接、表格依舊是表格、奇怪的文本格式亦会保留。除非你转化格式（见下段），一切格式在保存页面时会忽略（只保留原始文本）。若您想在保存页面前去除格式，请点击“文本化”按钮<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd textify.png](https://zh.wikipedia.org/wiki/File:wikEd_textify.png "fig:Image:wikEd textify.png")</span>。

### 转换成维基代码

若您想保留链接、表格等格式，请点击“维基化”按钮<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd wikify.png](https://zh.wikipedia.org/wiki/File:wikEd_wikify.png "fig:Image:wikEd wikify.png")</span>。所有编辑按钮都会自动“维基化”文本。

### 更新语法高亮

因技术原因，语法高亮並無法自动更新。因此您加入文字后，其颜色与格式顯示未必正确。您只需按“文字化”<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd textify.png](https://zh.wikipedia.org/wiki/File:wikEd_textify.png "fig:Image:wikEd textify.png")</span>或“维基化”<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd wikify.png](https://zh.wikipedia.org/wiki/File:wikEd_wikify.png "fig:Image:wikEd wikify.png")</span>即可更新语法高亮。此方法也會更新内部或外部链接目标（按住ctrl点击，即可在新标签打开連結目标）。

大多数按钮（包含上述2種）使用時若没有選擇区域，就會作用在全文上，若有選擇则只作用在所選區域。

### 控制按钮

按钮栏最右侧的是<u>控制按鈕</u>。藉由这些按钮，您可以在标准编辑窗口和wikEd编辑窗口之间切换，关闭语法高亮，禁用标准工具栏，以及切换至全屏模式。这些按钮设置会储存于cookie，并对所有新页面和未来會話生效。

## 按钮说明

### WikEd主开关、版本信息与错误指示器

下文所列出的**wikEd**<u>状态指示标志</u>显示于页面的顶部，“退出”的后面。鼠标悬浮在标志上会看到当前的版本信息。**wikEd**会每20小时自动检查与更新。您也可查看[-{zh-cn:最近;zh-tw:最新}-版本](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEd_current_version "wikilink")，按住Shift並点击刷新頁面（或按Shift-Ctrl-R）手动更新（实质上即清除浏览器页面缓存后刷新）。

| 图标                                                                                                               | 状态   | 描述                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------- | ---- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Image:WikEd logo.png](https://zh.wikipedia.org/wiki/File:WikEd_logo.png "fig:Image:WikEd logo.png")             | 启用   | 点击此按钮可禁用**wikEd**，同时后续所有浏览器窗口和[会话也将禁用](../Page/会话_\(计算机科学\).md "wikilink")**wikEd**。再次点击标志即可重新启用**wikEd**。如果wiki数据库被锁-{}-定或页面受保护，**wikEd**将不会载入。点击此按钮將会清除撤消的历史紀錄。 |
| [Image:WikEd disabled.png](https://zh.wikipedia.org/wiki/File:WikEd_disabled.png "fig:Image:WikEd disabled.png") | 禁用   | 该图标于**wikEd**禁用时顯示。点击即可重新启用**wikEd**。                                                                                                                             |
| [Image:WikEd error.png](https://zh.wikipedia.org/wiki/File:WikEd_error.png "fig:Image:WikEd error.png")          | 载入错误 | 载入与安装**wikEd**时若发生错误，您将看到此图标。您可通过浏览器的“JavaScript控制台”工具检查错误信息，并回報至[wikEd讨论页](https://zh.wikipedia.org/wiki/User_talk:Cacycle/wikEd "wikilink")。                    |

### 摺疊按钮工具栏

编辑窗口上方的按钮工具栏都有折叠按鈕。该功能对600×800或1024×768等低分辨率屏幕很实用：

|                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Image:wikEdF\&RButt.png](https://zh.wikipedia.org/wiki/File:wikEdF&RButt.png "fig:Image:wikEdF&RButt.png") ↔ [Image:WikEd buttonbar collapsed.png](https://zh.wikipedia.org/wiki/File:WikEd_buttonbar_collapsed.png "fig:Image:WikEd buttonbar collapsed.png") ↔ [Image:WikEd buttonbar expanded.png](https://zh.wikipedia.org/wiki/File:WikEd_buttonbar_expanded.png "fig:Image:WikEd buttonbar expanded.png") 点击折叠柄隐藏工具栏。鼠标悬浮于折叠按紐上，即可暂时展开工具栏。点击可重新将它展开。 |

### 格式按钮

|                                                                                                                             |                                                                                                                                                              |
| --------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [WikEdFormButt.png](https://zh.wikipedia.org/wiki/File:WikEdFormButt.png "fig:WikEdFormButt.png")格式按钮，位于文字编辑区正上方， 按钮工具栏的最左边 | [WikEd_textify_buttonbar.png](https://zh.wikipedia.org/wiki/File:WikEd_textify_buttonbar.png "fig:WikEd_textify_buttonbar.png")文本化按钮，用来更新语法高亮， 以及导入与转换粘贴文本 |

<table>
<thead>
<tr class="header">
<th><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><strong><small>图标</small></strong></span></p></th>
<th><p>名称</p></th>
<th><p>说明</p></th>
<th><p>作用区域</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>上行</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_undo.png" title="fig:Image:wikEd undo.png">Image:wikEd undo.png</a></span></p></td>
<td><p>撤消</p></td>
<td><p>撤消文本变更。此按钮相当于撤消快捷键（Windows的Ctrl-Z）。</p></td>
<td><p>全文</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_redo.png" title="fig:Image:wikEd redo.png">Image:wikEd redo.png</a></span></p></td>
<td><p>恢复</p></td>
<td><p>恢复文本变更。此按钮相当于恢复快捷键（Windows的Ctrl-Y）。</p></td>
<td><p>全文</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_bold.png" title="fig:Image:wikEd bold.png">Image:wikEd bold.png</a></span></p></td>
<td><p>粗体</p></td>
<td><p>添加或除去<strong>粗体</strong>文字格式（<strong><font color="red">'''</font></strong>…<strong><font color="red">'''</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_italic.png" title="fig:Image:wikEd italic.png">Image:wikEd italic.png</a></span></p></td>
<td><p>斜体</p></td>
<td><p>添加或除去<em>斜体</em>文字格式（<strong><font color="red">''</font></strong>…<strong><font color="red">''</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_underline.png" title="fig:Image:wikEd underline.png">Image:wikEd underline.png</a></span></p></td>
<td><p>下划线</p></td>
<td><p>添加或除去<u>下划线</u>文字格式（<strong><font color="red">&lt;u&gt;</font></strong>…<strong><font color="red">&lt;/u&gt;</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_strikethrough.png" title="fig:Image:wikEd strikethrough.png">Image:wikEd strikethrough.png</a></span></p></td>
<td><p>删除线</p></td>
<td><p>添加或除去<s>删除线</s>文字格式（<strong><font color="red">&lt;s&gt;</font></strong>…<strong><font color="red">&lt;/s&gt;</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_nowiki.png" title="fig:Image:wikEd nowiki.png">Image:wikEd nowiki.png</a></span></p></td>
<td><p>Nowiki</p></td>
<td><p>添加或除去<a href="https://zh.wikipedia.org/wiki/Help:编辑页面#控制语法" title="wikilink">nowiki文字格式</a>（<strong><font color="red">&lt;nowiki&gt;</font></strong>…<strong><font color="red"></nowiki></font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_superscript.png" title="fig:Image:wikEd superscript.png">Image:wikEd superscript.png</a></span></p></td>
<td><p>上标</p></td>
<td><p>添加或除去<sup>上标</sup>文字格式（<strong><font color="red">&lt;sup&gt;</font></strong>…<strong><font color="red">&lt;/sup&gt;</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_subscript.png" title="fig:Image:wikEd subscript.png">Image:wikEd subscript.png</a></span></p></td>
<td><p>下标</p></td>
<td><p>添加或除去<sub>下标</sub>文字格式（<strong><font color="red">&lt;sub&gt;</font></strong>…<strong><font color="red">&lt;/sub&gt;</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_ref.png" title="fig:Image:wikEd ref.png">Image:wikEd ref.png</a></span></p></td>
<td><p>参考资料</p></td>
<td><p>添加或除去<a href="https://zh.wikipedia.org/wiki/Help:脚注" title="wikilink">参考资料</a>[1]文字格式（未选中文字：<strong><font color="red">&lt;ref&gt;&lt;/ref&gt;</font></strong>；选中文字 <strong><font color="red">&lt;ref&gt;</font></strong>…<strong><font color="red">&lt;/ref&gt;</font></strong>）。按住Shift點击以加入或除去同一项内文参考标签（未选中文字：<strong><font color="red">&lt;ref name=""/&gt;</font></strong>；选中文字：<strong><font color="red">&lt;ref name=""&gt;</font></strong>. . .<strong><font color="red">&lt;/ref&gt;</font></strong>）。</p></td>
<td><p>选区、光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_case.png" title="fig:Image:wikEd case.png">Image:wikEd case.png</a></span></p></td>
<td><p>更改大小写</p></td>
<td><p>在全小写(lowercase)、首字母大写(Title Case)和全大写(ALL UPPERCASE)间转换。</p></td>
<td><p>选区、光标处单词</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_undo_all.png" title="fig:Image:wikEd undo all.png">Image:wikEd undo all.png</a></span></p></td>
<td><p>全部撤销</p></td>
<td><p>撤消至初始版本。</p></td>
<td><p>全文</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_redo_all.png" title="fig:Image:wikEd redo all.png">Image:wikEd redo all.png</a></span></p></td>
<td><p>全部重做</p></td>
<td><p>恢复至最后版本。</p></td>
<td><p>全文</p></td>
</tr>
<tr class="odd">
<td><p>colspan = "2" style="border: none; background: none;" |</p></td>
<td><p>下行</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_wikilink.png" title="fig:Image:wikEd wikilink.png">Image:wikEd wikilink.png</a></span></p></td>
<td><p>内部链接</p></td>
<td><p>添加或除去<a href="https://zh.wikipedia.org/wiki/Help:链接" title="wikilink">内部链接</a>。（<strong><font color="red">[[</font>…&lt;font_color="red"&gt;|</font>…<font color="red">]]</font></strong>）</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_weblink.png" title="fig:Image:wikEd weblink.png">Image:wikEd weblink.png</a></span></p></td>
<td><p>外部链接</p></td>
<td><p>添加或除去<a href="http://www.google.com">外部链接</a>（<strong><font color="red">[</font>…<font color="red">]</font></strong>）。</p></td>
<td><p>选区、光标处单词、光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_heading.png" title="fig:Image:wikEd heading.png">Image:wikEd heading.png</a></span></p></td>
<td><p>标题</p></td>
<td><p>提升<a href="https://zh.wikipedia.org/wiki/Help:章节" title="wikilink">标题层级</a>（加入<strong><font color="red">=</font></strong>…<strong><font color="red">=</font></strong>）。選擇正文並點擊此按鈕，可將正文提升創建為標題；但選擇多行時，則無法創建標題。按住Shift点击以降低标题层级。</p></td>
<td><p>当前行或所选行（可多行）</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_bullet_list.png" title="fig:Image:wikEd bullet list.png">Image:wikEd bullet list.png</a></span></p></td>
<td><p>无序列表</p></td>
<td><p>将项目转化为无序<a href="https://zh.wikipedia.org/wiki/Help:列表" title="wikilink">列表</a>（于行首加入<font color="red"><strong>*</strong></font>）。按住Shift点击以降低列表层级（除去行首<font color="red"><strong>*</strong></font>）。</p></td>
<td><p>当前行或所选行（可多行）</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_number_list.png" title="fig:Image:wikEd number list.png">Image:wikEd number list.png</a></span></p></td>
<td><p>有序列表</p></td>
<td><p>将项目转化为有序列表（于行首加入<font color="red"><strong>#</strong></font>）。按住Shift点击以降低列表层级（除去行首<font color="red"><strong>#</strong></font>）。</p></td>
<td><p>当前行或所选行（可多行）</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_indent_list.png" title="fig:Image:wikEd indent list.png">Image:wikEd indent list.png</a></span></p></td>
<td><p>缩进列表</p></td>
<td><p>将项目转化为缩进列表（于行首加入<font color="red"><strong>:</strong></font>）。按住Shift点击以降低列表层级（除去行首<font color="red"><strong>:</strong></font>）。</p></td>
<td><p>当前行或所选行（可多行）</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_definition_list.png" title="fig:Image:wikEd definition list.png">Image:wikEd definition list.png</a></span></p></td>
<td><p>定义列表</p></td>
<td><p>将项目转化为缩进列表，并将第一个字词后的内容转为缩进项（于行首加入<font color="red"><strong>;</strong></font>，首个空格后加入<font color="red"><strong>:</strong></font>）。</p></td>
<td><p>当前行或所选行（可多行）</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_image.png" title="fig:Image:wikEd image.png">Image:wikEd image.png</a></span></p></td>
<td><p>图像</p></td>
<td><p>加入维基<a href="https://zh.wikipedia.org/wiki/Help:图像" title="wikilink">图像</a>（插入縮圖格式：<font color="red">[[Image:文件名|thumb]]</font>）。</p></td>
<td><p>选中单词、光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_table.png" title="fig:Image:wikEd table.png">Image:wikEd table.png</a></span></p></td>
<td><p>表格</p></td>
<td><p>插入表格。所选行转换为表格单元格。</p></td>
<td><p>所选行（可多行）、光标所在位置</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_references.png" title="fig:Image:wikEd references.png">Image:wikEd references.png</a></span></p></td>
<td><p>参考文献</p></td>
<td><p>添加或除去参考章节占位符（<strong><font color="red">&lt;references/&gt;</font></strong>）。按住Shift点击会插入维基百科参考文献章节目录，並於下一行插入参考章节占位符（<strong><font color="red">== 参考文献 == / &lt;references /&gt;</font></strong>）。</p></td>
<td><p>光标所在位置</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_sort.png" title="fig:Image:wikEd sort.png">Image:wikEd sort.png</a></span></p></td>
<td><p>排序</p></td>
<td><p>按照字母排序。排序會忽略大小写，並將数字由小到大正确排序。排序对象为最终显示文字，链接目标、维基代码、非单词字符都会被忽略。</p>
<p>當作用於單一行時，可以排序表格的儲存格或列表的項目（項目之間由項目符號(•)、間隔號(·)、連接號(–)、兩側留空白的字符 <code>\|/-,;:</code>、緊接空白的字符<code>,;:</code>或空白所分隔）。模板參數、表格列和列表所需的維基代碼會被保留。</p>
<p>當作用於多行時，將會按行排序，表格整列的儲存格會一起移動。</p></td>
<td><p>當前行、所選行或行內選區</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_redirect.png" title="fig:Image:wikEd redirect.png">Image:wikEd redirect.png</a></span></p></td>
<td><p>重定向</p></td>
<td><p>按所选文字或光标处单词，生成重定向代码（<font color="red"><strong>#REDIRECT [[</strong></font>…&lt;font_color="red"&gt;<strong>|</strong></font>…<font color="red"><strong>]]</strong></font>）。同时在编辑摘要处生成重定向代码。<u><strong>功能会清除全部文字</strong></u>。</p></td>
<td><p>选中单词</p></td>
</tr>
</tbody>
</table>

| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">**<small>图标</small>**</span>                                                                                         | 名称  | 说明                                                                                                                               | 作用区域     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --- | -------------------------------------------------------------------------------------------------------------------------------- | -------- |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd wikify.png](https://zh.wikipedia.org/wiki/File:wikEd_wikify.png "fig:Image:wikEd wikify.png")</span>    | 维基化 | 将粘贴的内容维基化。将从Word、维基条目页或其他网页粘贴的内容，转化为维基代码。粘贴的标题文字会转化为正常文本，只有在一行开始的标题会转化为维基代码标题。同时可更新语法高亮。键盘快捷键为Shift-Alt-B。（或Ctrl-Shift-B，因浏览器而异） | 选区，否则为全文 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd textify.png](https://zh.wikipedia.org/wiki/File:wikEd_textify.png "fig:Image:wikEd textify.png")</span> | 文本化 | 将粘贴的内容文本化。将Word、网页来源的格式除去，只保留可见文本。同时可更新高亮。键盘快捷键为Shift-Alt-O。（或Ctrl-Shift-O，因浏览器而异）                                               | 选区，否则为全文 |

### 查找与替换按钮

|                                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------- |
| [WikEdF\&RButt.png](https://zh.wikipedia.org/wiki/File:WikEdF&RButt.png "fig:WikEdF&RButt.png")查找与替换按钮，位于文字编辑区正上方，格式按钮的后面 |

<table>
<thead>
<tr class="header">
<th><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><strong><small>图标</small></strong></span></p></th>
<th><p>名称</p></th>
<th><p>说明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>colspan = "2" style="border: none; background: none;" |</p></td>
<td><p>上行</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_find_all.png" title="fig:Image:wikEd find all.png">Image:wikEd find all.png</a></span></p></td>
<td><p>查找全部</p></td>
<td><p>高亮全部匹配的文本，但不滚动文本区。</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_find_prev.png" title="fig:Image:wikEd find prev.png">Image:wikEd find prev.png</a></span></p></td>
<td><p>查找前一个</p></td>
<td><p>倒序搜索前一個匹配的文本。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/File:WikEd_combo_input.png" title="fig:Image:WikEd combo input.png">Image:WikEd combo input.png</a></p></td>
<td><p>查找与跳至</p></td>
<td><p>欲搜索的文本。下拉菜单记录著最近的搜索历史。◊和♦前缀分别代表启用“区分大小写”和“正则表达式”。选择之前的搜索历史，亦会同時配置“区分大小写”与“正则表达式”按钮。<br />
如果激活“即时搜索”按钮，wikEd会在输入内容的同时搜索（仅限忽略大小写和非正则表达式模式）。<br />
若此框留空，点击查找按钮会搜索选中文字，或光标所在的单词。可用“清除查找”按钮清空此栏。<br />
您可以藉由點擊下拉式選單中⇒符號後的標題，跳至該標題。此動作不會變更搜尋目標。<br />
可使用Tab按鈕在“尋找”和“取代”框之間切換。</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_find_next.png" title="fig:Image:wikEd find next.png">Image:wikEd find next.png</a></span></p></td>
<td><p>查找下一个</p></td>
<td><p>正序搜索下一個匹配的文本。</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_jump_prev.png" title="fig:Image:wikEd jump prev.png">Image:wikEd jump prev.png</a></span></p></td>
<td><p>選擇上一個</p></td>
<td><p>倒序尋找所選的文字，搜尋目標不變。如果沒有選擇任何文字，則會自動尋找游標處單詞。</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_jump_next.png" title="fig:Image:wikEd jump next.png">Image:wikEd jump next.png</a></span></p></td>
<td><p>選擇下一個</p></td>
<td><p>正序尋找所選的文字，搜尋目標不變。如果沒有選擇任何文字，則會自動尋找游標處單詞。</p></td>
</tr>
<tr class="even">
<td><p>colspan = "2" style="border: none; background: none;" |</p></td>
<td><p>下行</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_replace_all.png" title="fig:Image:wikEd replace all.png">Image:wikEd replace all.png</a></span></p></td>
<td><p>全部取代</p></td>
<td><p>在全文中或選擇的範圍中，將符合的文字全部取代。</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_replace_prev.png" title="fig:Image:wikEd replace prev.png">Image:wikEd replace prev.png</a></span></p></td>
<td><p>取代上一個</p></td>
<td><p>取代上一個符合的文字。此按鈕會先倒序突出顯示符合的文字，須再次點擊以執行取代。</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:WikEd_combo_input.png" title="fig:Image:WikEd combo input.png">Image:WikEd combo input.png</a></p></td>
<td><p>取代</p></td>
<td><p>取代文字。下拉式選單記錄著最近的取代歷史，標記符號代表啟用「區分大小寫」和「正規表示式」。若選擇之前的取代歷史，亦會同時設定相應的「區分大小寫」與「正規表示式」按鈕。</p>
<p>可使用Tab按鈕在「尋找」和「取代」框之間切換。</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_replace_next.png" title="fig:Image:wikEd replace next.png">Image:wikEd replace next.png</a></span></p></td>
<td><p>取代下一個</p></td>
<td><p>取代下一個符合的文字。此按鈕會先正序突出顯示符合的文字，須再次點擊以執行取代。</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_case_sensitive.png" title="fig:Image:wikEd case sensitive.png">Image:wikEd case sensitive.png</a></span></p></td>
<td><p>區分大小寫</p></td>
<td><p>切換區分大小寫的設定。此功能對「即時尋找」無效。</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_regexp.png" title="fig:Image:wikEd regexp.png">Image:wikEd regexp.png</a></span></p></td>
<td><p>正規表示式</p></td>
<td><p>切換<a href="../Page/正则表达式.md" title="wikilink">正则表达式</a>的設定。此處使用的是 <a href="https://developer.mozilla.org/en/Core_JavaScript_1.5_Guide/Regular_Expressions">JavaScript regular expression</a> 的語法。在取代文字中，下列的預留位置可以使用：<em>$1, $2...</em>（用以標示括號內的子字串符合項）、 <em>\n</em> (新一行)、 <em>\r</em> (空一格)、 <em>\t</em> (tab)、 <em>\127</em> (八進位字符)、 <em>\x1f</em> (十六進位 ASCII 字符)、和 <em>\u12ef</em> (十六進位 Unicode 字符)。 <em>\\</em>、<em>\'</em>、和<em>\"</em> 等同於 <em>\</em>、 <em>'</em>、和 <em>"</em>。</p></td>
</tr>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_find_ahead.png" title="fig:Image:wikEd find ahead.png">Image:wikEd find ahead.png</a></span></p></td>
<td><p>即時尋找</p></td>
<td><p>切換「即時尋找」的設定。 如果啟用，則會在您輸入的同時即時尋找目標文字。</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 修正按鈕

|                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------- |
| [WikEdFixButt.png](https://zh.wikipedia.org/wiki/File:WikEdFixButt.png "fig:WikEdFixButt.png")**修正按鈕**位於尋找與取代按鈕的右手邊，文字編輯框正上方。 |

<span style="color: red;">请在使用这类按钮后，**務必**利用<span style="color: none; background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd diff.png](https://zh.wikipedia.org/wiki/File:WikEd_diff.png "fig:Image:WikEd diff.png")</span>按钮检查编辑，避免出现预期外的损毁编辑。</span>请尽可能选择較小的选区。記住它们的应用规则相當简单。只有Unicode字符的修复是绝对安全的。

| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">**<small>图标</small>**</span>                                                                                                                 | 名稱         | 說明                                                                                                                                                                                                                                                                                                                                           | 作用區域        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| colspan = "2" style="border: none; background: none;" |                                                                                                                                                                  | 上行         |                                                                                                                                                                                                                                                                                                                                              |             |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd fix basic.png](https://zh.wikipedia.org/wiki/File:WikEd_fix_basic.png "fig:Image:WikEd fix basic.png")</span>                   | 基本修正       | 將標題加上空白格和空行。如此，可以在不影響文章呈現方式的情況下，增進原始碼的易讀性。大多數的修復按鈕也都有此項功能，除了<u>Unicode</u>的修復以外。                                                                                                                                                                                                                                                             | 選擇範圍，否則為全文  |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd fix html.png](https://zh.wikipedia.org/wiki/File:WikEd_fix_html.png "fig:Image:WikEd fix html.png")</span>                      | Html 修正    | 將文章內的html代碼取代成相應的維基代碼。此功能並不支援html標籤(html tags)，修復過程中會將其刪除。                                                                                                                                                                                                                                                                                   | 選擇範圍，否則為全文  |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd fix caps.png](https://zh.wikipedia.org/wiki/File:WikEd_fix_caps.png "fig:Image:WikEd fix caps.png")</span>                      | 大寫修正       | 將標題和列表轉為大寫                                                                                                                                                                                                                                                                                                                                   | 選擇範圍，否則為當前行 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd fix unicode.png](https://zh.wikipedia.org/wiki/File:WikEd_fix_unicode.png "fig:Image:WikEd fix unicode.png")</span>             | Unicode 修正 | 根據瀏覽器所能夠支援字符的程度，將[Unicode字元顯示修復轉換為](https://zh.wikipedia.org/wiki/Unicode "wikilink")[實體字元](../Page/字符实体引用.md "wikilink")。例如：將 *°* 和 *À* 分別轉換成實體字元“°”和“.”。這是個安全轉換的按鈕，可以套用至全文且無須複檢。                                                                                                                                                           | 選擇範圍，否則為全文  |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd fix all.png](https://zh.wikipedia.org/wiki/File:WikEd_fix_all.png "fig:Image:WikEd fix all.png")</span>                         | 全部修正       | 一次進行以上四種修復：基本、html、大寫以及Unicode的修復。                                                                                                                                                                                                                                                                                                           | 選擇範圍，否則為全文  |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd fix redirect.png](https://zh.wikipedia.org/wiki/File:WikEd_fix_redirect.png "fig:Image:WikEd fix redirect.png")</span>          | 重新導向修正     | 檢查連結是否含有[重新導向](../Page/網域名稱轉址.md "wikilink")，並將其修復導向至最終目標。原始連結文字會保留在"|"之後。這項功能使用了[AJAX](../Page/AJAX.md "wikilink")技術連結伺服器。此修復按鈕必須小心使用，請先詳讀[重新導向的介紹以及](https://zh.wikipedia.org/wiki/Wikipedia:重定向 "wikilink")[重新導向使用說明](https://zh.wikipedia.org/wiki/Help:重定向 "wikilink")                                                                  | 選擇範圍，否則為全文  |
| colspan = "2" style="border: none; background: none;" |                                                                                                                                                                  | 下行         |                                                                                                                                                                                                                                                                                                                                              |             |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fix dash.png](https://zh.wikipedia.org/wiki/File:wikEd_fix_dash.png "fig:Image:wikEd fix dash.png")</span>                      | 連接號修正      | 修復[em連接號](https://zh.wikipedia.org/wiki/連接號#Em_dash "wikilink")、[en連接號](https://zh.wikipedia.org/wiki/連接號#En_dash "wikilink")、[连字号](../Page/连字号.md "wikilink")和[減號](../Page/加号与减号.md "wikilink")，使其呈現正確字元及格式，包含：移除em連接號周邊的空格，於en連接號的兩側加入空格，將html實體字元轉換為連接號字元，--轉換為em連接號，數字前的連接號轉換為減號，日期的連接號轉換為en連接號。                                         | 選擇範圍，否則為當段落 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fix punct.png](https://zh.wikipedia.org/wiki/File:wikEd_fix_punct.png "fig:Image:wikEd fix punct.png")</span>                   | 標點符號修正     | 刪除標點符號前的空格。                                                                                                                                                                                                                                                                                                                                  | 選擇範圍，否則為當段落 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fix math.png](https://zh.wikipedia.org/wiki/File:wikEd_fix_math.png "fig:Image:wikEd fix math.png")</span>                      | 數學式修正      | 修復一些\<math\> 維基標記外常見的問題：減號、乘號*×*<font color="#000000">、將</font>*10^3*<font color="#000000">轉換為</font>*10<sup>3</sup>*<font color="#000000">、</font>*+/-*<font color="#000000">轉換為</font>*±*以及Unicode轉換為html上標。                                                                                                                               | 選擇範圍，否則為當段落 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fix chem.png](https://zh.wikipedia.org/wiki/File:wikEd_fix_chem.png "fig:Image:wikEd fix chem.png")</span>                      | 化學式修正      | 修復未格式化的化學式。修復上標和下標符號，元素名大寫和反應箭號。此功能僅適用於較小範圍的選區。例如：*2 Na+ + 2 OH- + H2SO4 --\> 2 h2o + Na2SO4*<font color="#000000">將會轉換為</font>*2Na<sup>+</sup> + 2OH<sup>−</sup> + H<sub>2</sub>SO<sub>4</sub> → 2H<sub>2</sub>O + Na<sub>2</sub>SO<sub>4</sub>*。                                                                                           | 選擇範圍，否則為當前行 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fix units.png](https://zh.wikipedia.org/wiki/File:wikEd_fix_units.png "fig:Image:wikEd fix units.png")</span>                   | 單位修正       | 修正大多數的物理單位。單位須在數字前面。                                                                                                                                                                                                                                                                                                                         | 選擇範圍，否則為當段落 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fix reg-ex-typo.png](https://zh.wikipedia.org/wiki/File:wikEd_fix_reg-ex-typo.png "fig:Image:wikEd fix reg-ex-typo.png")</span> | 錯別字修正      | 使用[AutoWikiBrowser Typos](https://zh.wikipedia.org/wiki/Wikipedia:AutoWikiBrowser/Typos "wikilink") 的規則修正常見的錯別字。需要在安裝**wikEd**之前，在偏好設定“外觀”分頁內的*monobook.js*頁面加入`wikEdRegExTypoFix = true;` 才能使用本功能，否則工具列上不會出現此按鈕。（詳見 [**wikEd** customization](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEd_customization#RegExTypoFix "wikilink")）。 | 選擇範圍，否則為全文  |
|                                                                                                                                                                                                                          |            |                                                                                                                                                                                                                                                                                                                                              |             |

### wikEd 控制按鈕

|                                                                                                           |
| --------------------------------------------------------------------------------------------------------- |
| [WikEdCnt.png](https://zh.wikipedia.org/wiki/File:WikEdCnt.png "fig:WikEdCnt.png")**控制按鈕** 位於文字編輯框正上方的右側。 |

這些切換按鈕的功能會儲存起來，並作用在所有新開啟的頁面。將滑鼠游標懸浮在此按鈕區的背景區域，可以顯示版本資訊，類似於頁面最上方的[主開關](https://zh.wikipedia.org/wiki/Help:WikEd#WikEd主開關、版本資訊與錯誤指示器 "wikilink")。

| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">**<small>图标</small>**</span>                                                                                                                          | 名称               | 说明                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| colspan = "2" style="border: none; background: none;" |                                                                                                                                                                           | 上行               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd ref hide.png](https://zh.wikipedia.org/wiki/File:wikEd_ref_hide.png "fig:Image:wikEd ref hide.png")</span>                               | 顯示或隱藏\[參\]、\[模\] | «新手模式»的切換。新手模式會隱藏文獻參考<span style="border: 1px solid; border-color: #eee #444 #444 #eee; font-size: 65%; color: #444; background-color: #ccc; font-family: sans-serif; padding: 0.2em 0.25em;">REF</span> 標籤下方的參考資料(\<ref\>...\</ref\>)和<span style="border: 1px solid; border-color: #eee #444 #444 #eee; font-size: 65%; color: #444; background-color: #ccc; font-family: sans-serif; padding: 0.2em 0.25em;">TEMPL</span> 模板標籤下方的多行模板。當滑鼠游標移置標籤上方時，隱藏的內容會顯示以供編輯。此設定將作用至所有新開的頁面，並會儲存此設定以供未來的會話使用。 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd font size.png](https://zh.wikipedia.org/wiki/File:wikEd_font_size.png "fig:Image:wikEd font size.png")</span>                            | 文字大小             | 改變文字編輯框內的文字大小。大小依序為*小*, *非常小*, *非常大*, and *大* 並回到*正常*。同時按住SHIFT鍵即可反向操作。                                                                                                                                                                                                                                                                                                                                                                                                                             |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd clear history.png](https://zh.wikipedia.org/wiki/File:wikEd_clear_history.png "fig:Image:wikEd clear history.png")</span>                | 清除歷史紀錄           | 藉由刪除cookies以清除尋找、取代和編輯摘要的歷史紀錄。                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd source.png](https://zh.wikipedia.org/wiki/File:wikEd_source.png "fig:Image:wikEd source.png")</span>                                     | 原始碼              | 顯示貼上內容或突出顯示語法的原始碼。此功能主要做為測試用。作用範圍為選擇範圍或全文。此按鈕預設為不啟用，若要啟用本功能，需要在設定中加入`var wikEdShowSourceButton = true;`，請詳見[**WikEd** customization](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEd_customization#Various "wikilink")。                                                                                                                                                                                                                                                                        |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd align preview down.png](https://zh.wikipedia.org/wiki/File:wikEd_align_preview_down.png "fig:Image:wikEd align preview down.png")</span> | 跳至預覽框            | 移動到預覽框。鍵盤快捷鍵：*Shift*-*Alt*-G (或*Ctrl*-*Shift*-G，按使用的瀏覽器而有所不同)。                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd align down.png](https://zh.wikipedia.org/wiki/File:wikEd_align_down.png "fig:Image:wikEd align down.png")</span>                         | 跳至編輯框            | 移動到編輯框。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| colspan = "2" style="border: none; background: none;" |                                                                                                                                                                           | 下行               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd logo.png](https://zh.wikipedia.org/wiki/File:wikEd_logo.png "fig:Image:wikEd logo.png")</span>                                           | 使用 wikEd         | 在標準編輯框和**wikEd**之間切換。可暫時性切換回標準編輯框。此設定將會儲存並套用至所有視窗。點擊此按鈕將會刪除“復原”的歷史紀錄。                                                                                                                                                                                                                                                                                                                                                                                                                               |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd syntax.png](https://zh.wikipedia.org/wiki/File:wikEd_syntax.png "fig:Image:wikEd syntax.png")</span>                                     | 語法突顯             | 切換語法自動突出顯示功能。此設定將會儲存並套用至所有視窗。語法突顯也會使內部和外部連結可以點選(ctrl-click)。                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd table edit.png](https://zh.wikipedia.org/wiki/File:wikEd_table_edit.png "fig:Image:wikEd table edit.png")</span>                         | 表格模式             | *尚在建置中\!* 在**WikEd**的表格編輯模式和瀏覽器內建的表格編輯模式之間切換。此按鈕目前預設為不啟用，若要啟用需要在設定中加入`var wikEdShowTableModeButton = true;`。                                                                                                                                                                                                                                                                                                                                                                                        |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd close toolbar.png](https://zh.wikipedia.org/wiki/File:wikEd_close_toolbar.png "fig:Image:wikEd close toolbar.png")</span>                | 關閉工具列            | 切換非**wikEd**的工具列。此設定將作用至所有新開的頁面，並會儲存此設定以供未來的會話使用。                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd using.png](https://zh.wikipedia.org/wiki/File:wikEd_using.png "fig:Image:wikEd using.png")</span>                                        | 使用WikEd          | 儲存編輯時，於編輯摘要中自動加入*使用WikEd*。此設定將作用至所有新開的頁面，並會儲存此設定以供未來的會話使用。此按鈕目前預設為不啟用，若要啟用需要在設定中加入`var wikEdShowUsingButton = true;`，請詳見[**WikEd** customization](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEd_customization#Various "wikilink")。                                                                                                                                                                                                                                                           |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEdDiff.png](https://zh.wikipedia.org/wiki/File:wikEdDiff.png "fig:Image:wikEdDiff.png")</span>                                              | wikEd差異          | 自動開啟 [wikEd差異](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEdDiff "wikilink") 以顯示編輯前後的差異。此設定將作用至所有新開的頁面，並會儲存此設定以供未來的會話使用。                                                                                                                                                                                                                                                                                                                                                                     |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd fullscreen.png](https://zh.wikipedia.org/wiki/File:wikEd_fullscreen.png "fig:Image:wikEd fullscreen.png")</span>                         | 全螢幕              | 切換至全螢幕模式。此設定將作用至所有新開的頁面，並會儲存此設定以供未來的會話使用。預覽頁面將不會啟用全螢幕模式。                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|                                                                                                                                                                                                                                   |                  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

### 預覽及變更

|                                                                                                                                             |                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| [WikEdSubmitButt.png](https://zh.wikipedia.org/wiki/File:WikEdSubmitButt.png "fig:WikEdSubmitButt.png")標準的“儲存送出按鈕”和 **wikEd**的“預覽”以及“變更”按鈕。 | [WikEdPrvChg.png](https://zh.wikipedia.org/wiki/File:WikEdPrvChg.png "fig:WikEdPrvChg.png")一些出現在預覽框右上方和右下方的按鈕。 |

<table>
<thead>
<tr class="header">
<th><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><strong><small>图标</small></strong></span></p></th>
<th><p>名称</p></th>
<th><p>说明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_preview.png" title="fig:Image:wikEd preview.png">Image:wikEd preview.png</a></span></p></td>
<td><p>預覽</p></td>
<td><p>於編輯框下方顯示預覽。在預覽框的任一地方<strong>點擊2下</strong>或點擊<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_align_top.png" title="fig:wikEd_align_top.png">wikEd_align_top.png</a></span>按鈕即可跳至編輯框；點擊<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_align_preview_down.png" title="fig:wikEd_align_preview_down.png">wikEd_align_preview_down.png</a></span> 則可跳至預覽框。</p></td>
</tr>
<tr class="even">
<td><p><span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_diff.png" title="fig:Image:wikEd diff.png">Image:wikEd diff.png</a></span></p></td>
<td><p>變更</p></td>
<td><p>於編輯框下方顯示修訂變更。此功能和標準的差異比較並<strong>不</strong> 一樣，因為它並不是和最後一次存檔的文本作比較，而是和最後一次載入的文本比較。在“變更”</p>
<p>區任一地方 <strong>點擊2下</strong>或點擊<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_align_top.png" title="fig:wikEd_align_top.png">wikEd_align_top.png</a></span> 即可跳至編輯框，而點擊<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_align_preview_down.png" title="fig:wikEd_align_preview_down.png">wikEd_align_preview_down.png</a></span> 則可跳至“變更”區。此功能使用了<a href="https://zh.wikipedia.org/wiki/:en:User:Cacycle/diff" title="wikilink">wikEd diff library</a>。</p></td>
</tr>
</tbody>
</table>

| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">**<small>图标</small>**</span>                                                                                                                          | 名称    | 说明                                                                                                        |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- | --------------------------------------------------------------------------------------------------------- |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd align preview down.png](https://zh.wikipedia.org/wiki/File:wikEd_align_preview_down.png "fig:Image:wikEd align preview down.png")</span> | 跳至預覽框 | 移動到預覽框。                                                                                                   |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd align top.png](https://zh.wikipedia.org/wiki/File:wikEd_align_top.png "fig:Image:wikEd align top.png")</span>                            | 跳至編輯框 | 移動到編輯框。此功能等同於在“預覽框”或“變更框”(無論是標準版的或wikEd的)的任一地方**點擊2下**，或使用鍵盤快捷鍵*Shift*-*Alt*-G （或*Ctrl*-*Shift*-G因瀏覽器而異）。 |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd close.png](https://zh.wikipedia.org/wiki/File:wikEd_close.png "fig:Image:wikEd close.png")</span>                                        | 關閉    | 關閉預覽框或“變更框”。                                                                                              |

### 編輯摘要

| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">**<small>图标</small>**</span>                                                                                                           | 名称   | 说明                                                                                                                                                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:WikEd clear summary.png](https://zh.wikipedia.org/wiki/File:WikEd_clear_summary.png "fig:Image:WikEd clear summary.png")</span> | 清除摘要 | 清除編輯摘要框內的文字。標題名稱（*/\*標題\*/*）在第1次點擊都會保留下來，但第2次點擊此按鈕就會清除。                                                                                                                                                                                                |
| [Image:WikEd combo input.png](https://zh.wikipedia.org/wiki/File:WikEd_combo_input.png "fig:Image:WikEd combo input.png")                                                                                          | 編輯摘要 | 這是一個普通的編輯摘要框，但增加了下拉式歷史紀錄清單。清單上半部是最近輸入過的摘要歷史紀錄，最近的顯示在最上層。下半部是一些使用者定義的語句（請詳見[**WikEd** customization以參考如何設定和更改](https://zh.wikipedia.org/wiki/:en:User:Cacycle/wikEd_customization#Various "wikilink")）。選擇的語句會附在當前輸入的文字後。摘要前的標題名稱（*/\*標題\*/*）不會記錄在歷史紀錄裡。 |
|                                                                                                                                                                                                                    |      |                                                                                                                                                                                                                                                        |

## 特殊字元的語法突顯

wikEd 會突出顯示某些特殊的[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink") 字元，使它們和標準版本不一樣而得以被辨識。將滑鼠游標懸浮在突顯的字元上方以顯示它的名稱。

<table>
<thead>
<tr class="header">
<th><p>突顯方式</p></th>
<th><p>名稱</p></th>
<th><p>Unicode</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/File:WikEd_tab.png" title="fig:File:WikEd_tab.png"><a href="File:WikEd_tab.png">File:WikEd_tab.png</a></a></p></td>
<td><p><a href="../Page/製表鍵.md" title="wikilink">Tab</a></p></td>
<td><p>U+0009</p></td>
</tr>
<tr class="even">
<td><div style="position: relative; left: 3em;">
<p> <span style="position: absolute; left: 0;"><a href="https://zh.wikipedia.org/wiki/File:WikEd_en_space.png" title="fig:File:WikEd_en_space.png"><a href="File:WikEd_en_space.png">File:WikEd_en_space.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/空格#Unicode定義" title="wikilink">En space</a></p></td>
<td><p>U+2002</p></td>
</tr>
<tr class="odd">
<td><div style="position: relative; left: 3em;">
<p> <span style="position: absolute; left: 0;"><a href="https://zh.wikipedia.org/wiki/File:WikEd_em_space.png" title="fig:File:WikEd_em_space.png"><a href="File:WikEd_em_space.png">File:WikEd_em_space.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/空#Unicode定義格" title="wikilink">Em space</a></p></td>
<td><p>U+2003</p></td>
</tr>
<tr class="even">
<td><div style="position: relative; left: 3em;">
<p> <span style="position: absolute; left: 0;"><a href="https://zh.wikipedia.org/wiki/File:WikEd_thin_space.png" title="fig:File:WikEd_thin_space.png"><a href="File:WikEd_thin_space.png">File:WikEd_thin_space.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/空格#Unicode定義" title="wikilink">窄空格</a></p></td>
<td><p>U+2009</p></td>
</tr>
<tr class="odd">
<td><div style="position: relative; left: 3em;">
<p> <span style="position: absolute; left: 0;"><a href="https://zh.wikipedia.org/wiki/File:WikEd_ideographic_space.png" title="fig:File:WikEd_ideographic_space.png"><a href="File:WikEd_ideographic_space.png">File:WikEd_ideographic_space.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/空格#Unicode定義" title="wikilink">全形空格</a></p></td>
<td><p>U+3000</p></td>
</tr>
<tr class="even">
<td><div style="position: relative; left: 3em;">
<p>-<span style="position: absolute; left: 0;"></span></p>
</div></td>
<td><p><a href="../Page/连字号.md" title="wikilink">連字號</a></p></td>
<td><p>U+002D</p></td>
</tr>
<tr class="odd">
<td><div style="position: relative; left: 3em;">
<p>­<span style="position: absolute; left: 0; top: -0.5em"><a href="https://zh.wikipedia.org/wiki/File:WikEd_soft_hyphen.png" title="fig:File:WikEd_soft_hyphen.png"><a href="File:WikEd_soft_hyphen.png">File:WikEd_soft_hyphen.png</a></a></span></p>
</div></td>
<td><p><a href="../Page/连字号.md" title="wikilink">軟性連字號</a></p></td>
<td><p>U+00AD</p></td>
</tr>
<tr class="even">
<td><div style="position: relative; left: 3em;">
<p>‒<span style="position: absolute; left: 0; top: -0.5em"><a href="https://zh.wikipedia.org/wiki/File:WikEd_figure_dash.png" title="fig:File:WikEd_figure_dash.png"><a href="File:WikEd_figure_dash.png">File:WikEd_figure_dash.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/连接号#數字線" title="wikilink">數字線</a></p></td>
<td><p>U+2012</p></td>
</tr>
<tr class="odd">
<td><div style="position: relative; left: 3em;">
<p>–<span style="position: absolute; left: 0; top: -0.5em"><a href="https://zh.wikipedia.org/wiki/File:WikEd_en_dash.png" title="fig:File:WikEd_en_dash.png"><a href="File:WikEd_en_dash.png">File:WikEd_en_dash.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/连接号#En_dash" title="wikilink">En dash</a></p></td>
<td><p>U+2013</p></td>
</tr>
<tr class="even">
<td><div style="position: relative; left: 3em;">
<p>—<span style="position: absolute; left: 0; top: -0.5em"><a href="https://zh.wikipedia.org/wiki/File:WikEd_em_dash.png" title="fig:File:WikEd_em_dash.png"><a href="File:WikEd_em_dash.png">File:WikEd_em_dash.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/连接号#Em_dash" title="wikilink">Em dash</a></p></td>
<td><p>U+2014</p></td>
</tr>
<tr class="odd">
<td><div style="position: relative; left: 3em;">
<p>―<span style="position: absolute; left: 0; top: -0.5em"><a href="https://zh.wikipedia.org/wiki/File:WikEd_bar_dash.png" title="fig:File:WikEd_bar_dash.png"><a href="File:WikEd_bar_dash.png">File:WikEd_bar_dash.png</a></a></span></p>
</div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/连接号#水平線" title="wikilink">水平線</a> (引文線）</p></td>
<td><p>U+2015</p></td>
</tr>
<tr class="even">
<td><div style="position: relative; left: 3em;">
<p>− <span style="position: absolute; left: 0; top: -0.5em"><a href="https://zh.wikipedia.org/wiki/File:WikEd_minus_dash.png" title="fig:File:WikEd_minus_dash.png"><a href="File:WikEd_minus_dash.png">File:WikEd_minus_dash.png</a></a></span></p>
</div></td>
<td><p><a href="../Page/加号与减号.md" title="wikilink">減號</a></p></td>
<td><p>U+2212</p></td>
</tr>
</tbody>
</table>

<table>
<thead>
<tr class="header">
<th><p>突顯方式</p></th>
<th><p>名稱</p></th>
<th><p>說明</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><div style="position: relative; left: 2em;">
<p><span style="position: absolute; left: 0; line-height: 0;"><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><br />
<a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><br />
<a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><a href="https://zh.wikipedia.org/wiki/File:wikEd_unknown.png" title="fig:Image:wikEd_unknown.png">Image:wikEd_unknown.png</a><br />
</span></p>
</div></td>
<td><p>不支援標籤</p></td>
<td><p>不明或Mediawiki不支援的 <a href="../Page/HTML元素.md" title="wikilink">HTML 標籤</a>。請使用“Html 修正”按鈕將這類語法轉換成維基程式碼。</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 故障排除

### wikEd缓慢

对于旧电脑或过时浏览器，编辑超长页面可能会感到缓慢。这时请点击<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[WikEd_syntax.png](https://zh.wikipedia.org/wiki/File:WikEd_syntax.png "fig:WikEd_syntax.png")</span>按钮，禁用语法高亮。此外您可能要避免对整篇文章使用编辑按钮或正则表达式（<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[WikEd_regexp.png](https://zh.wikipedia.org/wiki/File:WikEd_regexp.png "fig:WikEd_regexp.png")</span>按钮）搜索。

### wikEd無法加载

如果您已按上方说明设定，但wikEd标志（<span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd logo.png](https://zh.wikipedia.org/wiki/File:wikEd_logo.png "fig:Image:wikEd logo.png")</span>）未在页面顶部退出的后面显示，同时编辑页也不出现wikEd按钮。请尝试以下步骤：

  - 更新瀏覽器的快取：按住**<u>Shift鍵</u>**並點擊<u>**重新整理**</u>（或 按**<u>Ctrl-Shift-R</u>**）
  - 啟用瀏覽器中的JavaScript（Firefox：工具 → 選項 → 內容 → 啟用 JavaScript）
  - If installed as a user script on a *User:YourUsername/your_skin.js* page make sure that you are using the right skin or move the loading code to [User:YourUsername/common.js](https://zh.wikipedia.org/wiki/Special:Mypage/common.js "wikilink"), see [wikEd installation](https://zh.wikipedia.org/wiki/User:Cacycle/wikEd_installation "wikilink")
  - If you are using **wikEd** on a non-Wikipedia installation check if *$wgAllowUserJs* is has been set to *true* in the MediaWiki initialization file LocalSettings.php by an administrator
  - Check the JavaScript Error Console (under *Tools* in Firefox) for error messages. If there is an error message caused by **wikEd** please report to the [**wikEd** discussion page](https://zh.wikipedia.org/wiki/User_talk:Cacycle/wikEd "wikilink").

### 所有的wikEd的按鈕消失

頁面上方的 **wikEd** 圖示 <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd disabled.png](https://zh.wikipedia.org/wiki/File:wikEd_disabled.png "fig:Image:wikEd disabled.png")</span> 呈現灰色，且 **wikEd** 按鈕並沒有出現在編輯框。

  - 您可能不小心點擊了頁面上方的 **wikEd** 的圖示而關閉了**wikEd**。請再次點擊圖示以重新啟用 **wikEd**。

### wikEd 格式按鈕消失

**wikEd** 的控制按鈕 [WikEdCnt.png](https://zh.wikipedia.org/wiki/File:WikEdCnt.png "fig:WikEdCnt.png") 有顯示在編輯框上，但其他的工具列都消失了。

  - 您可能點擊了編輯框上的控制按鈕 <span style="background: #d4d0cc; border: 1px outset; padding-bottom: 2px;">[Image:wikEd logo.png](https://zh.wikipedia.org/wiki/File:wikEd_logo.png "fig:Image:wikEd logo.png")</span> 而暫時性地關閉了**wikEd**。請再次點擊按鈕以重新啟用 **wikEd**。請記住，這個按鈕的設定會儲存起來，並作用至所有的視窗和分頁。

### Error: invalid range in character class

You have installed **wikEd** by pasting the complete code to your wiki. **wikEd** does not load at all and the browser's error console shows the following error: *"Error: invalid range in character class"*. When you check the header text of the copied **wikEd** code for the following sentence: *"The code has to be saved as UTF-8 in your editor to preserve Unicode characters like ♥ (heart)"* the *"♥"* symbol is replaced by a *"?"*.

The reason is that you lost the [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink") character formatting when copying the code to your wiki. Use a [UTF-8](../Page/UTF-8.md "wikilink")-capable text editor when you paste the code to your wiki and specify UTF-8 as your file format when you save your text file.

## FAQ

### Can I have only some **wikEd** features

Can I have only some **wikEd** features, e.g. only syntax highlighting, no syntax highlighting, only the search functions?

There is no easy way to get only some wikEd features as most features are highly interdependent. However, **wikEd** is configurable and you could try to set the respective presets (e.g. no syntax highlighting), see the [customization section](https://zh.wikipedia.org/wiki/User:Cacycle/wikEd_customization "wikilink"). Experienced programmers could try to dissect or to remove certain features, but such a version would not be updated automatically with bugfixes and new features. Feel free to suggest new configuration options on the [wikEd talk](https://zh.wikipedia.org/wiki/User_talk:Cacycle/wikEd "wikilink") page after having used **wikEd** for a few days (to get the feeling...).

### Missing features and other shortcomings

#### Automatic syntax highlighting

A common feature request is the automatic updating of the syntax highlighting while typing ("live syntax highlighting").

This cannot be easily implemented for technical reasons. Every automatic change to the edit frame either erases or messes up the undo history. In order to get live syntax highlighting, the whole undo/redo system and the whole editing logic of the browser's rich text interface would have to be simulated from scratch in JavaScript. Please see this [Firefox bug report](https://bugzilla.mozilla.org/show_bug.cgi?id=458524) and vote for it.

#### WYSIWYG

  -
    '' Please also read an extended user essay about this under [User:Cacycle/WYSIWYG](https://zh.wikipedia.org/wiki/User:Cacycle/WYSIWYG "wikilink") (under construction)''

A common feature request is to make **wikEd** a true [WYSIWYG](https://zh.wikipedia.org/wiki/WYSIWYG "wikilink") ( )\[2\] editor.

While this sounds like a good idea at first, it is actually a step backwards. It would be very simple to add WYSIWYG for the basic formatting like bold or italic. But for even slightly more advanced formatting, things turn complicated:

  - A true WYSIWYG editor has to hide and encapsulate any existing wikicode from direct editing
  - Therefore, images, tables, templates, wiki links, external links, and even simple span or div tags with parameters, need a separate (popup) editor to edit their hidden content
  - Pasting formatted text screws up formatting, especially the heading order
  - Existing, syntactically incorrect text on the page can disappear from editing, and, in the worst case, get lost on saving and/or corrupt the existing article text

Under real-world conditions with typical wiki content, WYSIWYG editing is more confusing and time consuming than the simple wiki-way of structure-oriented editing.

**wikEd** tries to bring together the best of both worlds in something also known as [WYSIWYM](https://zh.wikipedia.org/wiki/WYSIWYM "wikilink") – *what you see is what you mean*:

  - A simple (MS Word-like) user interface with advanced text editing features like search and replace (also good for learning the wiki code)
  - The structure-oriented classic text field, peppered up with syntax highlighting and on-page preview
  - Text editing without any popup forms

*See also:*

  - [What you see is Wiki - Questioning WYSIWYG in the Internet Age](http://www.i3g.hs-heilbronn.de/attach/Ver%C3%B6ffentlichungen/What+you+see+is+Wiki.pdf)

### wikEd design philosophy

The design philosophy of **wikEd** is:

  - Simple, small, and intuitive user interface (no navigation through complex menu structures, no popups, special buttons must be added as plugins)
  - Cross site compatibility between all [MediaWiki](../Page/MediaWiki.md "wikilink") installations (not only Wikipedia)
  - Multi-language support
  - Multi-browser support by using cross-browser standards-compatible code
  - Use of the browser-internal rich-text editor

<small>Please post bug reports or feature requests to the [**wikEd** discussion page](https://zh.wikipedia.org/wiki/User_talk:Cacycle/wikEd "wikilink").</small>

### Notes

[Category:维基百科工具](https://zh.wikipedia.org/wiki/Category:维基百科工具 "wikilink")

1.  此為參考文獻按鈕的示範。
2.