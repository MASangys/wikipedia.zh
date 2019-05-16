**无法从源代码编译**（FTBFS）是一個電腦編程的術語，是英語的縮寫，意思就是「無法從來源碼編譯」或「無法從源碼編譯」，也就是無法從程式的來源碼編譯成為可以執行的機械碼。這個問題的成因可以很多，但通常都用來泛指一個已編譯好的程式當用戶需要微調而重新編譯時所出現的問題，而不是程式開發時出現的各種語法上的問題。這個名詞在[Debian系列](../Page/Debian.md "wikilink")（例如：[Ubuntu作業系統等](../Page/Ubuntu.md "wikilink")）的文件上出現比較多\[1\]。

## 歷史

傳統上，FTBFS用於對[Debian的軟體封包的問題引起關注](../Page/Debian.md "wikilink")，特別是在其[產品生命週期的早期](https://zh.wikipedia.org/wiki/產品生命週期 "wikilink")。
這個錯誤過往一直用於當有關軟體包會被其他軟體包引用時可以留意；但其實這個名詞也在Debian的錯誤報告裡使用，以提醒開發人員問題仍然存在\[2\]。
事實上，這種問題並不單單在Debian系列的電腦系統出現，因此其實亦可在其他系統上使用這種稱呼。

## 成因

FTBFS的成因可以分為兩方面：

  - 軟體方面：編輯時並未有齊所有所需的[程式庫](https://zh.wikipedia.org/wiki/程式庫 "wikilink")，又或原來所引用的程式庫改動了，令原來的編譯設定變成無效\[3\]；
  - 硬體方面：所有與編譯無關的硬體問題，例如：磁碟空間用盡、虛擬記憶不足等。

## 參看

  - [软件包管理系统](../Page/软件包管理系统.md "wikilink")（Package management system）
  - [高级包装工具](https://zh.wikipedia.org/wiki/高级包装工具 "wikilink")（Advanced
    Packaging Tool）

## 參考資料

## 外部連結

  -
[Category:软件工程](https://zh.wikipedia.org/wiki/Category:软件工程 "wikilink")

1.
2.
3.