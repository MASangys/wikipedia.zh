****是一种专利文件格式，用于[数据压缩与归档打包](../Page/数据压缩.md "wikilink")，开发者为（，拉丁轉寫：Yevgeny
Lazarevich Roshal），RAR的全名是「**R**oshal **AR**chive」，即“罗谢尔的归档”之意。首个公开版本RAR
1.3发布于1993年。

尤金·羅謝爾，1972年3月10日生于[俄罗斯](../Page/俄罗斯.md "wikilink")。毕业于俄罗斯[车里雅宾斯克工业大学](https://zh.wikipedia.org/wiki/车里雅宾斯克工业大学 "wikilink")（Chelyabinsk
Technical
University，今），也是FAR文件管理器的作者。他开发程序压缩或解压RAR文件，最初用于[DOS](../Page/DOS.md "wikilink")，后来移植到其它平台。主要的[Windows版本编码器](https://zh.wikipedia.org/wiki/Windows "wikilink")，称为[WinRAR](../Page/WinRAR.md "wikilink")，以[共享软件的形式发行](https://zh.wikipedia.org/wiki/共享软件 "wikilink")。不过羅謝爾公开-{了}-解码器源码，UnRAR解码器许可证以不许发布编译RAR兼容编码器为条件下允许有条件自由发布与修改，而RAR编码器一直是有[专利的](../Page/专利.md "wikilink")。

最近的开发者是尤金·羅謝爾的胞兄亞歷山大·羅謝爾。虽然其解码器有专利，[编译好的解压程序仍然存在于若干平台](https://zh.wikipedia.org/wiki/编译 "wikilink")，例如开源的[7-Zip](../Page/7-Zip.md "wikilink")。

## 文件特点

  - RAR通常情况比[ZIP压缩比高](https://zh.wikipedia.org/wiki/ZIP_\(文件格式\) "wikilink")，但压缩／解压缩速度较慢。
  - 分卷压缩：压缩后分割为多个文件。
  - 固实压缩：把要压缩的视为同一个文件以加大压缩比，代价是取用包中任何文件需解压整个压缩包。
  - 恢复记录：加入冗余数据用于修复，在压缩包本身损坏但恢复记录够多时可对损坏压缩包进行恢复。
  - [加密](https://zh.wikipedia.org/wiki/加密 "wikilink")：RAR
    2.0使用[AES-128-cbc](../Page/高级加密标准.md "wikilink")，（rar5.0以后为AES-256CBC）。之前RAR的加密算法为私有。目前均未被直接攻破（至少没有公开），没有密码时-{只}-有[暴力破解](https://zh.wikipedia.org/wiki/暴力破解法 "wikilink")。

## 外部链接

  - [Official RAR site](http://www.rarlab.com/)
      - [Extras at official RAR
        site](http://www.rarlab.com/rar_add.htm)Freeware UnRAR for
        various platforms, including Eugene Roshal's source code
  - [UnRarX](http://www.unrarx.com/)开源软件，Mac OS X
  - [Unrarlib](http://www.unrarlib.org/)a library for decoding RAR
    (version 2) archives based on the Roshal's code, is
    [GPL](https://zh.wikipedia.org/wiki/GNU_General_Public_License "wikilink")
    compatible
  - [unrar](https://web.archive.org/web/20110517005339/https://gna.org/projects/unrar)
    – a simple [Free
    Software](https://zh.wikipedia.org/wiki/Free_Software "wikilink")
    unrar utility using Unrarlib above
  - [7-zip](http://www.7-zip.org/) an open source windows file archiver
    that supports unpacking (but not packing) RAR files, as well as
    other formats. (Note that the RAR unpacking part is not open source
    but under a proprietary "unRAR license").
  - [PeaZip](http://www.peazip.org/) Supports unpacking RAR files
  - [WinHKI](http://www.winhki.com/) Extract rar files

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink")
[Category:俄羅斯發明](https://zh.wikipedia.org/wiki/Category:俄羅斯發明 "wikilink")