**Cython**是结合了[Python和](../Page/Python.md "wikilink")[C的语法的一种语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，可以简单的认为就是给Python加上了静态类型后的语法，使用者可以維持大部分的Python語法，而不需要大幅度調整主要的程式邏輯與演算法。但由于会直接编译为二进制程序，所以性能较Python会有很大提升。\[1\]\[2\]

Cython被大量運用在CPython函式庫的撰寫，以取得較高的執行效能。Cython將CPython代碼轉譯成 C 或 C++
語法後，自動包裝上函式呼叫界面生成 .pyx 後綴的執行檔，即可當成普通的函式庫。其性能一般遜於原生的
C/C++ 函式庫，但由於 CPython 語法的易用性可以縮短開發時間。Cython 也可以用於編譯以 C/C++ 為 CPython
撰寫的函式庫。

目前 Cython 可以在 Windows, MacOS 與 Linux 上使用，可以編譯 2.6, 2.7 與 3.3 至 3.7 版本的
CPython 語法。

## 參考資料

## 參見

  - [PyPy](../Page/PyPy.md "wikilink")

  -
## 外部連結

  -
  -
[Category:Python](https://zh.wikipedia.org/wiki/Category:Python "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")

1.
2.