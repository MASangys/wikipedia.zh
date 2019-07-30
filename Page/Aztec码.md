[缩略图](https://zh.wikipedia.org/wiki/File:Azteccodeexample.svg "fig:缩略图") **Aztec码**（）也称**阿兹特克码**，是一种由和Robert Hussey于1995年发明的[二维条码](../Page/条形码.md "wikilink")。\[1\]该种条码1997年由公布。尽管Aztec码已获专利，但该专利已进入[公有领域](../Page/公有领域.md "wikilink")。\[2\]Aztec码也被发布为ISO/IEC 24778:2008标准。Aztec码的名称源自中心图案与的相似性。因为不需要边缘留白（静区），Aztec码可能比其他矩阵条码使用更少的空间。

## 结构

该种符号构筑在方形网格上，其中心有一个“牛眼”图案用以定位该码。数据围绕该牛眼图案做同心方形环状[编码](../Page/代码.md "wikilink")。中心的“牛眼”为9×9或13×13[像素](../Page/像素.md "wikilink")，并在周围的一行像素编码基本编码参数，产生一个11×11或15×15的核心（core）。而数据以层（layers）添加，每个层包含2环像素，总像素形成15×15、19×19、23×23等。

核心的边角存在方向标记，以支持图案被旋转或镜像时读取代码。解码从有三个像素的边角开始，然后顺时针到两个像素、一个像素、零个像素的边角。在中心的核心编码载有尺寸信息，所以不需要其他一些条码所需要的空白“静区”来标记代码边缘。

<File:Aztec> Code with desc.png|The core of the compact Aztec code (red ascending diagonal hatching), showing the central bulls-eye, the four orientation marks (blue diagonal cross-hatching), and space for 28 bits (7 bits per side) of coding information (green horizontal hatching). The first ring of data begins outside that (grey descending diagonal hatching). [File:Aztec_code_full_core.png|The](File:Aztec_code_full_core.png%7CThe) core of the full Aztec code. 40 bits are available between the orientation marks for encoding parameters. <File:Aztec> Encoding.svg|Message data is placed in a spiral pattern around the core. The mode message begins "01011100", indicating 01₂+1 = 2 layers, and 011100₂+1 = 29 data codewords (of 6 bits each).

## 编码

编码过程含如下步骤：

1.  将源消息转换为字符串位元
2.  计算必要的符号大小和模式消息，用以决定Reed–Solomon码字大小
3.  对消息为Reed–Solomon码字
4.  消息填充到码字边界
5.  追加检查码字
6.  围绕核心以螺旋形式排列完整信息

位元字符串与其他形式间的所有转换都根据[大端](../Page/字节序.md "wikilink")（重要位优先）约定执行。

### 字符集

所有8位元的值都可编码，另加上两个转义代码。

默认情况下，0–127的码遵循ANSI X3.4 ([ASCII](../Page/ASCII.md "wikilink"))解释，128–255遵循[ISO 8859-1](https://zh.wikipedia.org/wiki/ISO/IEC_8859-1 "wikilink"): Latin Alphabet No. 1解释。这对应ECI 000003。

### 模式消息

模式消息在消息中编码了层数（层数*L* 编码为整数*L*−1）和数据码字（codewords）数量（码字*D*编码为整数*D*−1）。剩余的码字用作检查码字。

### 位元补足

### 填充

### 检查码字

### 排布消息

## 使用

[缩略图](https://zh.wikipedia.org/wiki/File:OnlineTicket_DeutscheBahn_200dpi.png "fig:缩略图")

### 运输

阿兹特克码被广泛用于交通票务。

航空业（[IATA的](../Page/國際航空運輸協會.md "wikilink")[BCBP标准](../Page/登機證.md "wikilink")）已选择阿兹特克码用于电子登机牌。数家航空公司会向乘客的手机发送阿兹特克码作为登机牌。这通常与乘客手机上的[移动应用](https://zh.wikipedia.org/wiki/移动应用 "wikilink")（包括[Apple Wallet](../Page/Apple_Wallet.md "wikilink")）集成。

Aztec码也被用于铁路行业，包括[歐洲之星](../Page/歐洲之星.md "wikilink")、[德国铁路](../Page/德国铁路.md "wikilink")、[DSB](../Page/丹麦国家铁路.md "wikilink")、[捷克铁路](../Page/捷克铁路.md "wikilink")、、[意大利铁路](../Page/意大利铁路.md "wikilink")、[荷蘭鐵路](../Page/荷蘭鐵路.md "wikilink")、、[芬蘭鐵路](../Page/芬蘭鐵路.md "wikilink")、[維珍鐵路](../Page/維珍鐵路.md "wikilink")、[維亞鐵路](../Page/維亞鐵路.md "wikilink")、[瑞士聯邦鐵路](../Page/瑞士聯邦鐵路.md "wikilink")、[比利时国家铁路](../Page/比利时国家铁路.md "wikilink")和[法国国家铁路](../Page/法国国家铁路.md "wikilink")等公司用此支持线上销售门票，由客户打印或在手机屏幕上展示，由工作人员持手持扫描仪或通过旋转门扫描仪验证票证。

### 政府

[波兰的汽车登记文件中载有加密的摘要信息](https://zh.wikipedia.org/wiki/波兰 "wikilink")，该信息采用Aztec码编码。汽车保险公司可根据文件的数码照片自动填写相关信息，以加快保险理赔流程。

### 商业

[加拿大](../Page/加拿大.md "wikilink")许多[票据在使用这项技术](../Page/发票.md "wikilink")，包括、[蕭氏通訊](../Page/蕭氏通訊.md "wikilink")、等。

## 参考资料

## 外部链接

  - [2D barcodes at AIM Global](http://www.aimglobal.org/?page=matrix_symb)
  - [Aztec code specification (ISO/IEC 24778:2008)](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=41548)

[Category:條碼](https://zh.wikipedia.org/wiki/Category:條碼 "wikilink")

1.
2.   Click "images" then "correction" to see dedication to the public domain.