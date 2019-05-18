**LiquidFeedback**（簡稱lqfb）是一套揉合[代議民主與](https://zh.wikipedia.org/wiki/代議民主 "wikilink")[直接民主的自由軟體](https://zh.wikipedia.org/wiki/直接民主 "wikilink")，用於形成政治意見及決策。它最主要的功能是實現「委任投票」制度（Delegated
voting,
[流動式民主](../Page/委任式民主.md "wikilink")），這是在政治上新的代表形式及參與形式，可以把參與者不同的見解都納入考量。

## 說明

Liquid
feedback不再受傳統網路論壇的限制，可應用於協助政黨、協會及人民團體評估會員們的意見。其目標不僅準確地代表團體成員，且同時確保它不受到社會階層及不同見解扭曲。且在執行者設定的限制範圍內，鼓勵每個人盡量發揮自己的提議。「代理投票」所建立的權力結構類似「代議民主」，然而授權可以隨時撤銷。這樣的結果才能反映多數人的心情,即使他們沒有時間親自參與。這樣做更是為了避免受到那些高談闊論者的操弄，這可是草根民主的老問題。\[1\]。

## 使用

議題發展過程摘要如下：

  - 使用者們自行推動，自己組織過程（集體制約，無須情求誰來派任）
  - 每位成員都可發起某項倡議
  - 量化的且有結構的回饋（支持，建議，可實施性評估）
  - 由倡議者決定如何實施
  - 不會在一個倡議內營造出非必要的敵對立場
  - 每位成員都可對某項倡議提出替代方案
  - 各種不同的倡議及其替代方案不僅共同定義出了清楚的議題本身，且並列接受投票表決。用的是 [Cloneproof Schwartz
    Sequential
    Dropping](https://zh.wikipedia.org/wiki/Schulze_method "wikilink")
    投票法（Schulze方法）。

為了允許有不同的時間表及支持者的法定人數，及允許某些決定有達到「絕對多數」的可能性，LiquidFeedback允許使用者針對不同種類的決定，可分別有所謂的“政策”。其結果可視組織需要及各國法律，用於資訊、建議、指示、甚或具約束力的決定\[2\]。

## 沿革

LiquidFeedback 是由 Andreas Nitsche，Jan Behrens，Axel Kistner 及 Bjoern
Swierczek 共同編寫\[3\]。這個軟體吸收了 [流動式民主](../Page/委任式民主.md "wikilink")（Liquid
Democracy）的概念 ，還包括了提案發展程序、（或稱為 Schulze 方法），以及 （Interactvie
Democracy）等觀念，一併納入軟體操作內\[4\]。最早是因為德國海盜黨部份成員不滿意傳統政治意見的形成方式，而由「公共軟體團體」根據他們所提出的建議開發出這套軟體，於
2009 年 10
月首度發行。雖然有這層關係，但軟體開發人員是完全獨立於使用者之外的，並允許其他政黨及組織使用該軟體。第一套後端的穩定版本發佈於2010年4月。

已有德國、奧地利、義大利、瑞士及巴西等國海盜黨，為了籌辦幾項國家級會議，成功地使用過該軟體。同時也獲得 [Slow
Food](https://zh.wikipedia.org/wiki/Slow_Food "wikilink") 德國及某些位於義大利的
[Five Star
Movement](https://zh.wikipedia.org/wiki/Five_Star_Movement "wikilink")
地方支部使用。

## 保障少數派

LiquidFeedback提供幾項保護少數的機制。雖然最終仍依據多數決定（參見：[多數法則](https://zh.wikipedia.org/wiki/多數法則 "wikilink")），但軟體允許

  - 少數及縱使個人仍可提出他們的觀點，
  - 特定規模的少數可將他們的提議交付表決。

就本內容而言，所有投稿文字都以按比例保障少數代表性的方式排序\[5\]。根據軟體的整體性，賦予少數可將本身觀點無須透過階級制度而逕付組織最高層討論的權利。

## 技術規格

前端以[Lua編寫](../Page/Lua.md "wikilink")，而後端以[PL/pgSQL編寫](https://zh.wikipedia.org/wiki/PL/pgSQL "wikilink")。兩部份都依據[MIT
License發佈](https://zh.wikipedia.org/wiki/MIT_License "wikilink")。同時還具備[API](https://zh.wikipedia.org/wiki/API "wikilink")，可將外部應用程式的附加特性增添到程式。

## 評論

實施 LiquidFeedback
讓德國海盜黨成員之間產生熱烈討論：數據保護的擁護者批評該軟體的能力，是否真能讓每份聲明競賽，且讓選票正確地投給它們的個別作者，這乃是初衷。因為本軟體僅允許採用[記名投票](https://zh.wikipedia.org/wiki/記名投票 "wikilink")（Recorded
vote）方式表決，可以很容易藉由投票行為判斷參與者的政治意見。這加強了政治運作的透明度，因為所有特殊利益都是公開的。

雖然委任可隨時撤銷，但有些人\[6\]仍質疑[委任投票會衍生出甚至迫使權力結構產生](../Page/委任式民主.md "wikilink")。程式作者隨後提供了一個「自動移除閒置使用者」的選項\[7\]。

## 參見

  - [德國海盜黨](../Page/德國海盜黨.md "wikilink")

  -
## 參考資料

## 外部連結

  -
  - [公共軟體團體](http://www.public-software-group.org/liquid_feedback)

[Category:直接民主](https://zh.wikipedia.org/wiki/Category:直接民主 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.

2.

3.

4.

5.
6.

7.