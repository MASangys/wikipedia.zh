**EICAR标准反病毒测试文件**，又称**EICAR测试文件**, 是由[欧洲反计算机病毒协会](../Page/欧洲反计算机病毒协会.md "wikilink")（EICAR）与[计算机病毒研究组织](https://zh.wikipedia.org/wiki/计算机病毒研究组织 "wikilink")（CARO）研制的文件, 用以测试[杀毒软件](../Page/杀毒软件.md "wikilink")的响应程度。不同于使用可能造成实际破环的实体恶意软件，该文件允许人们在没有计算机病毒的情况下测试杀毒软件。

杀毒软件的开发者将EICAR字符视为测试病毒，与其他鉴别标识相似。合格的病毒扫描器在发现文件时，会精确地采用相同方式处置，如同发现一个严重的病毒时那样。注意并非所有病毒扫描器是合格的，有些病毒扫描器会在精确识别后保留文件。

EICAR测试字符的用法要比直接测试灵活：包含EICAR测试字符的文件会被[压缩或者](../Page/数据压缩.md "wikilink")[存档](https://zh.wikipedia.org/wiki/存档 "wikilink")，并且杀毒软件会尝试删除压缩文件中的测试字符。

## 设计

这是一个仅有68或70[字节](../Page/字节.md "wikilink")的文本文件组成的可运行于[Microsoft Windows及类似环境](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（64位除外，如[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")）的，名为[COM文件的正常的](https://zh.wikipedia.org/wiki/COM文件 "wikilink")[可执行文件](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")。运行时，EICAR测试字符会输出“EICAR-STANDARD-ANTIVIRUS-TEST-FILE\!”并终止运行。测试字符被[设计为包含](https://zh.wikipedia.org/wiki/字母数字编码 "wikilink")[ASCII](../Page/ASCII.md "wikilink")可读字符的，容易为计算机键盘所生成。可用于[程序自修改以运行于某一影响实施于测试字符的执行的技术因素](https://zh.wikipedia.org/wiki/程序自修改 "wikilink")。

EICAR测试字符内容为：

  -

    \[1\]

## 参见

  - [GTUBE](https://zh.wikipedia.org/wiki/GTUBE "wikilink") – 大量不请自来的电子邮件（[垃圾邮件](https://zh.wikipedia.org/wiki/垃圾邮件 "wikilink")）的测试

## 参考资料

## 外部链接

  - [Official Site of the European Institute For Computer Antivirus Research](http://www.eicar.org)（与European Expert Group for IT-Security同样著名）
  - [Assembly-language analysis of the EICAR test file](http://thestarman.pcministry.com/asm/eicar/eicarcom.html)
  - [Let's have fun with EICAR test file](http://archive.cert.uni-stuttgart.de/bugtraq/2003/06/msg00251.html) – 详细信息与组件分析

[pl:Europejski Instytut Badań Wirusów Komputerowych\#Plik testowy EICAR](https://zh.wikipedia.org/wiki/pl:Europejski_Instytut_Badań_Wirusów_Komputerowych#Plik_testowy_EICAR "wikilink")

[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")

1.  <https://secure.eicar.org/eicar.com.txt>