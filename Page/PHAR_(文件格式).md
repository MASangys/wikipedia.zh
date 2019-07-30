在[软件](../Page/软件.md "wikilink")中，PHAR（PHP归档）文件是一种[打包格式](../Page/软件包格式.md "wikilink")，通过将许多[PHP](../Page/PHP.md "wikilink")代码文件和其他资源（例如[图像](https://zh.wikipedia.org/wiki/图像 "wikilink")，[样式表](../Page/样式表.md "wikilink")等）捆绑到一个归档文件中来实现应用程序和库的分发。\[1\]

PHAR文件可以是三种格式之一：[tar和](https://zh.wikipedia.org/wiki/tar "wikilink")[ZIP](../Page/ZIP格式.md "wikilink")（它们与各自的工具相兼容），以及自定义的PHAR格式。无论使用何种格式，所有PHAR文件都使用`.phar`作为[文件扩展名](../Page/文件扩展名.md "wikilink")。使用标准的tar和zip应用程序可以创建和解压缩Tar和Zip格式的归档，而PHAR格式的归档需要使用自己写的PHP代码（利用[PHP的PHAR扩展](https://php.net/phar)）或者使用[PEAR](../Page/PEAR.md "wikilink")的[PHP归档包](http://pear.php.net/package/PHP_Archive)来创建和提取。

## 历史

受到Java的[JAR文件格式的影响](../Page/JAR_\(文件格式\).md "wikilink")\[2\]，PHAR文件格式创建于2004年，目的在于加快通过FTP部署应用程序的速度\[3\]。使用更简单的tar格式而不是使用ZIP文件格式，而使用tar命令行程序创建第一个PHAR文件作为概念验证\[4\]。2004年6月14日，最初的PHP归档包提交给PEAR，并于2004年12月13日被一致接受\[5\]\[6\]。

### PHAR扩展

在2007年，PHP归档包被移植到[C并作为一个](https://zh.wikipedia.org/wiki/C语言 "wikilink")[PEAR](../Page/PEAR.md "wikilink")扩展发布。这个扩展于PHP 5.3.0版本开始集成于PHP内核并且默认被启用。\[7\]\[8\]\[9\]

## 设计

PHAR文件允许使用Tar，Zip或者PHAR格式的归档。 无论格式如何，每个归档都包含三个部分：

1.  存根(Stub) —— 一个可以引导归档的PHP文件。存根必须包含`__HALT_COMPILER();`语句，并且默认存根拥有在不启用PHAR扩展的情况下运行PHAR文件的能力。\[10\]
2.  清单 —— 清单详细说明了存归档的内容。
3.  文件内容 —— 归档中包含的原始文件

另外，PHAR格式还可以包括用于验证PHAR完整性的签名。

### 清单

清单包含有关归档的元数据信息及其内容。二进制格式旨在高效地解析PHP和C。它由固定长度的段组成，除了长度规格对之后是可变长度段\[11\]。 每个文件在全局清单的一段中都有自己的清单。 目前的格式是版本1.1.1。

### 压缩

所有的3种格式都支持压缩，但只有PHAR格式同时支持每个文件和整个归档的压缩。Zip和Tar格式分别只支持每个文件压缩和整个文件压缩。

### 执行PHAR文件

假设启用了PHAR扩展，所有格式的PHAR文件可以通过执行PHP解释器("`php file.phar`")来执行。 如果没有启用PHAR扩展，则只能执行PHAR格式的PHAR文件。

此外，可以将PHAR文件标记为可执行文件，并添加适当的[shebang以让PHAR可以直接执行](https://zh.wikipedia.org/wiki/shebang "wikilink")。

## 使用情况

尽管PHAR最初是为Web用途而设计的，但它经常被用作命令行工具使用。 以PHAR格式分发的流行应用程序包括[Composer和](../Page/Composer_\(軟體\).md "wikilink")。

## 参考文献

## 外部链接

  - [PHAR文件格式](http://php.net/manual/en/phar.fileformat.phar.php)
  - [PHAR文档](http://php.net/manual/en/book.phar.php)
  - [PHP归档PEAR包](http://pear.php.net/PHP_Archive)
  - [PHAR扩展 (PECL)](http://pecl.php.net/phar)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")

1.

2.

3.
4.
5.

6.

7.

8.

9.

10.

11.