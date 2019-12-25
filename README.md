# wikipedia.zh

本项目目标是导出[维基百科](Page/维基百科.md)繁体中文内容。目前用的数据源版本是[20191201](https://dumps.wikimedia.org/zhwiki/20191201/)。由于图片数据量太大，没有直接在Github上显示，而是保留维基百科链接；分类(Category)词条无法获取属于该分类的词条列表，也换成了维基百科的链接。

一些已知问题：

* 部分词条在转换过程中报错
* 链接引用的位置不对，参考文献部分也有大量空白
* 未处理多语言的 wikitext 语法

本项目目前只有接受对 `Script` 目录的 PR，里面是 [pandoc](https://github.com/chinapedia/pandoc) 用到的过滤器脚本。也可以给 [mediawiki-to-gfm](https://github.com/chinapedia/mediawiki-to-gfm) 发 PR，改进数据生成工具。

如果你有意见或者建议，欢迎加入Telegram讨论群[Chinapedia](https://t.me/chinapedia)。
