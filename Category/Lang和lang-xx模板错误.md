> 本文内容由[Category:Lang和lang-xx模板错误](https://zh.wikipedia.org/wiki/Category:Lang和lang-xx模板错误)转换而来。


本分类用于追踪和模板错误，仅供[Module:Lang使用](https://zh.wikipedia.org/wiki/Module:Lang "wikilink")。

## 错误消息

在撰写本文时（2018年8月8日），[Module:Lang正在开发以整合](https://zh.wikipedia.org/wiki/Module:Lang "wikilink")和许多模板。作为其中一部分，当模板参数使用不当或指定给参数的数据格式错误时，模块现在会发出错误消息。错误消息的格式如下：

  -
    \[\<\>\] <错误消息>（帮助链接）

其中\<\>是提供给模板并在没有适当的HTML标记的情况下呈现的文本。错误消息在此处定义：

<table>
<caption>错误消息定义</caption>
<thead>
<tr class="header">
<th><p>错误消息</p></th>
<th><p>模板</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">缺少语言标签</span></p></td>
<td></td>
<td><p><code>{{{1}}}</code> is empty; this parameter is required</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>in the template's module <code>{{#invoke:}}</code> is empty</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">无法识别的语言标签：<tag></span></p></td>
<td></td>
<td><p>where <tag> is the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the tag is malformed or not listed in the module's data set. You must use a valid IETF language tag.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">无法识别的语言代码：<code></span></p></td>
<td></td>
<td><p>where <code> is the first subtag (the base language code) in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the <code> subtag is malformed or not listed in the module's data set. You must use a valid IETF language tag.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">无法识别的文本：</p>
<script>
<p>用于代码：<code></span></p></td>
<td></td>
<td><p>where <code></p>
<script>
<p></code> is the second subtag and <code> is the first subtag in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the script subtag is malformed or not listed in the module's data set.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">无法识别的地区：<region>用于代码：<code></span></p></td>
<td></td>
<td><p>where <region> is the third (or second if script omitted) subtag and <code> is the first subtag in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the region subtag is malformed or not listed in the module's data set.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">未识别的变体：<variant></span></p></td>
<td></td>
<td><p>where <variant> is the last subtag in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the variant subtag has proper form (4 digits or 5–8 alphanumeric characters) but is not listed in the module's data set.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">未识别的变体：<variant>用于代码：<code></span></p></td>
<td></td>
<td><p>where <variant> is the last subtag and <code> is the first subtag in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the variant subtag is a valid variant subtag but is not valid when used with the <code> subtag.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">未识别的变体：<variant>用于代码-文本对<code>-</p>
<script>
<p></span></p></td>
<td></td>
<td><p>where <variant> is the last subtag and <code><code>-</p>
<script>
<p></code> is the first and second subtags in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the variant subtag is a valid variant subtag but is not valid when used with the <code><code>-</p>
<script>
<p></code> subtags.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">无文本</span></p></td>
<td></td>
<td><p><code>{{{2}}}</code> is empty; this parameter is required</p></td>
</tr>
<tr class="even">
<td></td>
<td><p><code>{{{1}}}</code> is empty; this parameter is required – this error message often occurs when a  template used when an  template is intended. This error can also occur if there is an equals sign (=) in the foreign-language text; use  if an equals sign is needed.</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">文本有斜体标记</span></p></td>
<td></td>
<td><p>– <code>text</code> has italic markup; use  to control italics in the rendering; accepted parameter values are <code>yes</code>, <code>no</code>, <code>unset</code>, and <code>default</code>; see <a href="https://zh.wikipedia.org/wiki/#italic_markup_errors" title="wikilink">§italic markup errors</a>.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">文本有格式不正确的标记</span></p></td>
<td></td>
<td><p><code>text</code> has invalid wiki markup (<code>''''</code> or <code>''''''</code> or more apostrophes). This message also appears when there are five apostrophes (a previous editor wanted bold and italic); remove two apostrophes on each side, since the template italicizes automatically. If the text within the template ends with an apostrophe, use <code>'</code>.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">冗余文本标签</span></p></td>
<td></td>
<td><p>both the script subtag in  in the template's module <code>{{#invoke:}}</code> and  have assigned values; this error message indicates that (at present) only one of these is allowed.</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%" class="error">冗余区域标签</span></p></td>
<td></td>
<td><p>both the region subtag in  in the template's module <code>{{#invoke:}}</code> and  have assigned values; this error message indicates that (at present) only one of these is allowed.</p></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">冗余变体标签</span></p></td>
<td></td>
<td><p>both the variant subtag in  in the template's module <code>{{#invoke:}}</code> and  have assigned values; this error message indicates that (at present) only one of these is allowed.</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%" class="error">代码/文本失配： <code> /</p>
<script>
<p></span></p></td>
<td></td>
<td><p>where <code> is the <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a> specified in parameter  in the template's module <code>{{#invoke:}}</code> and</p>
<script>
<p>is the content of the template's  parameter. If an IETF script subtag is part of <code>,  is superfluous; however, templates should not 'hard code' a script in its language code; this is especially important for languages that use more than one script.</p></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">冲突：{{{1}}} 和 text{{=}}</span></p></td>
<td></td>
<td><p>this error occurs when positional and named parameters are used together</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%" class="error">冲突：{{{2}}} 和 translit{{=}}</span></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">冲突：lit{{=}} 和 translation{{=}}</span></p></td>
<td></td>
<td><p>only one of these aliases is permitted</p></td>
</tr>
<tr class="even">
<td><p><span style="font-size:100%" class="error">冲突：links{{=}} 和 link{{=}}</span></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="font-size:100%" class="error">文本：</p>
<script>
<p>不支持代码：<code></span></p></td>
<td></td>
<td><p>where <code></p>
<script>
<p></code> is the second subtag or script{{=}}, and <code> is the first subtag in the specified <a href="https://zh.wikipedia.org/wiki/IETF_language_tag" title="wikilink">IETF language tag</a>; this error message indicates that the script subtag is not allowed (suppressed) when used with code; script may be safely omitted.</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 斜体标记错误

<span style="font-size:100%" class="error">文本有斜体标记</span>错误通常出于以下原因：

1.  `text`中的文字包含多个字母系统
      -
        在此例中，古希腊语有拉丁文字转译
          -
            `{{lang-grc|Ἀθῆναι, ''Athênai''}}`
        上述应重写为
          -
            `{{lang-grc|Ἀθῆναι|translit=Athênai}}` →
        A similar condition may exist for languages that have multiple writing systems, where the second is not a transliteration of the first but the actual text as written in the 'other' writing system. For such templates, consider writing:
          -
            `{{lang-xx|<first text>|italic=<yes|no>|rtl=<yes|no>}} {{lang|xx|<second text>}}`
2.  `text`包含斜体标记以重写 模板设定的默认斜体标记（请参阅模板文档 §用法 部分中的设置框 ）
      -

          -
            `{{lang-sco|''Dumbairton''}}` – 'Dumbairton' 是一个适当的名称，所以不应该用斜体
            上述应重写为
              -
                `{{lang-sco|Dumbairton|italic=no}}` →

        for languages like Kurdish that use more than one script and where the template default is to italicize

          -
            `{{lang-ku|هه‌ڵپه‌ركێ}}` – `text` holds a script that should not be italicized
            the above should be rewritten:
              -
                `{{lang-ku|هه‌ڵپه‌ركێ|italic=no|rtl=yes}}` →
                  -
                    (it is prudent to set  to `yes` or `no` so that the template includes the correct html markup in the rendering)

        when `text` holds Latin transliterations of right-to-left languages like Arabic (no Arabic script), consider setting  so that the template removes the default right-to-left html markup from the rendering and automatically renders in italics:

          -
            `{{lang-ar|''min sallaf es-sabt lāqā el-ḥadd qiddāmūh''}}`
            the above could be rewritten:
              -
                `{{lang-ar|min sallaf es-sabt lāqā el-ḥadd qiddāmūh|script=Latn}}` →
            but, consider using the perhaps more semantically correct  instead:
              -
                `[[Romanization_of_Arabic|Arabic]]: ''{{transl|ar|min sallaf es-sabt lāqā el-ḥadd qiddāmūh}}''` → [Arabic](https://zh.wikipedia.org/wiki/Romanization_of_Arabic "wikilink"): **
3.  `text` includes italic wiki markup to 'turn off' italics for an inserted English-language conjunction between two non-English words or phrases:
      -
        in this example, an English-language conjunction, 'or', is inserted between two Lithuanian phrases; English is not Lithuanian so does not belong inside of the  template:
          -
            `{{lang-lt|Rusijos lietuvių seimas Petrograde'' or ''Visos Rusijos lietuvių seimas}}`
        the above should be rewritten:
          -
            `{{lang-lt|Rusijos lietuvių seimas Petrograde}} or {{lang|lt|Visos Rusijos lietuvių seimas}}` →  or
4.  When the template is  or ...}}, consider removing the template; this is the English Wikipedia, it is not usually necessary to identify English text in the English Wikipedia as being English.
5.  Sometimes the inclusion of italic markup is just wrong.
      -
        For example, Cyrillic text is generally not to be rendered in italic font; see [MOS:FOREIGNITALIC](https://zh.wikipedia.org/wiki/MOS:FOREIGNITALIC "wikilink").
          -
            `{{lang-uk|''Українська Народна Міліція''}}`
        the above should be rewritten:
          -
            `{{lang-uk|Українська Народна Міліція}}` →