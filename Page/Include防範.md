> 本文内容由[Include防範](https://zh.wikipedia.org/wiki/Include防範)转换而来。


在[C和](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")程式語言中，**\#include防範**，有時被稱作**巨集防範**，用於處理`#include` [指令時](https://zh.wikipedia.org/wiki/編譯器指導指令 "wikilink")，可避免**重複引入**的問題。在[標頭檔加入](https://zh.wikipedia.org/wiki/標頭檔 "wikilink")\#include防範是一種讓檔案[等冪的方法](https://zh.wikipedia.org/wiki/等冪 "wikilink")。

## 重複引入

以下的C語言程式展示了缺少\#include防範時會出現的問題：

  - 檔案「grandfather.h」

<!-- end list -->

``` c
struct foo {
    int member;
};
```

  - 檔案「father.h」

<!-- end list -->

``` c
#include "grandfather.h"
```

  - 檔案「child.c」

<!-- end list -->

``` c
#include "grandfather.h"
#include "father.h"
```

此處**child.c**間接引入了兩份**grandfather.h**[標頭檔中的內容](https://zh.wikipedia.org/wiki/標頭檔 "wikilink")。明顯可以看出，`foo`結構被定義兩次，因此會造成編譯錯誤。

## 使用\#include防範

  - 檔案「grandfather.h」

<!-- end list -->

``` c
#ifndef H_GRANDFATHER
#define H_GRANDFATHER

struct foo {
    int member;
};

#endif
```

  - 檔案「father.h」

<!-- end list -->

``` c
#include "grandfather.h"
```

  - 檔案「child.c」

<!-- end list -->

``` c
#include "grandfather.h"
#include "father.h"
```

此處**grandfather.h**第一次被引入時會定義巨集**H_GRANDFATHER**。當**father.h**再次引入**grandfather.h**時，`#ifndef`測試失敗，[編譯器](../Page/編譯器.md "wikilink")會直接跳到`#endif`的部分，也避免了第二次定義`foo`結構。程式也就能夠正常編譯。

## 困難

為了讓**\#include防範**正確運作，每個防範都必須檢驗並且有條件地設定不同的[前置處理巨集](https://zh.wikipedia.org/wiki/前置處理 "wikilink")。因此，使用了**\#include防範**的方案必須制訂一致性的命名方法，並確定這個方法不會和其他的[標頭檔或任何可見的全域變數衝突](https://zh.wikipedia.org/wiki/標頭檔 "wikilink")。

為了解決這個問題，許多C和C++程式開發工具提供非標準的指令[`#pragma``   ``once`](https://zh.wikipedia.org/wiki/pragma_once "wikilink")。在[標頭檔中加入這個指令](https://zh.wikipedia.org/wiki/標頭檔 "wikilink")，能夠保證這個檔案只會被引入一次。不過這個方法會被潛在性顯著的困難阻撓，無論`#include`指令是否在不同的地方，但實際上起源於相同的開頭（舉例，請參考[符號連結](https://zh.wikipedia.org/wiki/符號連結 "wikilink")）。同樣的，因為`#pragma once`不是一個標準的指令，它的語意在不同的程式開發工具中也許會有微妙的不同。

## 参考文献

## 外部連結

  - [引入防範的最佳化](https://web.archive.org/web/20100819052043/http://www.bobarcher.org/software/include/index.html)
  - [多餘的引入防範](http://c2.com/cgi/wiki?RedundantIncludeGuards)
  - [引入防範生成器](https://web.archive.org/web/20070930015629/http://www.codeproject.com/tools/includeguard.asp)

[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink") [Category:C頭文件](https://zh.wikipedia.org/wiki/Category:C頭文件 "wikilink")