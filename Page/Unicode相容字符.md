> 本文内容由[Unicode相容字符](https://zh.wikipedia.org/wiki/Unicode相容字符)转换而来。


當講解和談論[統一碼和](https://zh.wikipedia.org/wiki/Unicode "wikilink")[UCS時](https://zh.wikipedia.org/wiki/UCS "wikilink")，經常提到「**相容字符**」這個字眼。相容字符是指統一碼聯盟主張不要使用的圖像式字元，正如[統一碼聯盟](http://www.unicode.org/glossary/#compatibility_character)所說：

> 若不是為了與其他標準間相容和能夠雙向對應轉換，就不會在統一碼中編碼的字符。

然而，其定義實在遠比這話語有更深層和複雜的意味。每個字符都有一個**标准分解**（canonical decomposition）的屬性，可是大部分字符這個屬性的值是这个字符自身，但超過五千個字符的*标准分解*属性的值不是该字符自身。這個*标准分解*属性值能將相容字符對映到一個或多個的其他的非相容字符，並藉此定义这五千多个字符為統一碼中的**相容字符**。指定某字符為相容字符的理由各異，下面有更詳細的說明。「分解」這個用語有時會令人感到困惑，因為有些字符「分解」後還是單個字符的形態，這時該字符的分解值就是另一個相等或近似相等的字符。相容字符与其非空值的标准分解（语义上）是确切等价的。

如果一个相容字符可以用多个分解序列表示，那么采用了*标准顺序*（canonical order）的序列是该字符的*标准分解*。例如，ộ，有两种分解序列：（U+006F LATIN SMALL LETTER O） （U+0302 COMBINING CIRCUMFLEX ACCENT） （U+0323 COMBINING DOT BELOW）或者 （U+006F LATIN SMALL LETTER O） （U+0323 COMBINING DOT BELOW）（U+0302 COMBINING CIRCUMFLEX ACCENT），两个[附加符号](../Page/附加符号.md "wikilink")出现在分解序列中的位置是可交换的。

Unicode的另一个概念**相容性分解**（compatibility decomposition），是把一个相容字符映射为一個或多個的其他的非相容字符。但相容字符与相容性分解可能会有语义（如排版格式上）的损失。例如上角标数字字符⁴与普通的数字字符4。

Unicode的所有*预组合字符*（precomposed character）都是相容字符。即所有预组合字符都能够用其他字符或字符序列来表示。因此*预组合字符*的*标准分解*总是存在。具有不同于自身且不为空值的*标准分解*属性值的字符，称为*标准组合字符*（ canonical composite）。

## 相容字符種類和關鍵字

根据相容分解屬性的值，可將統一碼的 5,402 個字符分成 17 逻辑分类，並賦予其關鍵字。具有相容分解但沒有關鍵字的字符被稱作*標準可分解字符*，這些字符並不是相容字符。相容可分解字符的關鍵字包括： <initial>、<medial>、<final>、<isolated>、<wide>, <narrow>、<small>、<square>、<vertical>、<circle>、<noBreak>、<fraction>、<sub>、<super>和 <compat>。 這些關鍵字提供了一些訊息：包含相容字符和它的相容分解字符序列。 相容字符可分為以下三類：

1.  具有多个可选的字形的字符；以及對一些沒有完整的統一碼文本绘制能力的軟體或字型，含[附加符號已经组合好了的字符](https://zh.wikipedia.org/wiki/附加符號 "wikilink")（称为*预组字符*或*预组合字符*）。
2.  字符可能是從其它字集而來的，或是用於*[格式化文本](https://zh.wikipedia.org/wiki/格式化文本 "wikilink")*（Formatted text）而非純文本的字符。
3.  一些其它字符是視覺上相似但語意上不同。

因為這些語意上不同的字符有可能會使用相似的字形，文書處理軟體應該向使用者指示出其可能的混淆。當比較和排序文本字符串時，同一字符的不同字形或[格式化文本的不同版本不应该改变文本处理结果](https://zh.wikipedia.org/wiki/格式化文本 "wikilink")。例如，軟體使用者可能會困惑，在尋找一頁中的大寫字母“I”时，軟體無法找到在視覺上相似的羅馬數字“Ⅰ”（二者是*相容等价*，但不是*标准等价*）。

## 相容對應的種類

### 字形代換和组合

對於遵循統一碼標準的文字處理和顯示軟體來說，有些相容字符是不必要的。這些包含：

  - **[合字](../Page/合字.md "wikilink")**：在拉丁字母老旧的字符集中，合字如‘ffi’经常被作为一个字符来编码。Unicode的方法是把合字当作一种文本绘制的艺术，编码时用普通字母-{序列}-来代替。
  - **預组合的羅馬數字**

譬如，羅馬數十二（“Ⅻ”：U+216B）可以分解成一個羅馬數十（“Ⅹ”：U+2169）和兩個羅馬數一 (‘Ⅰ’: U+2160)。Unicode认为字符序列'U+2169 U+2160 U+2160'是否被组合为单个字符'Ⅻ'，这是文本绘制软件要处理的问题。

  - **預组合的分數**：这些预组合字符具有<fraction>关键字。完全遵从Unicode规范的文本处理器应当绘制字符¼ (U+00BC)完全同于字符序列1⁄4 (数字1、分数斜线U+2044、数字4).
  - **預组合的變音字母**.

如 Å（U+00C5），統一碼傾向視為兩個分開的字符，一個拉丁字母 A （“Latin letter A”）結合一個“Combining Ring Above”（U+030A）。

  - **依上下文环境而變的字形**：主要出现在[阿拉伯文中](https://zh.wikipedia.org/wiki/阿拉伯文 "wikilink")。使用具有字形替换能力的字体，如OpenType、TrueTypeGX，遵从Unicode规范的软件能把出现在不同上下文环境（词的开头、词的中部、词的结尾、单独使用）的同一字符替换为适当的字形来绘制。这种字形替换能力对于垂直文本绘制的东亚语言也是必需的。

总结而言，上述的预组合的字符的使用是不必要的，应该用普通字符的序列来表示这些预组合的字符；由遵从Unicode规范的字体或者文本绘制软件来决定选用哪个字形。

Unicode字符集（即UCS）, Unicode字符的属性、Unicode算法为文本处理软件实现提供了所需的一切来适当地绘制处于*分解等价*状态的字符。因此那些*分解相容字符*变成了冗余与不必要。字符集中*分解相容字符*的存在导致了文本处理时额外的代价用于正确地比较、排序（参见*[統一碼等價性](https://zh.wikipedia.org/wiki/統一碼等價性 "wikilink")*）。此外，*分解相容字符*并没有提供补充的或不同的语义。*分解相容字符*也没有提供绘制时视觉上的不同，如果文本布局与字体遵循Unicode规范。*分解相容字符*也不是与其他字符集往返转换所需要的，因为可以把一个字符集的分解字符序的列来映射到另一字符集的预组合的字符。 上下文中字形选择，如阿拉伯字母可以根据它在单词内的位置而映射到传统字符集的具有特定字形的某个字符上。

为了处理相容字符，文本软件必须遵从几个Unicode协议。软件必须能够：

  - 从字母字符与一个或多个单独的*[附加符号](../Page/附加符号.md "wikilink")*组合出[变音字母字符](https://zh.wikipedia.org/wiki/变音字母 "wikilink")；
  - 根据用户的判断，替换出[合字](../Page/合字.md "wikilink")或上下文相关的字形变种；
  - 根据用户的判断，CJVK文本垂直布局时，把字形替换为小的、垂直的、窄的、宽方块等字形变种；
  - 使用*分数斜线*字符 (⁄ U+2044)与其它任意字符来组合出分数的字形。
  - 能把[组合字符](https://zh.wikipedia.org/wiki/组合字符 "wikilink")（Combining character）正确绘制到其前的普通字符上。例如把表示现金的长斜线组合字符‘Combining Long Solidus Overlay’ ( ̸ U+0338)加到其它字符上，如∄

Unicode的5,402个相容字符中，上述这些不应该使用在文本中的字符共计3,779个。这包括所有具有关键字 <initial>、<medial>、<final>、<isolated>、<wide>, <narrow>、<small>、<square>、<vertical>、<fraction>的相容字符。还包括大多数具有<compat>关键字的相容字符（例外情况是有<compat>关键字的被封闭的字母数字、被封闭的象形文字、以及下文所提及)

### 格式化文本所用的相容字符

用于[格式化文本的相容字符](https://zh.wikipedia.org/wiki/格式化文本 "wikilink")，不是Unicode与UCS所考虑的目标。格式化文本所用的相容字符，可能与普通字符在语义上有出入。例如，作为上角标的数字4，与普通字符数字4，可能语义上不完全等价。

格式化文本相容字符包括：

  - [数学字母数字符号](../Page/数学字母数字符号.md "wikilink")：拉丁字母、希腊字母、阿拉伯数字的字符，有14种不同的字体，用于数学文本。
  - 被封闭的字母、数字、象形文字。如：⑪ ⑫ ⒄ ⒅ ⒌ ⒍ ⒲ ⒳ Ⓐ Ⓑ
  - 不同宽度的空格与不换行空格。这些字符是核心的空格符(U+0020)与[不换行空格](../Page/不换行空格.md "wikilink")符(U+00A0)的变种。 如*不换行窄空格*（Narrow No-Break Space, U+202F）、*[词连接](https://zh.wikipedia.org/wiki/词连接 "wikilink")*（Word joiner, U+2060）。
  - 上角标、下角标字符。这里包括[国际音标所用的那些看似是上下角标的字符](https://zh.wikipedia.org/wiki/国际音标 "wikilink")。这里所指是拉丁字母、希腊字母、数字作为上下角标的字符。
  - CJK定义的全宽拉丁字母、阿拉伯数字，以及半宽日文、韩文字母。在Unicode的[Half-width and Fullwidth Forms块中](https://zh.wikipedia.org/wiki/全角和半角 "wikilink")，U+FF00至U+FFEF。

格式化文本相容字符共有1,451个，包括所有具有关键字<circle>与<font>（除了下文列出3个语义不同的例外），11个空格符的变种具有关键字<compat>，具有关键字<superscript>或<subscript>的定义在基本多语言平面的“上标及下标”块中的字符。 定义在U+2100至U+214F定义的Letterlike Symbols块中的字符，都是具有字体格式的相容字符。

### 語意上相異字符

Unicode对于用于科学或数学的希伯来字母、希腊字母符号，作为相容字符定义。如：

  - 希伯来字母符号：alef (ℵ U+2135), bet (ℶ U+2136), gimel (ℷ U+2137), dalet (ℸ U+2138)
  - 希腊字母符号：beta (ϐ U+03D0), theta (ϑ U+03D1), phi (ϕ U+03D5), pi (ϖ U+03D6), kappa (ϰ U+03F0), rho (ϱ U+03F1), 大写theta (ϴ U+03F4)

6个作为度量单位的相容字符，Unicode建议使用其等价分解的字符序列：

  - Angstrom (，应该用 )
  - Ohm (, 应该用)
  - Kelvin (, 应该用)
  - Fahrenheit (， 应该用与)
  - Celsius (，应该用与)
  - Micro Sign (，应该用)

Unicode规定了22个类似字母的相容字符。

  - 基于希腊字母的: lunate epsilon (ϵ U+03F5), lunate sigma (ϲ U+03F2), capital lunate sigma (Ϲ U+03F9), upsilon with hook (ϒ U+03D2)
  - 数学常量： Euler constant (ℇ U+2107), Planck constant (ℎ U+210E), reduced Planck constant (ℏ U+210F),
  - 货币符号: rupee sign (₨ U+20A8), rial sign (﷼ U+FDFC)
  - 标点符号: one dot leader (U+2024), no-break space (U+00A0), non-breaking hyphen (U+2011), Tibetan mark delimiter tsheg bstar (U+0F0C)
  - 其它类字母符号: information source (ℹ U+2139), account of (℀ U+2100), addressed to the subject (℁ U+2101), care of (℅ U+2105), cada una (℆ U+2106), numero (№ U+2116), telephone sign (℡ U+2121), facsimile sign (℻ U+213B), trademark (™ U+2122), service mark (℠ U+2120)

一些语言中，语义与字形的位置有关的字符，共计130个。

罗马数字：

  - 大写罗马数字7个：1 (Ⅰ U+2160), 5(Ⅴ U+2164), 10(Ⅹ U+2169), 50(Ⅼ U+216C), 100 (Ⅽ U+216D), 500 (Ⅾ U+216E), 1000 (Ⅿ U+216F)

  - 小写罗马数字7个：1 (ⅰ U+2170), 5(ⅴ U+2174), 10(ⅹ U+2179), 50(ⅼ U+217C), 100(ⅽ U+217D), 500 (ⅾ U+217E) ，1000 (ⅿ U+217F)

  - 预组合罗马数字18个：2–4, 6–9, 11–12的大小写版本。

  -
## 相容块

Unicode编码空间的几个字符块，都是或大部分是相容字符。

但是在“CJK Compatibility Ideographs”块中，包含一些不是相容字符的字符：

1.  (U+FA0E): 﨎
2.  (U+FA0F): 﨏
3.  (U+FA11): 﨑
4.  (U+FA13): 﨓
5.  (U+FA14): 﨔
6.  (U+FA1F): 﨟
7.  (U+FA21): 﨡
8.  (U+FA23): 﨣
9.  (U+FA24): 﨤
10. (U+FA27): 﨧
11. (U+FA28): 﨨
12. (U+FA29): 﨩

还有一个字符U+FA23「﨣」与U+27EAF「𧺯」重复定义。

类似情況在希伯来语、阿拉伯语也有。

## 規範化

統一碼要求軟體在進行比較或校正文句時，需要先經過相容分解，這個過程稱作規範化。這是做一些相似運算時所必須的動作，如當一個使用者進行“不區分大小寫”或“不區分附加符號的字母”的搜尋時。典型的規範化是指不會改變底層儲存的資訊（無失真）。然後，有些軟體可能會造成永久的改變，如在文件內容中刪除標準的或非標準的相容字符（失真）。

## 參考

## 外部連結

  - [漢字的標準化 － 中國哲學書電子化計劃](http://ctext.org/faq/normalization/zh) － 說明如何處理統一碼相容字符所帶來的困難。

[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")