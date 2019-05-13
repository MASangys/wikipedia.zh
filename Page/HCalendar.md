**hCalendar**（**HTML
iCalendar**的縮寫）是一種[微格式標準](../Page/微格式.md "wikilink")，它采用[iCalendar格式](../Page/iCalendar.md "wikilink")，以語義[(X)HTML的形式](../Page/HTML.md "wikilink")，在網頁上表示一個事件的[日曆信息](../Page/日曆.md "wikilink")。

## 例子

考慮下面這個例子：

    　首屆中文維基年會
    　於2006年8月26日至27日
    　在香港舉行。
    （更多信息）

使用[HTML標記語言](../Page/HTML.md "wikilink")，形式如下：

    <nowiki>
    <p>
    　首屆中文維基年會
    　於2006年8月26日至27日
    　在香港舉行。
    　（<a href="http://zh.wikipedia.org/wiki/Wikipedia:2006年中文維基年會">更多信息</a>）
    </p>
    </nowiki>

我們可以使用[HTML元件中的](../Page/HTML元件.md "wikilink")`span`和[類中的](../Page/HTML#屬性.md "wikilink")`vevent`、`summary`、`dtstart`（開始日期），`dtend`（結束日期），`location`和`url`，將hCalendar[標記語言加入其中](../Page/標記語言.md "wikilink")。示意如下：

    <nowiki>
    <p class="vevent">
    　<span class="summary">首屆中文維基年會</span>
    　於<abbr class="dtstart" title="2006-08-26T14:00:00+06:00">2006年8月26日</abbr>
    　至<abbr class="dtend" title="2006-08-27T16:00:00+06:00">27日</abbr>
    　在<span class="location">香港</span>舉行。
    　（<a class="url" href="http://zh.wikipedia.org/wiki/Wikipedia:2006年中文維基年會">更多信息</a>）
    </p>
    </nowiki>

注意：`abbr`元件在表示開始結束時間時，要包含機器可讀的[ISO8601的日期時間格式](../Page/ISO8601.md "wikilink")。

## 參見

[微格式](../Page/微格式.md "wikilink") [hCard](../Page/hCard.md "wikilink")

[Category:微格式](https://zh.wikipedia.org/wiki/Category:微格式 "wikilink")