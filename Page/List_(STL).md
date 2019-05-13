**list**
是[C++標準程式庫中的一個](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")[類](https://zh.wikipedia.org/wiki/類 "wikilink")，可以簡單視之為雙向[連結串列](https://zh.wikipedia.org/wiki/連結串列 "wikilink")，以線性列的方式管理物件集合。list
的特色是在集合的任何位置增加或刪除元素都很快，但是不支持隨機存取。list
是[C++標準程式庫提供的眾多容器](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")（container）之一，除此之外還有[vector](../Page/Vector_\(STL\).md "wikilink")、set、map、…等等。list
以模板方式實現(即泛型)，可以處理任意型別的變數，包括使用者自定義的資料型態，例如：它可以是一個放置整數（int）型態的
list、也可以是放置字串（char 或 string）型態的
list、或者放置使用者自定類別（user-defined class）的 list。

## 設計

list 被定義在 <list> 標頭檔中。一如其他STL元件，list屬於std名稱空間。

list
內部以[資料結構的雙向](https://zh.wikipedia.org/wiki/資料結構 "wikilink")[連結串列實做](https://zh.wikipedia.org/wiki/連結串列 "wikilink")，內部元素
記憶體各處，互相以link串接起來，每個元素都只知道其前一個元素以及下一個元素的位置。故要走訪整個list，必須從第一個元素開始逐個往下尋訪，不支持隨機存取(Random
Access)。 list 的強項是高效的插入以及刪除，於list插入或刪除時只需要改動元素的link欄位，不需要搬動元素，代價相對便宜。

list 在經常需要於集合內部任意位置(即除了頭尾以外的其他位置)
頻繁增刪元素的工作上表現優秀。若僅需要於集合尾端增刪元素，那應該優先考慮[vector容器](../Page/Vector_\(STL\).md "wikilink")，若僅於頭尾二端增刪元素，那應該優先考慮[deque容器](https://zh.wikipedia.org/wiki/Deque_\(STL\) "wikilink")。

### 成員函數概觀

  - 迭代 (Iterator)
      - `list.begin()` 回傳指向第一個元素的 Iterator。
      - `list.end()` 回傳指向最末元素的下一個位置的 Iterator。
      - `list.rbegin()` 回傳指向最末個元素的反向 Iterator。
      - `list.rend()` 回傳指向第一個元素的前一個位置的反向 Iterator。
  - Capacity/Size:
      - `list.empty()` 若list內部為空，則回傳true值。
      - `list.size()` 回傳list內實際的元素個數。
      - `list.resize()` 重新分派list的長度。

<!-- end list -->

  - 存取元素的方法
      - `list.front()` 存取第一個元素。
      - `list.back()` 存取最末個元素。

<!-- end list -->

  - Modify methods
      - `list.push_front()` 增加一個新的元素在 list 的前端。
      - `list.pop_front()` 刪除 list 的第一個元素。
      - `list.push_back()` 增加一個新的元素在 list 的尾端。
      - `list.pop_back()` 刪除 list 的最末個元素。
      - `list.insert()` - 插入一個或多個元素至 list內的任意位置。
      - `list.erase()` - 刪除 list中一個或多個元素。
      - `list.clear()` - 清空所有元素。
  - 重新配置／重設長度
      - `list.reserve()` - 如有必要，可改變 list的容量大小（配置更多的記憶體）。
      - `list.resize()` - 改變 list目前持有的元素個數。

## 使用說明

### 申明

``` cpp
std::list<T> mylist;
```

## 外部链接

  - [SGI 的 list 使用說明（SGI STL specification of
    list）](http://www.sgi.com/tech/stl/List.html)

  - [C++ 參考：list（C++ reference:
    list）](http://www.cplusplus.com/reference/stl/list/)

[Category:C++標準函式庫](https://zh.wikipedia.org/wiki/Category:C++標準函式庫 "wikilink")