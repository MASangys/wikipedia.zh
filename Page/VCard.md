**vCard**是電子名片的文件格式標準。它一般附加在[電子郵件之後](../Page/電子郵件.md "wikilink")，但也可以用於其它場合（如在[網際網路上相互交換](../Page/網際網路.md "wikilink")）。vCard可包含的信息有：姓名、地址資訊、電話號碼、[URL](../Page/URL.md "wikilink")，[logo](../Page/logo.md "wikilink")，相片等。

## 歷史

vCard（或稱做Versitcard）最早是由Versit聯盟於1995年提出的，當時聯盟成員包括[蘋果公司](../Page/蘋果公司.md "wikilink")，AT\&T科技（後來的[朗訊](../Page/朗訊.md "wikilink")），[IBM及](../Page/IBM.md "wikilink")[西門子](../Page/西門子.md "wikilink")。在1996年十二月，格式的擁有權移至（IMC），此聯盟是由一些關注網際網路電子郵件的公司所組成。

與vCard一同提出的用於數據交換的標準還有[vCalendar](../Page/vCalendar.md "wikilink")，但現在被[iCalendar所取代](../Page/iCalendar.md "wikilink")。網際網路郵件聯盟已經聲明它希望“所有的vCalendar開發者利用這些新的開放標準，並使軟件能夠同時兼容vCalendar
1.0和iCalendar。”

vCard標準的2.1版被[電子郵件客戶端廣泛支持](../Page/電子郵件客戶端.md "wikilink")。3.0版是一個包含在RFC
2425和RFC
2426中的[IETF標準跟蹤提案](../Page/IETF.md "wikilink")。vCard的常用[副檔名是](../Page/副檔名.md "wikilink").vcf。

不同的程序對vCard標準實現亦不同。Mac OS X中的Address Book允許把所有聯繫人導出到一個vcf文件，而[Microsoft
Outlook只能每人一個文件](../Page/Microsoft_Outlook.md "wikilink")。Linux中KDE的[Kontact允許每個文件導入或導出一人或多人](../Page/Kontact.md "wikilink")。

## vCard文件樣例

下面是一個包含個人信息的vCard文件樣例。

    BEGIN:VCARD
    VERSION:2.1
    N:Gump;Forrest
    FN:Forrest Gump
    ORG:Gump Shrimp Co.
    TITLE:Shrimp Man
    TEL;WORK;VOICE:(111) 555-1212
    TEL;HOME;VOICE:(404) 555-1212
    ADR;WORK:;;100 Waters Edge;Baytown;LA;30314;United States of America
    LABEL;WORK;ENCODING=QUOTED-PRINTABLE:100 Waters Edge=0D=0ABaytown, LA 30314=0D=0AUnited States of America
    ADR;HOME:;;42 Plantation St.;Baytown;LA;30314;United States of America
    LABEL;HOME;ENCODING=QUOTED-PRINTABLE:42 Plantation St.=0D=0ABaytown, LA 30314=0D=0AUnited States of America
    EMAIL;PREF;INTERNET:forrestgump@walladalla.com
    REV:20080424T195243Z
    END:VCARD

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:互联网标准](https://zh.wikipedia.org/wiki/Category:互联网标准 "wikilink")
[Category:身份證明](https://zh.wikipedia.org/wiki/Category:身份證明 "wikilink")