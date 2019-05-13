在[SQL裡](../Page/SQL.md "wikilink")，可以利用**`UPDATE`**陳述式修改[資料表中一筆或多筆的資料](../Page/数据库表.md "wikilink")。可以更新全部的欄位，或使用條件式只更新部份的資料。

以下是`Update`陳述式的語法：

  -
    **`UPDATE`** *資料表名稱* **`SET`** \[*欄位名稱1* = *值1*\], \[ *欄位名稱2* =
    *值2*\], \[ *欄位名稱3* = *值 ...*\] \[**`WHERE`** *條件式*\]

`UPDATE`若要能成功，使用者必須要有欄位或是資料表的資料存取權限（`UPDATE`權限），而且更新的值不可違背資料表的限制條件（如[主鍵](../Page/主鍵.md "wikilink")、唯一索引、[檢查限制或](../Page/檢查限制.md "wikilink")[非空值等限制](../Page/空值.md "wikilink")）。

## 範例

只在欄位 *C2* 的值為「 a 」時將資料表 *T* 中的欄位 *C1* 設為 1 。

``` sql
UPDATE T SET C1 = 1 WHERE C2 = 'a'
```

將欄位 *C1* 的值加 1 ，若欄位 *C2* 的值為「 a 」。

``` sql
UPDATE T SET C1 = C1 + 1 WHERE C2 = 'a'
```

將欄位 *C1* 的前面串接上字串「 text 」，若欄位 *C2* 的值為「 a 」。

``` sql
UPDATE T SET C1 = 'text' || C1 WHERE C2 = 'a'
```

只在 *C2* 的值也出現於有著欄位 *C4* 等於 0 的資料表 *T2* 裡的欄位 *C3* 中時，資料表 *T1* 裡的欄位 *C1*
才會被設為 2 。

``` sql
UPDATE T1
SET    C1 = 2
WHERE  C2 IN ( SELECT C3
               FROM   T2
               WHERE  C4 = 0)
```

## 参考文献

## 参见

  - [SQL](../Page/SQL.md "wikilink")

{{-}}

[Category:SQL关键字](https://zh.wikipedia.org/wiki/Category:SQL关键字 "wikilink")