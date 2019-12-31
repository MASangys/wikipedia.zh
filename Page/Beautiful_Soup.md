> 本文内容由[Beautiful Soup](https://zh.wikipedia.org/wiki/Beautiful_Soup)转换而来。


**Beautiful Soup**是一个[Python](../Page/Python.md "wikilink")包，功能包括解析[HTML](../Page/HTML.md "wikilink")、[XML](../Page/XML.md "wikilink")文档、修复含有未闭合标签等错误的文档（此种文档常被称为tag soup）。这个扩展包为待解析的页面建立一棵[树](../Page/树_\(数据结构\).md "wikilink")，以便提取其中的数据，这在网络数据采集时非常有用。\[1\]

该扩展包可用于Python 2.6+与Python 3。

## 示例代码

``` python
# Python 2.6+
# anchor extraction from html document
from bs4 import BeautifulSoup
import urllib2

webpage = urllib2.urlopen('https://en.wikipedia.org/wiki/Main_Page')
soup = BeautifulSoup(webpage,'html.parser')
for anchor in soup.find_all('a'):
    print(anchor.get('href', '/'))
```

## 参见

  - [HTML解析器对比](../Page/HTML解析器对比.md "wikilink")

## 参考资料

[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.