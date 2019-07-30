**C字串函式庫**是[C語言裡負責各種](https://zh.wikipedia.org/wiki/C語言 "wikilink")[字符串處理操作功能的](https://zh.wikipedia.org/wiki/字符串處理 "wikilink")[標準函式庫](../Page/C標準函式庫.md "wikilink")，例如：複製，連接，標記化和搜索等。

## 包含的函數

<table>
<thead>
<tr class="header">
<th></th>
<th><p>字元組字串</p></th>
<th><p>闊字串</p></th>
<th><p>描述[1]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>字符串<br />
處理</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strcpy"><code>strcpy</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcscpy"><code>wcscpy</code></a></p></td>
<td><p>複製字串內容</p></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strncpy"><code>strncpy</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsncpy"><code>wcsncpy</code></a></p></td>
<td><p>写一个n字节/ wchar_t到一个字符串，从给定的字符串复制或添加空值</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strcat"><code>strcat</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcscat"><code>wcscat</code></a></p></td>
<td><p>在字符串后边连接另一个字符串</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strncat"><code>strncat</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsncat"><code>wcsncat</code></a></p></td>
<td><p>从一个字符串到另一个字符串不超过n个字节/ wchar_t</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strxfrm"><code>strxfrm</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsxfrm"><code>wcsxfrm</code></a></p></td>
<td><p>根据当前语言环境转换字符串</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>字符串檢查</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strlen"><code>strlen</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcslen"><code>wcslen</code></a></p></td>
<td><p>傳回字符串的長度</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strcmp"><code>strcmp</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcscmp"><code>wcscmp</code></a></p></td>
<td><p>比較兩條字符串的內容</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strncmp"><code>strncmp</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsncmp"><code>wcsncmp</code></a></p></td>
<td><p>比较两个字符串中特定数量的字节/ wchar_t</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strcoll"><code>strcoll</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcscoll"><code>wcscoll</code></a></p></td>
<td><p>根据当前语言环境比较两个字符串</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strchr"><code>strchr</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcschr"><code>wcschr</code></a></p></td>
<td><p>在字符串中找到第一个出现的字节/ wcahr_t</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strrchr"><code>strrchr</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsrchr"><code>wcsrchr</code></a></p></td>
<td><p>查找字符串中最后一次出现的字节/ wchar_t</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strspn"><code>strspn</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsspn"><code>wcsspn</code></a></p></td>
<td><p>字符串中找到第一个出现的字节/ wcahr_t</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strcspn"><code>strcspn</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcscspn"><code>wcscspn</code></a></p></td>
<td><p>查找字符串中最后一次出现的字节/ wchar_t</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strpbrk"><code>strpbrk</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcspbrk"><code>wcspbrk</code></a></p></td>
<td><p>字符串中找到第一个出现的字节/ wcahr_t</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strstr"><code>strstr</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcsstr"><code>wcsstr</code></a></p></td>
<td><p>找到字符串中第一次出现的子字符串</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strtok"><code>strtok</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wcstok"><code>wcstok</code></a></p></td>
<td><p>分解字符串为一组字符串</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Miscellaneous</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/strerror"><code>strerror</code></a></p></td>
<td></td>
<td><p>通过标准错误的标号，获得错误的描述字符串</p></td>
</tr>
<tr class="even">
<td><p>Memory<br />
manipulation</p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/memset"><code>memset</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wmemset"><code>wmemset</code></a></p></td>
<td><p>将s所指向的某一块内存中的前n个 字节的内容全部设置为ch指定的ASCII值</p></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/memcpy"><code>memcpy</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wmemcpy"><code>wmemcpy</code></a></p></td>
<td><p>复制一个缓冲区到另一个</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/memmove"><code>memmove</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wmemmove"><code>wmemmove</code></a></p></td>
<td><p>将一个缓冲区复制到另一个缓冲区，可能重叠</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/memcmp"><code>memcmp</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wmemcmp"><code>wmemcmp</code></a></p></td>
<td><p>比较两个缓冲区</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="http://en.cppreference.com/w/cpp/string/byte/memchr"><code>memchr</code></a></p></td>
<td><p><a href="http://en.cppreference.com/w/cpp/string/wide/wmemchr"><code>wmemchr</code></a></p></td>
<td><p>在缓冲区中找到第一次出现的字节/ wchar_t</p></td>
<td></td>
</tr>
<tr class="odd">
<td><references group="note"/></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

  - 轉換函數

<!-- end list -->

  - [`mbtowc`](http://www.cplusplus.com/reference/clibrary/cstdlib/mbtowc) - converts the first multibyte character in a string to the matching wide character

  - [`wctomb`](http://www.cplusplus.com/reference/clibrary/cstdlib/wctomb) - converts a wide character to the matching multibyte character

## 參考資料

## 參看

  - for source code syntax, including backslash escape sequences.

  -
  - [Null-terminated string](../Page/C风格字符串.md "wikilink")

[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink") [Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink") [Category:字符串](https://zh.wikipedia.org/wiki/Category:字符串 "wikilink")

1.  描述內的**字串**可以指字元組字串或闊字串