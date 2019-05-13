**FASTQ格式**是一种保存生物序列（通常为[核酸序列](../Page/核酸序列.md "wikilink")）及其测序质量得分信息的文本[格式](../Page/文件格式.md "wikilink")。序列与质量得分皆由单个[ASCII字符表示](../Page/ASCII.md "wikilink")。

该格式最初由开发，旨在将[FASTA格式序列及其质量数据整合在一起](../Page/FASTA格式.md "wikilink")。而目前，FASTQ格式已经成为了保存[高通量测序结果的事实标准](../Page/高通量测序.md "wikilink")。\[1\]

## 格式

FASTQ文件中，一个序列通常由四行组成：

  - 第一行以@开头，之后为序列的标识符以及描述信息（与FASTA格式的描述行类似）
  - 第二行为序列信息
  - 第三行以+开头，之后可以再次加上序列的标识及描述信息（可选）
  - 第四行为质量得分信息，与第二行的序列相对应，长度必须与第二行相同

以下为一个包含单个序列的FASTQ文件示例：

    @SEQ_ID
    GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
    +
    !''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65

其中\!为最低质量、\~则为最高质量。以下字符从左到右代表从低到高的质量得分的：

```
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
```

最初桑格研究所的FASTQ格式允许序列与质量信息分成多行保存。但一般不推荐采用这种方式，因为第一、第三行开头的@与+符号同样也可能出现在质量信息中，可能会造成信息提取的困难。

## 参见

  - [FASTA格式](../Page/FASTA格式.md "wikilink")

## 参考文献

[Category:生物信息学](https://zh.wikipedia.org/wiki/Category:生物信息学 "wikilink")
[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.