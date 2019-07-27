**Gson**（又称[Google](../Page/Google.md "wikilink")
Gson）是[Google](../Page/Google.md "wikilink")公司發布的一个開放原始碼的[Java](../Page/Java.md "wikilink")库，主要用途為[序列化](../Page/序列化.md "wikilink")[Java](../Page/Java.md "wikilink")物件為[JSON](../Page/JSON.md "wikilink")字串，或反[序列化](../Page/序列化.md "wikilink")[JSON](../Page/JSON.md "wikilink")字串成[Java](../Page/Java.md "wikilink")物件。

## 歷史

Gson當初是為因應[Google](../Page/Google.md "wikilink")公司內部需求而由[Google](../Page/Google.md "wikilink")自行研發而來，但自從在2008年五月公開發布第一版後已被許多公司或使用者應用。

## 各版本發布時間

  - 2008年
      - 05月22日 版本 1.0
      - 06月18日 版本 1.0.1
      - 07月1日 版本 1.1
      - 07月18日 版本 1.1.1
      - 08月29日 版本 1.2

<!-- end list -->

  - 2009年
      - 01月12日 版本 1.3 Beta
      - 04月1日 版本 1.3
      - 10月9日 版本 1.4

<!-- end list -->

  - 2010年
      - 08月19日 版本 1.5
      - 11月24日 版本 1.6

<!-- end list -->

  - 2011年
      - 04月12日 版本 1.7
      - 04月13日 版本 1.7.1
      - 11月13日 版本 2.0
      - 12月31日 版本 2.1

<!-- end list -->

  - 2012年
      - 05月5日 版本 2.2
      - 05月5日 版本 2.2.1
      - 07月2日 版本 2.2.2

<!-- end list -->

  - 2013年
      - 04月12日 版本 2.2.3
      - 05月13日 版本 2.2.4

<!-- end list -->

  - 2014年
      - 08月11日 版本 2.3
      - 11月20日 版本 2.3.1

<!-- end list -->

  - 2015年
      - 10月4日 版本 2.4
      - 11月24日 版本 2.5

<!-- end list -->

  - 2016年
      - 02月11日 版本 2.6
      - 02月11日 版本 2.6.1
      - 02月26日 版本 2.6.2
      - 06月14日 版本 2.7
      - 10月27日 版本 2.8.0

<!-- end list -->

  - 2017年
      - 05月30日 版本 2.8.1

## 使用方法

Gson的應用主要為toJson與fromJson兩個轉換函式，而在使用這種物件轉換之前需先建立好物件的類別以及其成員才能成功的將[JSON](../Page/JSON.md "wikilink")字串成功轉換成相對應的物件。

``` java

  class Examples {
    private int answer1 = 100;
    private String answer2 = "Hello world!";
    Examples(){
    }     // default constructor
  }
```

序列化JAVA物件成[JSON](../Page/JSON.md "wikilink")字串

``` java

   Examples example1 = new Examples();
   Gson gson = new Gson();
   String json = gson.toJson(example1);
```

\==\> json is {"answer1":100,"answer2":"Hello world\!"}

反序列化JSON字串成對應的JAVA物件

``` java

Examples example2= gson.fromJson(json,Examples.class);
```

\==\> example2即與example1相同

物件example1透過toJson[序列化](../Page/序列化.md "wikilink")成[JSON](../Page/JSON.md "wikilink")字串傳遞，再宣告一個物件example2為接收了[JSON](../Page/JSON.md "wikilink")後透過fromJson反序列化成example2，故example1與example2相同

## 參考文獻

  - [Gson User
    Guide](https://sites.google.com/site/gson/gson-user-guide)
    這是Gson使用者導覽的協作平台，裡面有更多使用範例與技術細節可供參考

## 外部連結

  - [Google-Gson官方網站](http://code.google.com/p/google-gson/)
  - [Gson User
    Guide](https://sites.google.com/site/gson/gson-user-guide)
  - [Gson
    API](https://web.archive.org/web/20120613225611/http://google-gson.googlecode.com/svn/trunk/gson/docs/javadocs/index.html)

[Category:Java函式庫](https://zh.wikipedia.org/wiki/Category:Java函式庫 "wikilink")
[Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")
[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")