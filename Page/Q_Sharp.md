**Q\#**（发音为Q sharp）是一种用于表达量子算法的特定领域编程语言。\[1\] 它最初作为量子开发套件的一部分由[微软](../Page/微软.md "wikilink")公开发布。\[2\]

## 历史

在2017年9月26日的Microsoft Ignite主题演讲中，微软宣布他们将发布一种专门针对量子计算机的新编程语言。\[3\] 2017年12月11日，微软将Q\#作为量子开发套件的一部分正式发布。

## 用法

Q\#仅可作为Visual Studio的单独下载的扩展名提供。\[4\] [Quantum开发套件](https://marketplace.visualstudio.com/items?itemName=quantum.DevKit)附带一个能够运行Q\#的量子模拟器。

为了调用量子模拟器，使用另一种[.NET框架](../Page/.NET框架.md "wikilink")，它为模拟器提供（经典）输入数据，并从模拟器中读取（经典）输出数据。

## 設計

Q\#的設計目的是爲了擺脫傳統計算機語言對於暢通[電子計算機](../Page/電子計算機.md "wikilink")編程模型的思維模式，轉而通過更加專注算法的方式來對量子計算機能夠擁有更爲良好的適配，而且傳統語言一般不支援對於量子位元的控制。Q\#的針對目標是大量使用量子計算的應用程式的高效率開發，而不是簡單算法的固定實現。\[5\]

## 功能

Q\#的一個主要特徵是能夠為算法創建并且能夠使用[量子位元](../Page/量子位元.md "wikilink")，因此Q\#的能力中最爲突出的就是能夠通過[受控反閘](../Page/受控反閘.md "wikilink")和[阿達馬變換進行](../Page/阿达马变换.md "wikilink")[量子纏結](../Page/量子纏結.md "wikilink")并且引入量子位元的[叠加](../Page/叠加原理.md "wikilink")。個別地來説，有[托佛利閘](../Page/托佛利閘.md "wikilink")、[包立矩陣等](../Page/泡利矩陣.md "wikilink")，更多内容詳見[量子閘](../Page/量子閘.md "wikilink")。

#### Q\#等編譯運行特徵：

  - 基於抽象量子位元而不是物理量子位元；
  - 允許集成使用[量子計算和](../Page/量子计算机.md "wikilink")[經典計算](../Page/電子計算機.md "wikilink")；
  - 能夠表達例如[量子相位估計算法](https://zh.wikipedia.org/wiki/量子相位估計算法 "wikilink")（Quantum Phase Estimation Algorithm）、[幅度放大](https://zh.wikipedia.org/wiki/幅度放大 "wikilink")（Amplitude Amplification）等高階算法；
  - 采用操作伴隨的高階變換可被原生表達；
  - 可以被位圖編譯器委托的邏輯閘編輯、序列優化、輔助管理等；
  - 算法遵守物理法則，例如不能複製量子位元、除了模擬器調試的模擬狀態，實際物理環境下不能監視量子狀態。

最終能夠與Q\#結合的硬體堆棧有望能夠將[量子位元](../Page/量子位元.md "wikilink")實現在[量子拓朴計算中](https://zh.wikipedia.org/wiki/量子拓朴計算 "wikilink")。當前量子開發套件附帶的量子模擬器能夠在使用者機器上處理多達32個量子位元，在[Azure上可處理多達](https://zh.wikipedia.org/wiki/Azure "wikilink")40個量子位元。

## 檔案以及資源

目前，可用於Q\#的資源很少，但官方文檔已發佈有[Microsoft Developer Network：Q\#](https://docs.microsoft.com/en-us/quantum/?view=qsharp-preview)、[Microsoft Quantum Github](https://github.com/Microsoft/Quantum/)。其中在Github上的項目也是一個大型示例項目程式的集合，其實現了各種量子算法以及調試模型。

微軟在[Codeforces上也主持過一場](https://zh.wikipedia.org/wiki/Codeforces "wikilink")[量子編碼競賽](http://codeforces.com/msqs2018)，並在當時提供了相關材料以幫助回答部落格文章中所提到的問題，以及教程中問題的詳細解決方案。

微軟提供了一系列的[學習練習](https://github.com/Microsoft/QuantumKatas)，以幫助學習Q\#。其中包含各種資源的鏈接以及問題的解決方案。

## 語法

Q\#在語法上與[C\#和](../Page/C♯.md "wikilink")[F\#類似](../Page/F♯.md "wikilink")，但也有一些顯著差異。

#### 與C\#的相似之處：

  - 使用namespace來隔離程式碼；
  - 所有語句均使用分號;來結尾；
  - 均使用大括弧{}來限定範圍；
  - 使用連續的雙斜綫//來添加單行注釋；
  - 一些基元變量數據類型相同，例如:Int、Double、String、Bool等，但是在Q\#中全部使用大寫字母開頭，而在C\#中使用關鍵字來聲明時為小寫字母開頭，不過在C\#中使用FCL類型名稱時可以表示為大寫開頭，而且C\#中的int為32位元，而Q\#中為64位元\[6\]；
  - 量子比特的分配被放置在using語句塊當中；
  - 使用return關鍵字返回結果。

### 與F\#的相似之處：

  - 使用let或mutable來聲明變量\[7\]；
  - 使用頭等函數模式；
  - 使用open關鍵字導入模塊；
  - 數據類型在變量名稱之後聲明；
  - 使用連續的兩個英文半角句號..來進行範圍運算；
  - 使用for..in循環；
  - 每個操作和函數都必須有一個返回值，沒有void類型。相對應的，使用放回一個空元組()來取代void；
  - 記錄數據類型的定義。

#### 差異：

  - 使用function關鍵字聲明函數；
  - 使用operation關鍵字聲明在量子計算機上的作業；
  - 沒有多行注釋；
  - 使用斷言來檢查和報告錯誤，而不是擲出例外；
  - 文檔使用[Markdown編寫](https://zh.wikipedia.org/wiki/Markdown "wikilink")，而不是基於[XML](../Page/XML.md "wikilink")的文檔標記。

## 参考文献

## 外部連結

  - [Official documentation](https://docs.microsoft.com/en-us/quantum/quantum-qr-intro?view=qsharp-preview)

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink") [Category:程式語言小作品](https://zh.wikipedia.org/wiki/Category:程式語言小作品 "wikilink") [Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")

1.

2.

3.

4.

5.

6.

7.