**IDispatch**[介面是](../Page/介面_\(資訊科技\).md "wikilink")[组件对象模型](../Page/组件对象模型.md "wikilink")（COM）中的标准介面，也称**自动化**（Automation）接口，继承自[IUnknown](../Page/IUnknown.md "wikilink")，用于讓其他函式使用协议\[1\]。COM規格書\[2\]規定COM物件应该是三种接口类型中的至少一种：

  - 基于虚表（vtable）的[IUnknown](../Page/IUnknown.md "wikilink")的定制接口；
  - 分派（dispatch）的IDispatch接口以支持內觀資訊（introspection）。允许客户应用程序在[运行时查出COM组件支持哪些属性与方法](https://zh.wikipedia.org/wiki/运行时 "wikilink")，即实现了[运行期类型信息](https://zh.wikipedia.org/wiki/运行期类型信息 "wikilink")（RTTI）。客户应用程序[编译时不需要知道COM的对象成员](https://zh.wikipedia.org/wiki/编译时 "wikilink")。脚本语言如[VBS不能使用指针乃至](https://zh.wikipedia.org/wiki/VBS "wikilink")[函数指针](../Page/函数指针.md "wikilink")，只能通过IDispatch接口访问COM组件。这是通过执行IDispatch接口中的Invoke方法。这是一种。与第一种定制接口相比，增加了內觀資訊与invoke的开销。\[3\]
  - dual接口，同时支持上述两种类型的接口

## 方法

支持IDispatch的COM对象实现的每个属性与方法都有自己的Dispatch ID，常缩写为DISPID。用于在*Invoke*方法中辨识哪个属性或方法将被调用。

IDispatch派生自[IUnknown](../Page/IUnknown.md "wikilink")，并且扩展了4个额外的方法：

``` cpp
interface IDispatch : public IUnknown {
  virtual HRESULT GetTypeInfoCount(unsigned int * pctinfo) = 0;
  virtual HRESULT GetTypeInfo(unsigned int iTInfo,
                              LCID lcid,
                              ITypeInfo ** ppTInfo
                             ) = 0;
  virtual HRESULT GetIDsOfNames(REFIID riid,
                                OLECHAR ** rgszNames,
                                unsigned int cNames,
                                LCID lcid,
                                DISPID * rgDispId
                               ) = 0;
  virtual HRESULT Invoke(DISPID dispIdMember,
                         REFIID riid,
                         LCID lcid,
                         WORD wFlags,
                         DISPPARAMS * pDispParams,
                         VARIANT * pVarResult,
                         EXCEPINFO * pExcepInfo,
                         unsigned int * puArgErr
                        ) = 0;
};
```

**IDispatch**的[接口标识符被定义为](https://zh.wikipedia.org/wiki/接口标识符 "wikilink")[GUID值](https://zh.wikipedia.org/wiki/GUID "wikilink"){00020400-0000-0000-C000-000000000046}。

## 參考資料

## 相關條目

  -
  - [IInspectable](https://zh.wikipedia.org/wiki/IInspectable "wikilink")

  - [IObjectWithSite](https://zh.wikipedia.org/wiki/IObjectWithSite "wikilink")

  - [IOleObject](https://zh.wikipedia.org/wiki/IOleObject "wikilink")

## 外部連結

  - [COM in plain C](http://www.codeproject.com/kb/com/com_in_c1.aspx)

[Category:面向对象的程序设计](https://zh.wikipedia.org/wiki/Category:面向对象的程序设计 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")

1.  Microsoft MSDN: [IDispatch interface](http://msdn.microsoft.com/en-us/library/ms221608.aspx)
2.
3.  Microsoft MSDN: [ActiveX/COM Q\&A December 1995](http://www.microsoft.com/msj/1295/activex1295.aspx)