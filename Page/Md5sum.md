**`md5sum`**是一种[计算机程序](../Page/计算机程序.md "wikilink")，用于计算与校验RFC 1321所描述的128位[MD5](../Page/MD5.md "wikilink")[哈希值](https://zh.wikipedia.org/wiki/散列函数 "wikilink")，此处MD5散列值（或校验和）作一个文件的数字指纹使用。

## 功能

理论上看，正如其他散列算法一样，一个MD5哈希值可对应无限个文件，但从现实的角度看，两个不同的文件几乎不可能有相同的[MD5](../Page/MD5.md "wikilink")哈希值，除非其创建便是刻意为之。一般来说，任何对一个文件的非恶意变更都会导致其MD5哈希值改变，因此`md5sum`一般用于检查文件完整性，尤其常用于检测在文件传输、磁盘错误或其他无恶意涉入的情况下文件的正确性。

## 隐患

`md5sum`虽适用于没有安全隐患下的文件校验，但由于原始的MD5算法安全性已遭质疑（参见[MD5算法弱点](https://zh.wikipedia.org/wiki/MD5#弱点 "wikilink")），所以当文件可能遭恶意改动的时候，就不应使用`md5sum`，而应以等求哈希值的工具代之。

## 分布

在多数[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")、[Linux](../Page/Linux.md "wikilink")与其他[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")或[兼容层](../Page/兼容层.md "wikilink")都默认安装了`md5sum`工具，而其他操作系统（包括[Microsoft Windows与](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[BSD](../Page/BSD.md "wikilink")的变体[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")）也有相似的工具。在FreeBSD上，有同样功用的工具名为`md5`，但其亦带有额外的特性。

## 示例

以linux下shell为环境示例，以下文件皆于同一目录下。

### 计算校验值并输出至hash.md5

``` bash
$ md5sum filetohashA.txt filetohashB.txt filetohashC.txt > hash.md5
```

#### 所得文件

文件内包括了哈希值和对应的文件名。

``` bash
$ cat hash.md5
595f44fec1e92a71d3e9e77456ba80d1  filetohashA.txt
71f920fa275127a7b60fa4d4d41432a3  filetohashB.txt
43c191bf6d6c3f263a8cd0efd4a058ab  filetohashC.txt
```

### 以MD5值校验文件

``` bash
$ md5sum -c hash.md5
filetohashA.txt: OK
filetohashB.txt: OK
filetohashC.txt: OK
```

注：在校验文件内，各个md5校验值与需比较的文件名间必须有两个空格，文件内换行也应为UNIX换行符（LF），否则无法进行。

### 检查单个MD5值

``` bash
$ echo "595f44fec1e92a71d3e9e77456ba80d1  filetohashA.txt" | md5sum -c
filetohashA.txt: OK
```

## 参见

  - [GNU Core Utilities](https://zh.wikipedia.org/wiki/GNU_Core_Utilities "wikilink")

  - [`cksum`](https://zh.wikipedia.org/wiki/cksum "wikilink")

  - [Cygwin](../Page/Cygwin.md "wikilink")

  -
  -

  -
  - [MD5](../Page/MD5.md "wikilink")

## 参考

  -
  -
  -
  - [Microsoft's File Checksum Integrity Verifier Utility](http://support.microsoft.com/kb/841290)

[Category:Unix安全相关软件](https://zh.wikipedia.org/wiki/Category:Unix安全相关软件 "wikilink") [Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink")