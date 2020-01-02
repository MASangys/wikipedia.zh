> 本文内容由[HCalendar](https://zh.wikipedia.org/wiki/HCalendar)转换而来。


**hCalendar**（**HTML iCalendar**的縮寫）是一種[微格式](../Page/微格式.md "wikilink")標準，它采用[iCalendar格式](https://zh.wikipedia.org/wiki/iCalendar "wikilink")，以語義[(X)HTML的形式](../Page/HTML.md "wikilink")，在網頁上表示一個事件的[日曆信息](https://zh.wikipedia.org/wiki/日曆 "wikilink")。

## 例子

考慮下面這個例子：

    　首屆中文維基年會
    　於2006年8月26日至27日
    　在香港舉行。
    （更多信息）

使用[HTML](../Page/HTML.md "wikilink")標記語言，形式如下：

    <nowiki>
    <p>
    　首屆中文維基年會
    　於2006年8月26日至27日
    　在香港舉行。
    　（<a href="http://zh.wikipedia.org/wiki/Wikipedia:2006年中文維基年會">更多信息</a>）
    </p>
    </nowiki>

我們可以使用[HTML元件中的](https://zh.wikipedia.org/wiki/HTML元件 "wikilink")`span`和[類中的](https://zh.wikipedia.org/wiki/HTML#屬性 "wikilink")`vevent`、`summary`、`dtstart`（開始日期），`dtend`（結束日期），`location`和`url`，將hCalendar[標記語言加入其中](https://zh.wikipedia.org/wiki/標記語言 "wikilink")。示意如下：

    <nowiki>
    <p class="vevent">
    　<span class="summary">首屆中文維基年會</span>
    　於<abbr class="dtstart" title="2006-08-26T14:00:00+06:00">2006年8月26日</abbr>
    　至<abbr class="dtend" title="2006-08-27T16:00:00+06:00">27日</abbr>
    　在<span class="location">香港</span>舉行。
    　（<a class="url" href="http://zh.wikipedia.org/wiki/Wikipedia:2006年中文維基年會">更多信息</a>）
    </p>
    </nowiki>

注意：`abbr`元件在表示開始結束時間時，要包含機器可讀的[ISO8601的日期時間格式](https://zh.wikipedia.org/wiki/ISO8601 "wikilink")。

## 參見

[微格式](../Page/微格式.md "wikilink") [hCard](https://zh.wikipedia.org/wiki/hCard "wikilink")

[Category:微格式](https://zh.wikipedia.org/wiki/Category:微格式 "wikilink")