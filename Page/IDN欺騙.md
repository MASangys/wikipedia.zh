**IDN欺騙**是[钓鱼式攻击的手法之一](../Page/钓鱼式攻击.md "wikilink")。它利用[國際化網域名稱](https://zh.wikipedia.org/wiki/國際化網域名稱 "wikilink")（IDN）可以以[Unicode字元命名網址的特性](https://zh.wikipedia.org/wiki/Unicode "wikilink")，透過[同形異義字](../Page/同形字.md "wikilink")，魚目混珠。

## 同形異義字

Unicode有許多同形異義字，例如[西里爾字母的小楷](https://zh.wikipedia.org/wiki/西里爾字母 "wikilink")[а](https://zh.wikipedia.org/wiki/а "wikilink")（U+0430）和拉丁字母、即英文的[a](https://zh.wikipedia.org/wiki/a "wikilink")（U+0061），在許多字型中都看不出有甚麼不同。於是，入侵者便可用此來欺騙用戶。這稱為同形異義字欺騙。

例如入侵者可以注冊一個和著名網站差不多的網址名。例如有[西里爾字母的](https://zh.wikipedia.org/wiki/西里爾字母 "wikilink")<span style="font-family:Arial,sans-serif">pаypal.com</span>。這不是新橋段。例如以數字0偽裝英文字母O（G00GLE.COM
-\> GOOGLE.COM），i的大楷I或數字1偽裝L小楷的l（google.com -\> googIe.com），rn（r与n）偽裝m等。

## 分辨

只需使用簡單的程式碼便能分出。

### JavaScript

``` javascript
var first="а",         //U+0430
    second="a";        //U+0061

alert(first==second);  //輸出false
```

## 防止方法

  - 以[Punycode形式顯示](https://zh.wikipedia.org/wiki/Punycode "wikilink")[URL](https://zh.wikipedia.org/wiki/URL "wikilink")，如[.срб轉成](https://zh.wikipedia.org/wiki/.срб "wikilink").xn--90a3ac或[.укр轉成](https://zh.wikipedia.org/wiki/.укр "wikilink").xn--j1amh
  - 將非[ASCII字元高亮顯示](../Page/ASCII.md "wikilink")，如「維基百科.com」顯示成「<span style="color:red;">維基百科</span>.com」
  - 網域名稱注冊機構不容許這類網域名稱的注冊，或是由該公司將此類網域名稱先註冊起來並導到正確的網域名稱。

## 外部連結

  - [Simple Script
    Detection](https://web.archive.org/web/20060903024832/http://www.macchiato.com/utc/show_script.html)：顯示網址有沒有異常字元的工具
  - [Ency:IDN欺骗 - \[Mozcn Wiki - Mozilla
    知识库](https://web.archive.org/web/20081203211427/http://wiki.mozcn.org/index.php/Ency%3AIDN%E6%AC%BA%E9%AA%97)：[Mozilla處理IDN欺騙的方法](../Page/Mozilla.md "wikilink")

[Category:Unicode](https://zh.wikipedia.org/wiki/Category:Unicode "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:詐騙](https://zh.wikipedia.org/wiki/Category:詐騙 "wikilink")