> 本文内容由[Turbo BASIC](https://zh.wikipedia.org/wiki/Turbo_BASIC)转换而来。


**Turbo BASIC**是一個[BASIC](../Page/BASIC.md "wikilink") [編譯器](../Page/編譯器.md "wikilink")與編輯器，最初由Robert 'Bob' Zale所開發，後來被[Borland](../Page/Borland.md "wikilink")買下。當Borland決定不再販售之後，Zale從Borland手中買回它，並改名為[PowerBASIC](../Page/PowerBASIC.md "wikilink")並創立PowerBASIC公司，以繼續支援與研發。今天仍然存在市面上。

這個軟體在1987-1988年期間，和Borland的[Turbo Pascal](../Page/Turbo_Pascal.md "wikilink") 4.0, [Turbo C](https://zh.wikipedia.org/wiki/Turbo_C "wikilink") 1.0/1.5，與[Turbo Prolog](https://zh.wikipedia.org/wiki/Turbo_Prolog "wikilink") 1.1相似，以"black screen"為特徵。到了1989年推出Turbo C 2.0, Turbo C++ 1.1，……等時，Borland便不再沒有採取它註冊商標式的"blue screen" [IDE](../Page/集成开发环境.md "wikilink")。在這時，Turbo Basic與Turbo Prolog不再販賣。

與這個時期的多數BASIC編輯器不同的是，Turbo BASIC是個完整的編譯器，能編譯出MS-DOS底下的原生程式碼。其它編輯器或許是直譯器，或者是大量依賴於執行函式庫。Turbo Basic的整合化開發環境能在其中執行一個BASIC程式（參見下面的例子）以為傳統BASIC測試，或是產生完全獨立的MS-DOS可執行檔（.EXE），能在其它沒有安裝Turbo BASIC或是其執行函式庫的電腦上執行。當然編譯出來的可執行程式檔會比原來僅含程式碼的.bas檔案大得多。

Turbo Basic聲稱其乃以x86組合語言撰寫，所編譯出來的程式比其他程式所編譯的執行速度較快。另外，因為早期對於中文系統的缺陷，Turbo Basic在中文環境下的使用存在一些問題。例如，在倚天中文環境底下雖然可以顯示中文文字，但是IDE有亂碼，且使用其INPUT命令並不能直接輸入中文字。后来的UCDOS，天汇等汉字系统已经能够很好地支持Turbo BASIC。在Turbo Basic的IDE编辑环境中，甚至在Turbo Basic所编译出的软件中，都可以顺利地输入中文字。

## 程式碼範例

下面的程式例子是Turbo Basic所支援的類似[ALGOL](../Page/ALGOL.md "wikilink")之BASIC語法。與傳統使用行號的，而控制結構有限且不支援類似[ALGOL](../Page/ALGOL.md "wikilink")之副程式的BASIC程式語言不同的是，在這個時期出現的現代BASIC編輯器的功能擴充了，放棄了行號，加入了結構化程式設計所需的控制結構與副程式定義，使得這類語言符合現代的[結構化編程理論](https://zh.wikipedia.org/wiki/結構化編程 "wikilink")。

``` qbasic
INPUT "What is your name:", A$
PRINT "Hello "; A$
DO
  S$ = ""
  INPUT "How many stars do you want to print"; S
  FOR I = 1 TO S
    S$ = S$ + "*"
  NEXT I
  PRINT S$
  DO
    INPUT "Do you want to print more stars"; Q$
  LOOP WHILE LEN(Q$) = 0
  Q$ = LEFT$(Q$, 1)LOOP WHILE(Q$ = "Y")OR(Q$ = "y")PRINT "Goodbye "; A$
```

像這個時代的其它Borland產品，程式碼執行於[IDE裡](../Page/集成开发环境.md "wikilink")。

[Category:Borland軟體](https://zh.wikipedia.org/wiki/Category:Borland軟體 "wikilink")