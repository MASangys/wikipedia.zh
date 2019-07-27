**Mozilla
Persona**是由[Mozilla](../Page/Mozilla.md "wikilink")開發\[1\]的基於開放BrowserID協定\[2\]的網站安全[身份驗證系統](https://zh.wikipedia.org/wiki/身份驗證 "wikilink")。

## 歷史

Persona和[OpenID](../Page/OpenID.md "wikilink")、等類似的身分驗證系統有相同的目標，唯Persona具有以下特點：

1.  使用電子郵件地址當作唯一的身分識別方式。
2.  更加強調用戶的隱私。
3.  希望和瀏覽器完全整合。

由於既有的身分驗證提供單位並無法得知識別用戶的網站為何，因此Persona更加專注於用戶的隱私管理\[3\]。

Persona在2011年7月公開\[4\]，到2012年1月才正式對外開放\[5\]。2014年3月7日，Mozilla宣布將負責Mozilla
Persona的全職工程師調動至其他專案，並將Persona的開發交給社群。Mozilla只繼續提供服務本身和錯誤修正等支援\[6\]。

## 原則與實作

Persona基於以BrowserID協定著名\[7\]的
VerifiedEmailProtocol\[8\]\[9\]，使用電子郵件地址作為用戶身分的驗證。此協定包含在瀏覽器、身分驗證提供者和任何網站上。

### 瀏覽器、提供者與網站

瀏覽器儲存用戶用來認證的電子郵件地址，並向加密的網站傳送使用者的電子郵件地址。憑證必須每24小時透過用戶登入（通常代表用戶必須在該網站上輸入電子郵件地址和密碼）來更新，登入之後即可用來認證瀏覽器，不必重新登入。憑證理論上可存放在任何身分提供者服務中，但目前仍須依賴Mozilla的伺服器。儘管此協定需要中央伺服器，但該伺服器僅能得知瀏覽器更新憑證，無法得知憑證將用在哪個網站。

### 使用現有帳號登錄

Mozilla在2013年7月發表了「使用現有帳號登錄（Identity
Bridging）」功能。以往必須透過Mozilla傳送電子郵件給用戶確認連結，但透過現有帳號登錄功能，Persona可以直接向用戶的電子郵件提供商既有的[OpenID](../Page/OpenID.md "wikilink")或[OAuth來驗證用戶身分](https://zh.wikipedia.org/wiki/OAuth "wikilink")。在此階段支援[Yahoo電子郵件服務](https://zh.wikipedia.org/wiki/Yahoo "wikilink")。在2013年8月，Mozilla宣布現有帳號登錄功能支援[Gmail](../Page/Gmail.md "wikilink")帳號。透過支援Yahoo和Gmail的現有帳號登錄功能，Persona等同於擁有超過700,000,000的活躍電子郵件用戶\[10\]。

## 發展

Persona相當依賴在客戶端瀏覽器執行的[JavaScript](../Page/JavaScript.md "wikilink")程式。

支援Persona驗證的網站應用程式可以在[Drupal](../Page/Drupal.md "wikilink")\[11\]、[WordPress](../Page/WordPress.md "wikilink")\[12\]等[內容管理系統上實作](https://zh.wikipedia.org/wiki/內容管理系統 "wikilink")。[Phonegap平台](https://zh.wikipedia.org/wiki/Phonegap "wikilink")（行動裝置的[HTML5](../Page/HTML5.md "wikilink")應用程式開發平台）亦可支援Persona\[13\]。Mozilla提供自家的Persona伺服器（persona.org）。同時開發者也可設置自己的Persona驗證伺服器\[14\]。

著名網站如[Ting](https://zh.wikipedia.org/wiki/Ting "wikilink")\[15\]、[泰晤士報](https://zh.wikipedia.org/wiki/泰晤士報 "wikilink")、[Trovebox和](https://zh.wikipedia.org/wiki/Trovebox "wikilink")[Voost等皆支援](https://zh.wikipedia.org/wiki/Voost "wikilink")
Persona。

## 註解

## 相關條目

  - [OpenID](../Page/OpenID.md "wikilink")

[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")
[Category:口令认证](https://zh.wikipedia.org/wiki/Category:口令认证 "wikilink")

1.  {{ cite web | title = Persona: Connect with Mozilla Persona, the
    safest & easiest way to sign in. | url =
    <https://login.persona.org/> | author =
    [Mozilla](../Page/Mozilla.md "wikilink") | deadurl = yes |
    archiveurl =
    <https://web.archive.org/web/20130308064151/https://login.persona.org/>
    | archivedate = 2013-03-08 }}
2.  {{ cite web | title = “Persona”| url =
    <https://developer.mozilla.org/en-US/docs/persona> | author =
    Mozilla Developer Network (MDN) }}
3.  {{ cite web | title = “How BrowserID differs from OpenID” | url =
    <http://identity.mozilla.com/post/7669886219/how-browserid-differs-from-openid>
    | author = Ben Adida <benadida> | date = 2011-07-15 | deadurl = yes
    | archiveurl =
    <https://web.archive.org/web/20130127111317/http://identity.mozilla.com/post/7669886219/how-browserid-differs-from-openid>
    | archivedate = 2013-01-27 }}
4.  {{ cite web | title = “Introducing BrowserID: A better way to sign
    in” | url =
    <http://identity.mozilla.com/post/7616727542/introducing-browserid-a-better-way-to-sign-in>
    | author = Mozilla Identity team | date = 2011-07-14 | deadurl = yes
    | archiveurl =
    <https://web.archive.org/web/20130128201115/http://identity.mozilla.com/post/7616727542/introducing-browserid-a-better-way-to-sign-in>
    | archivedate = 2013-01-28 }}
5.  {{ cite web | title = Mozilla pushes browser-based alternative to
    passwords | url =
    <http://www.theregister.co.uk/2012/01/20/browserid/> | author =
    Leyden, John | date = 2012-01-20 }}
6.  {{ cite web | title = Transitioning Persona to Community Ownership |
    url =
    <http://identity.mozilla.com/post/78873831485/transitioning-persona-to-community-ownership>
    | date = 2014-03-07 | deadurl = yes | archiveurl =
    <https://web.archive.org/web/20140310212307/http://identity.mozilla.com/post/78873831485/transitioning-persona-to-community-ownership>
    | archivedate = 2014-03-10 }}
7.  {{ cite web | title = Glossary - "Persona" vs. "BrowserID" | url =
    <https://developer.mozilla.org/en-US/docs/Persona/Glossary> | author
    = Mozilla Developer Network | date = 2012-11-26 }}
8.  {{ cite web | title = “Verified Email Protocol: Overview and
    Introduction” | url =
    <https://wiki.mozilla.org/Labs/Identity/VerifiedEmailProtocol> |
    author = Mozilla Wiki }}
9.  {{ cite web | title = How BrowserID Works | url =
    <http://lloyd.io/how-browserid-works> | author = lloyd's blog | date
    = 2011-07-01 | deadurl = yes | archiveurl =
    <https://web.archive.org/web/20121225145026/http://lloyd.io/how-browserid-works>
    | archivedate = 2012-12-25 }}
10. {{ cite web | title = Mozilla Makes Signing in Easy for Gmail Users
    | url =
    <http://identity.mozilla.com/post/57712756801/persona-makes-signing-in-easy-for-gmail-users>
    | date = 2013-08-08 | deadurl = yes | archiveurl =
    <https://web.archive.org/web/20130811153049/http://identity.mozilla.com/post/57712756801/persona-makes-signing-in-easy-for-gmail-users>
    | archivedate = 2013-08-11 }}
11. {{ cite web | title = Mozilla Persona | url =
    <https://drupal.org/project/persona> | author = Drupal | date =
    2012-09-28 }}
12. <https://wordpress.org/support/plugin/browserid>
13. {{ cite web | title = couchbaselabs / cordova-browserid | url =
    <https://github.com/couchbaselabs/cordova-browserid> }}
14. {{ cite web | title = "Implementing a Persona IdP" | url =
    <https://developer.mozilla.org/en-US/docs/Persona/Implementing_a_Persona_IdP>
    | author = Mozilla Developer Network (MDN) }}
15. {{ cite web | title = Ting implements Mozilla Persona | url =
    <https://ting.com/blog/ting-implements-mozilla-persona/> | author =
    Ting.com }}