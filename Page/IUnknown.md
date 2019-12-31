> 本文内容由[IUnknown](https://zh.wikipedia.org/wiki/IUnknown)转换而来。


在[程序设计](../Page/程序设计.md "wikilink")中，**IUnknown**[介面是](../Page/介面_\(資訊科技\).md "wikilink")[组件对象模型](../Page/组件对象模型.md "wikilink")（COM）中的基礎介面。COM規格書\[1\]中規定COM物件至少要實現此一介面，而且其他所有的COM介面都需要衍生自IUnknown介面。IUnknown提供所有COM物件都支援的兩種基本特性：利用[引用计数](../Page/引用计数.md "wikilink")來進行物件生命周期管理，以及存取許多事先定義的介面。

IUnknown介面會包括一個指向的[指標](../Page/指標_\(電腦科學\).md "wikilink")，虛擬方法表是一個有許多[函数指针](../Page/函数指针.md "wikilink")的列表，函数指针會指向許多實現IUnknown介面所宣告的函數，以和介面中宣告順序相同的方式排列。而進程內呼叫產生的大致和[C++](../Page/C++.md "wikilink")中呼叫[虛擬方法的開銷相近](https://zh.wikipedia.org/wiki/虛擬方法 "wikilink")。

## 方法

IUnknown介面中有三個[方法](../Page/方法_\(電腦科學\).md "wikilink")：`QueryInterface`, `AddRef`, and `Release`：\[2\]

  - `QueryInterface`可以讓呼叫此物件的程式可以確認此物件是否支援特定的介面，若是支援，則參考到此物件在特定介面下的實現。這個方法類似[C++](../Page/C++.md "wikilink")的[`dynamic_cast`](../Page/執行期型態訊息.md "wikilink")`<>`或是[Java](../Page/Java.md "wikilink")或是[C\#的](../Page/C♯.md "wikilink")[casts](https://zh.wikipedia.org/wiki/型態轉換 "wikilink")。此方法在給定一個對應特定介面的[全局唯一标识符](../Page/全局唯一标识符.md "wikilink")（一般也稱為介面标识符或是IID）時，可以提供一個指定特定介面的指標。若COM物件不支援此介面，會回覆E_NOINTERFACE錯誤。
  - `AddRef`是在新的客戶端程式要存取此物件時，讓計數值加一，會回傳更新後的計數值。
  - `Release`是在客戶端程式已結束存取此物件，讓計數值減一，會回傳更新後的計數值，若計數值已變為零，會自動刪除此一COM物件。

<!-- end list -->

``` cpp
interface IUnknown {
  virtual HRESULT QueryInterface (REFIID riid, void **ppvObject) = 0;
  virtual ULONG   AddRef () = 0;
  virtual ULONG   Release () = 0;
};
```

**IUnknown**本身的介面标识符為{00000000-0000-0000-C000-000000000046}，IUnknown的三個方法都是[純虛擬方法](https://zh.wikipedia.org/wiki/虛擬函式 "wikilink")（宣告時都有加上`= 0`），因此無法定義IUnknown類別的物件，需要由其他類別繼承IUnknown，才能定義對應類別的物件。

## 其他

  - 以[ActiveX](../Page/ActiveX.md "wikilink")標準設計的元件至少需要實現IUnknown介面\[3\]。
  - IUnknown也是[MacOS X中](../Page/MacOS.md "wikilink") CFPlugIn框架的基礎\[4\]
  - 在[Mozilla](../Page/Mozilla.md "wikilink")應用程式的開發中，IUnknown介面也稱為nsISupports。

## 參考資料

## 相關條目

  - [IDispatch](../Page/IDispatch.md "wikilink")

  -
  - [IInspectable](https://zh.wikipedia.org/wiki/IInspectable "wikilink")

  - [IObjectWithSite](https://zh.wikipedia.org/wiki/IObjectWithSite "wikilink")

  - [IOleObject](https://zh.wikipedia.org/wiki/IOleObject "wikilink")

## 外部連結

  - [COM in plain C](http://www.codeproject.com/kb/com/com_in_c1.aspx)

[Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

1.
2.  [IUnknown definition](http://msdn2.microsoft.com/en-us/library/ms680509.aspx) at [microsoft.com](http://microsoft) ; accessed 18-Jan-2008
3.  [ActiveX Controls](http://msdn2.microsoft.com/en-us/library/aa751968.aspx) at [microsoft.com](http://microsoft.com); accessed 18-Jan-2008
4.  [Plug-ins](http://developer.apple.com/library/mac/documentation/CoreFoundation/Conceptual/CFPlugIns/CFPlugIns.pdf)  at [apple.com](http://apple.com); accessed 18-Sept-2011