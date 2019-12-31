> 本文内容由[COBOL](https://zh.wikipedia.org/wiki/COBOL)转换而来。


****（），其名稱來自於**通用商業語言**\[1\]（，又譯為**面向常規業務型語言**/**常規商業信息處理語言**）的[縮寫](../Page/縮寫.md "wikilink")，是最早的高階程式語言、以及是世界上最早實施[標準化的](https://zh.wikipedia.org/wiki/標準化 "wikilink")[計算機語言之一](https://zh.wikipedia.org/wiki/計算機語言 "wikilink")。屬於[編譯語言](https://zh.wikipedia.org/wiki/編譯語言 "wikilink")。

## COBOL的历史

1959年5月，五角大廈委託[葛麗絲·霍普](../Page/葛麗絲·霍普.md "wikilink")博士領導一個委員會，制定了COBOL語言的標準，並於1961年由美國數據系統語言協會公布。正式發布於1960年4月，稱為Cobol－60，現在最新的版本是Cobol－2002。COBOL最早是以[葛麗絲·霍普](../Page/葛麗絲·霍普.md "wikilink")開發的語言為範本。值得注意的是，葛麗絲·霍普並不是發明COBOL的六人組成員之一。1959 年，在紐約曼哈頓的雪梨荷蘭酒店， 和其他 5 位程序員封閉兩週，幾乎是無晝夜地開發，完成了 COBOL 的大部分設計。\[2\]

1963年，[美國國家標準學會进行了标准化](https://zh.wikipedia.org/wiki/美國國家標準學會 "wikilink")，但是ANSI标准很少被遵循；因此，COBOL程序只是部分可移植的。

## COBOL的重要性

经过40多年的不断修改、丰富完善和标准化，COBOL已发展为多种版本的庞大语言，在财会工作、统计报表、计划编制、情报检索、人事管理等数据管理及商业数据处理领域，都有着广泛的应用。

COBOL主要是应用于金融和会计行业等非常重要的商业数据处理领域，即使 COBOL 多年來被視為過時的語言，但是目前大多數的金融業核心系統仍多半使用COBOL，除了舊有系統太龐大修改不易外，COBOL 平台的穩定性也是它生命一直超過預期延續的重要原因。

## COBOL的特点

COBOL是一種面向數據處理的、面向文件的、[面向過程](https://zh.wikipedia.org/wiki/面向過程 "wikilink")（）的高級編程語言，是一種功能很強而又極為冗長的語言。

COBOL适合于具有循环处理周期的环境（例如打印工资支票）以及数据操纵量相当大的环境。COBOL主要应用于商业数据处理领域，对各种类型的数据进行 收集、存儲、傳送、分類、排序、計算及打印報表、輸出圖像是它的強項。

COBOL语法与英文很接近，即使不懂电脑的人也能看懂程序。

強大的文件處理功能，大量的數據通常以文件的形式存儲在磁盤上。

仅提供了加、减、乘、除及乘方这五种简单的算术运算，因而不适于进行科学计算。

未来的COBOL将支持XML等Web时代的新技术。

## COBOL的程序结构

COBOL程序由4部（DIVISION）组成：IDENTIFICATION DIVISION.（标识部）、ENVIRONMENT DIVISION.（环境部）、DATA DIVISION.（数据部）、 PROCEDURE DIVISION.（过程部），而每个部又由若干节（SECTION）组成。

### IDENTIFICATION DIVISION.

「PROGRAM-ID」（程序識別ID）、「AUTHOR」（作者名）、「DATE-WRITTEN」（編寫日期），這些並不直接影響程序的執行，而是程序的註釋 信息。程序註釋可以採用任何語言書寫，COBOL編譯器可以接受。

### ENVIRONMENT DIVISION.

用于记载程序可以被运行的计算机环境。“ENVIRONMENT DIVISION.”部包括“CONFIGURATION SECTION”环境节和“INPUT-OUTPUT SECTION”输入输出节。

### DATA DIVISION.

用于定义和声明程序所要使用的变量及其他数据。程序要使用的全部变量和数据必须在这里定义。“DATA DIVISION.”部主要包含“FILE SECTION.”和“WORKING-STORAGE SECTION.”节。

如果程序要通过参数接收数据，那么使用“LINKAGE SECTION”来声明。

#### COBOL的数据种类

COBOL程序的数据，主要有以下3种：

  - 变量（Variables）
  - 常量（Literals）
  - 表意常量（FigurativeConstants）变量和常量自不必说，说说表意常量。使用有特定意思的多个词组合成一个常量的代名词。好处是便于编码人员识别。比如：HIGH-VALUES、LOW-VALUES等可以表达一定意思的名称作为常量代名词。

#### COBOL变量类型

COBOL的基本变量类型，有以下三种：

  - 数值型（Numeric）
  - 英文字符型（AlphaNumeric）
  - 英文字符串型（Alphabetic）

### PROCEDURE DIVISION

用于容纳程序的实际处理代码。需要传入参数时，采用“PROCEDURE DIVISION USING引数名\[，参数名...\]”的方式。

因為前3個DIVISION都是註釋，卻又必須，只到第4個DIVISION「PROCEDURE DIVISION」才真正涉及程序代碼，這樣的繁瑣規定使得COBOL被批評為太過冗長。但是，基於這樣的4個DIVISION的明確記述等的嚴格形式，COBOL也被公認是可讀性強的語言。另外，COBOL的保留字數量龐大，字數過長的保留字太多是COBOL的特徵之一。

## 参考文献

{{-}}

[Category:程序設計語言](https://zh.wikipedia.org/wiki/Category:程序設計語言 "wikilink")

1.
2.