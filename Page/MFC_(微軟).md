> 本文内容由[MFC \(微軟\)](https://zh.wikipedia.org/wiki/MFC_\(微軟\))转换而来。


**微软基础类库**（，简称**MFC**）是一个[微软公司提供的类库](https://zh.wikipedia.org/wiki/微软公司 "wikilink")（class libraries），以[C++](../Page/C++.md "wikilink")类的形式封装了[Windows API](../Page/Windows_API.md "wikilink")，并且包含一个（也是微软产品的唯一一个）应用程序框架，以减少应用程序开发人员的工作量。其中包含的类包含大量Windows[句柄](../Page/句柄.md "wikilink")封装类和很多Windows的内建控件和组件的封装类。

## 特性

Visual C++包含MFC应用程序向导，可用于兼容MFC的应用程序\[1\]。在ATL程序中也可以手动添加MFC支持\[2\]。在向导中有各种选项以定制生成的程序的功能，例如界面风格、语种、数据库开发支持、打印支持、自动化支持、ActiveX支持、网络支持、基于HTML的帮助文档支持等等。

在[COM开发方面](https://zh.wikipedia.org/wiki/COM "wikilink")，相对于ATL来说，MFC的组件比较大，代码不够短小精悍，但是支持的功能也比较多，例如有对[ActiveX Document的封装类](https://zh.wikipedia.org/wiki/ActiveX_Document "wikilink")\[3\]。

在界面开发方面，MFC提供对消息循环的封装，使用消息映射来避免虚函数的开销。MFC也提供常用Windows通用控件的封装类。

MFC扩展DLL的接口使得MFC程序可以直接调用MFC扩展DLL中的MFC类。MFC也支持在标准DLL中被使用。

## 发展

MFC是在1992年随微软的Microsoft C/C++ 7.0编译器发布的，用于面向16位元Windows的软件开发。起初，MFC是作为一个应用程序框架开发的，所以定名为Application Framework eXtensions（AFX）。\[4\]

随着[Visual Basic和](../Page/Visual_Basic.md "wikilink")[Visual Studio .NET的发布](https://zh.wikipedia.org/wiki/Visual_Studio_.NET "wikilink")，曾经一度被微软重点推荐的MFC被[Visual Basic .NET](../Page/Visual_Basic_.NET.md "wikilink")、[C\#](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")、[Windows Forms抢走了不少市场份额](../Page/Windows_Forms.md "wikilink")，但是MFC继续在非托管软件开发中占据重要地位。在托管开发方面，MFC中也包括对Windows Forms和托管／非托管互操作的封装。微软在[Windows Vista和](../Page/Windows_Vista.md "wikilink")[Windows 7发布之后在MFC中增加了对新的](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")[Windows API支持](../Page/Windows_API.md "wikilink")\[5\]\[6\]。

## MFC的优点

MFC的主要优点是可以用[面向对象的方法来调用Windows](https://zh.wikipedia.org/wiki/面向对象 "wikilink") API，以及能够更加便捷地开发应用程序。MFC将很多应用程序开发中常用的功能自动化，并且提供了文档框架视图结构和活动文档这样的便于自定义的应用程序框架。同时，在Visual C++内部也内建了很多对MFC的例如[类向导这样的支持以减少软件开发的时间](https://zh.wikipedia.org/wiki/类向导 "wikilink")，使用类向导可以快速生成Hello World程序。

## MFC的缺点

虽然MFC的源代码对用户是完全开放的，但是MFC的一些封装过程过于复杂，以致于新用户很难迅速掌握MFC的应用程序框架，以及在调试中定位问题的位置。同时，很多MFC对象不是[线程安全](../Page/线程安全.md "wikilink")的，致使在跨[线程](../Page/线程.md "wikilink")访问MFC对象时需要编写额外的代码。另外，MFC的很多类依赖于应用程序向导生成的代码，使得在使用Visual C++中其他类型的应用程序向导生成的工程中添加MFC支持的难度大大增加。

## 第三方支持

很多商用类库在MFC的基础上进一步实现了皮肤、渐变风格、多顶层窗口程序、属性列表等较受欢迎的功能；同时，在C++在线社区中，很大一部分开放的源代码也是基于MFC的。

## 版本

| 產品版本                                                                                                                  | MFC版本                                                                                    |
| --------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| Microsoft C/C++ 7.0                                                                                                   | MFC 1.0 （1992年）                                                                          |
| Visual C++ 1.0                                                                                                        | MFC 2.0                                                                                  |
| Visual C++ 1.5                                                                                                        | MFC 2.5                                                                                  |
| Visual C++ 1.51                                                                                                       | MFC 2.51                                                                                 |
| Visual C++ 1.52c                                                                                                      | MFC 2.5 （用于[Windows 3.x平台的最后一版](../Page/Windows_3.x.md "wikilink")）                      |
| Visual C++ 2.0                                                                                                        | MFC 3.0                                                                                  |
| Visual C++ 2.1                                                                                                        | MFC 3.1                                                                                  |
| Visual C++ 2.2                                                                                                        | MFC 3.2                                                                                  |
| Visual C++ 4.0                                                                                                        | MFC 4.0（mfc40.dll包含於[Windows 95](../Page/Windows_95.md "wikilink")）                      |
| Visual C++ 4.1                                                                                                        | MFC 4.1                                                                                  |
| Visual C++ 4.2                                                                                                        | MFC 4.2（mfc42.dll包含於[Windows 98第一版](../Page/Windows_98.md "wikilink")）                   |
| eMbedded Visual C++ 3.0（Pocket PC）                                                                                    | MFC 4.2（mfc42.dll）                                                                       |
| Visual C++ 5.0                                                                                                        | MFC 4.21（mfc42.dll）                                                                      |
| Visual C++ 6.0                                                                                                        | MFC 6.0（mfc42.dll）1998年                                                                  |
| eMbedded Visual C++ 4.0                                                                                               | MFC 6.0（mfcce400.dll）                                                                    |
| Visual C++ .NET 2002 (Visual C++ 7.0)                                                                                 | MFC 7.0（mfc70.dll） [.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 1.0             |
| Visual C++ .NET 2003 (Visual C++ 7.1)                                                                                 | MFC 7.1（mfc71.dll）[.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 1.1              |
| Visual C++ 2005<sup>[1](https://zh.wikipedia.org/wiki/#nomfc "wikilink")</sup>                                        | MFC 8.0.50727.42（mfc80.dll） [.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 2.0    |
| Visual C++ 2008<sup>[1](https://zh.wikipedia.org/wiki/#nomfc "wikilink")</sup>                                        | MFC 9.0.21022（mfc90.dll）                                                                 |
| Visual C++ 2008 (Visual C++ 9.0)（包含Feature Pack）<sup>[2](https://zh.wikipedia.org/wiki/#featurepack "wikilink")</sup> | MFC 9.0.30411（mfc90.dll） [.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 3.5       |
| Visual C++ 2010<sup>[1](https://zh.wikipedia.org/wiki/#nomfc "wikilink")</sup>                                        | MFC 10.0.30319.1（mfc100.dll） [.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 4.0   |
| Visual C++ 2012<sup>[1](https://zh.wikipedia.org/wiki/#nomfc "wikilink")</sup>                                        | MFC 11.0.50727.1（mfc110.dll） [.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 4.5   |
| Visual C++ 2013<sup>[1](https://zh.wikipedia.org/wiki/#nomfc "wikilink")</sup>                                        | MFC 12.0.21005.1（mfc120.dll） [.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 4.5.1 |
| Visual C++ 2015<sup>[1](https://zh.wikipedia.org/wiki/#nomfc "wikilink")</sup>                                        | MFC 14.0.23026.0（mfc140.dll）[.Net](https://zh.wikipedia.org/wiki/.Net "wikilink") 4.6    |

  - <sup>1</sup> Visual Studio速成版（Express）不包含MFC库。

  - <sup>2</sup> Feature Pack只用于英文版本的Visual Studio 2008。非英文版本的支持将包含于Visual Studio 2008 Service Pack 1。

## MFC的结构

作为一个应用程序的开发框架，必须满足各方面的功能需求。

### 应用程序启动

基于MFC开发的应用程序在启动时，Windows操作系统：

1.  首先调用WinMain函数（位于appmodul.cpp中，封装到mfc80.dll（VS2005版）），WinMain函数内调用了AfxWinMain函数。
2.  AfxWinMain函数（位于WinMain.cpp中）调用了
    1.  该应用程序自定义的App类（这个类派生于CWinApp的，CWinApp又是派生于CWinThread，因此代表了应用程序的主线程）的InitInstance函数，该函数注册并创建窗口（通过AppUI2.cpp中的ProcessShellCommmand函数)，然后ShowWindow、UpdateWindow;
    2.  CWinThread的InitInstance函数；
    3.  CWinThread的Run函数（位于thrdcore.cpp中）。该函数内部是Windows的[消息循环](https://zh.wikipedia.org/wiki/Microsoft_Windows的消息循环 "wikilink")。 当应用程序收到WM_QUIT消息后，CWinThread::Run函数返回，紧接着CWinThread::ExitInstance被调用，该函数可被覆盖。程序至此退出运行。 消息循环是一个for(;;)的死循环，该死循环内部包含了一个do...while的循环结构。while循环条件是调用PeekMessage函数的返回值，如果当前UI线程消息队列为空就返回到外层的死循环；while循环体内做两件事：
        1.  PumpMessage()。实际调用AfxInternalPumpMessage函数实现其功能：GetMessage()、AfxPreTranslateMessage()、TranslateMessage()、DispatchMessage().即：从UI线程消息队列移除一条消息、遍历该消息的CWnd类直到该窗口的各级别父窗口的CWnd类以提供预处理该消息的机会、如果该消息是按键消息则翻译为WM_CHAR消息、把该消息给相应的窗口函数。
        2.  IsIdleMessage()：实际调用了AfxInternalIsIdleMessage函数，对于WM_PAINT、WM_SYSTIMER、以及光标位置没有变化的WM_MOUSEMOVE或WM_NCMOUSEMOVE，为Idle Message。
    4.  各个窗口函数（WndProc）内部首先获取对应当前窗口句柄的CWnd类的指针，然后调用AfxCallWndProc函数。

### 消息循环与消息映射

[MFC_hierarchy.png](https://zh.wikipedia.org/wiki/File:MFC_hierarchy.png "fig:MFC_hierarchy.png")

#### 消息分类

| 分类                                                      | 消息                                                                | 映射宏                                                               | 消息处理函数原型                                                                             | 注释              |
| ------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------------ | --------------- |
| rowspan = "13"|系统消息                                     | 标准Windows消息                                                       | MFC使用专用的相关的宏。如ON_WM_CREATE()                                    | MFC使用专用的消息处理成员函数                                                                     | 一般地由窗口对象来处理这类消息 |
| rowspan = "7"|命令消息 WM_COMMAND                          | ON_COMMAND(id, memberFxn)                                        | void OnXXX ()                                                     | 通过标识符ID来区分来自哪个菜单项、工具栏按钮或者加速键等                                                        |                 |
| ON_COMMAND_RANGE(id, idLast, memberFxn)               | void OnXXX (UINT id)                                              | 批量处理一定范围内的标示符ID                                                   |                                                                                      |                 |
| ON_UPDATE_COMMAND_UI(id, idLast, memberFxn)          | void OxXXX(CCmdUI\* pCmdUI)                                       | 程序空闲时发的界面更新消息的宏                                                   |                                                                                      |                 |
| ON_UPDATE_COMMAND_UI_RANGE(id, idLast, memberFxn)   | void OxXXX(CCmdUI\* pCmdUI)                                       |                                                                   |                                                                                      |                 |
| ON_CONTROL(id, idLast, memberFxn)                      | void OnXXX ()                                                     | 父窗口响应控件发送的消息                                                      |                                                                                      |                 |
| ON_CONTROL_RANGE(id, idLast, memberFxn)               | void OnXXX (UINT id)                                              |                                                                   |                                                                                      |                 |
| ON_CONTROL_REFLECT(id, idLast, memberFxn)             | void OnXXX ()                                                     | 子控件响应父窗口反射回来的通知消息                                                 |                                                                                      |                 |
| rowspan = "5"|通知消息WM_NOTIFY                            | ON_NOTIFY(wNotifyCode,id,memberFxn)                              | afx_msg void memberFxn(NMHDR \* pNotifyStruct, LRESULT\* result) | wParam为控件ID，lParam指向NMHDR结构体，结构体的code域值为控件通知码用来表示控件上的动作，如NM_CLICK.一般地由父窗口对象来处理这类消息。 |                 |
| ON_NOTIFY_RANGE( wNotifyCode, id, idLast, memberFxn ) |                                                                   | 可手工添加（class wizard不支持）,处理控件id连续的一批控件的同一通知码消息。                     |                                                                                      |                 |
| ON_NOTIFY_EX                                          |                                                                   | rowspan = "2"|允许通知消息在多处被处理                                        |                                                                                      |                 |
| ON_NOTIFY_EX_RANGE                                   |                                                                   |                                                                   |                                                                                      |                 |
| ON_NOTIFY_REFLECT                                     | afx_msg void memberFxn(NMHDR \* pNotifyStruct, LRESULT\* result) | 复杂子控件响应父窗口反射回来的通知消息                                               |                                                                                      |                 |
| rowspan = "4"|自定义消息                                     | 窗口类内部自定义消息WM_USER到WM_APP-1                                      | ON_MESSAGE(消息名,memberFxn)                                        | afx_msg LRESULT OnMyMessageXXX(WPARAM wParam, LPARAM lParam)                        | 示例              |
| rowspan = "2"|程序内部自定义消息WM_APP到0xBFFF                   | ON_THREAD_MESSAGE(WM_THREADMSG,OnThreadMessage)                | afx_msg void OnThreadMessage(WPARAM wParam,LPARAM lParam);       | 示例                                                                                   |                 |
| ON_REGISTERED_THREAD_MESSAGE                         | afx_msg void OnMyRegisterdThreadMsg(WPARAM, LPARAM);             | RegisterWindowMessage()使用一个字符串来登记一个自定义的消息ID                       |                                                                                      |                 |
| 应用程序之间自定义消息0xC000到0xFFFF                                | ON_REGISTERED_MESSAGE                                           | LRESULT OnMyMessageXXX(WPARAM wParam, LPARAM lParam)              | RegisterWindowMessage()使用一个字符串来登记一个自定义的消息ID，便于跨进程应用                                  |                 |

#### 控件的通知消息与反射消息

窗体上的控件，应当向父窗体通报控件发生的各种事件，如被点击、绘制、内容改变等等，称为**通知消息**（notification message ）。在 Windows 3.x的16位程序设计时代，控件向父窗体发送WM_COMMAND消息，由父窗体的代码负责实现这些事件。其中wParam的低16位是 control ID，高16位是notification code (例如BN_CLICKED)；lParam是控件句柄。因此，再无可能传递其它信息给父窗体。为此，为传递具有特别内容的控件事件，定义了一批特殊的通知消息(notification messages)：

  - WM_PARENTNOTIFY:子窗口的某些重大事件发生时通知父窗口，包括创建、销毁、鼠标各键按下等事件
  - 子窗口的滚动情况的通知消息
      - WM_VSCROLL
      - WM_HSCROLL
  - 子窗口的绘制通知消息
      - WM_DRAWITEM,
      - WM_MEASUREITEM,
      - WM_COMPAREITEM,
      - WM_DELETEITEM,
      - WM_CHARTOITEM,
      - WM_VKEYTOITEM
      - WM_CTLCOLOR：设置按钮、编辑框、ListBox、Static、滚动条控件与MessageBox、DialogBox的前景色、背景色、背景模式、字体，并返回一把Brush，用于控件背景绘制。

早于4.0版本的MFC，在控件类提供了虚函数处理这些通知消息，这一办法已经被下述的“消息反射”取代。

随着[Windows 95开始了](../Page/Windows_95.md "wikilink")32位程序时代，伴之而来的是Win32 API 与 MFC 4.0。 Win32增加了很多复杂的控件，需要使用更多的通知消息传递很多复杂的数据给父窗体。Win32 API仅仅增加了一个消息WM_NOTIFY，就实现了这些功能。lParam参数开头是NMHDR数据结构，其后是与该通知类型相关的特定数据结构。

``` cpp
typedef struct tagNMHDR {
    HWND hwndFrom;
    UINT idFrom;
    UINT code;
} NMHDR;
```

MFC 4.0提供了一种特性“**消息反射**”（message reflection），\[7\]允许控件通知消息既可以在父窗口中，也可以在控件中被处理。可以对控件创建一个派生的控件类，实现对从父窗口反射回来的指定类型消息的处理。消息反射是MFC而不是Win32的特性，因此父窗口的类必须是从CWnd派生，从而父窗口在CWnd::OnNotify函数中处理控件的WM_NOTIFY时，首先调用CWnd::ReflectLastMsg把消息反射回控件的CWnd::SendChildNotifyLastMsg函数去处理；ReflectLastMsg返回值就是在控件的消息映射中使用ON_NOTIFY_REFLECT_EX()声明的反射消息处理函数的返回值，可以通知父窗口该消息是否已经被控件处理。控件的CWnd::SendChildNotifyLastMsg函数，首先获得线程的最后一条message，然后调用发送窗口的虚函数OnChildNotify函数。在子窗口处理反射回来的控件消息，第一种方法是重载控件窗口的OnChildNotify[虚函数](../Page/虚函数.md "wikilink")；第二种办法是由CWnd::OnChildNotify默认处理去调用CWnd::ReflectChildNotify函数，进入控件子窗口的MFC消息映射的标准处理（子窗口处理的消息被译成WM_REFLECT_BASE+WM_NOTIFY消息）。对于WM_NOTIFY，仅当在控件的消息映射（message map）中，控件没有通过ON_NOTIFY_REFLECT()声明的反射消息处理函数，父窗口的相应的通知消息处理函数才会被调用（在父窗口消息映射中使用宏ON_NOTIFY声明）。控件中通过ON_NOTIFY_REFLECT_EX()声明的反射消息处理函数可以返回真或假，以决定父窗口是否继续处理该通知消息。WM_NOTIFY以外的其它通知消息，父窗口在第一时间有机会处理它，控件对它的处理排在第二位。反射消息处理函数通常使用特定的名字，对应的消息反射宏的名字是在消息名字加上前缀ON_，后缀_REFLECT。如WM_CTLCOLOR对应ON_WM_CTLCOLOR_REFLECT。但以下三种情况，反射消息处理函数可以随意自行起名，对应的消息反射宏的名字分别为：

  - WM_COMMAND使用ON_CONTROL_REFLECT
  - WM_NOTIFY使用ON_NOTIFY_REFLECT
  - ON_UPDATE_COMMAND_UI使用ON_UPDATE_COMMAND_UI_REFLECT

#### 消息传递处理机制

MFC类体系中，Windows消息传递处理机制是基于CCmdTarget类及其派生类的静态成员函数GetThisMessageMap()内部定义的静态数据成员：

  - 成员类型为AFX_MSGMAP_ENTRY的数组_messageEntries。在类的实现文件中，在BEGIN_MESSAGE_MAP与END_MESSAGE_MAP之间的内容来初始化消息映射入口项数组。
  - 数据类型为AFX_MSGMAP的变量messageMap。该结构包含两项，分别是直接基类GetThisMessageMap函数指针与本类的_messageEntries数组首元素地址。

在[头文件](../Page/头文件.md "wikilink")的类定义中使用宏DECLARE_MESSAGE_MAP()来声明静态成员函数GetThisMessageMap与虚函数GetMessageMap

用户所写的类的Windows消息处理函数（例如OnCommand）必须转换为CCmdTarget::\*的[成员函数指针类型AFX](https://zh.wikipedia.org/wiki/成员函数指针 "wikilink")_PMSG，保存在该类的_messageEntries数组中。

``` cpp
struct AFX_MSGMAP_ENTRY
{
    UINT nMessage;   // windows消息代号
    UINT nCode;      // WM_NOTIFY的控制代码
    UINT nID;        // WM_COMMAND下面的ID号，如果为其他的消息，则这个数字为0
    UINT nLastID;    //和前面的ID一起组成一个范围，用于发送一次消息，处理执行多次
    UINT nSig;       // 标志消息处理函数的类型
    AFX_PMSG pfn;    // 函数调用指针
};
typedef void (CCmdTarget::*AFX_PMSG)(void);
```

调用用户类中该消息处理函数时，根据该函数保存在_messageEntries中的signature（一个无符号整型表示的函数的形参类型列表与返回值类型），把类型为void (CCmdTarget::\*AFX_PMSG)(void)的成员函数指针强制转为其它类型的CCmdTarget成员函数指针（例如void (AFX_MSG_CALL CWnd::\*pfn_v_i_i)(int, int)，目前在union MessageMapFunctions中列出了近百种CCmdTarget成员函数指针），然后调用转换后的成员函数指针。这是基于Visual C++编译器把单继承的成员函数指针编译为只保存了函数的内存起始地址，因此可以在同一个单继承类中把一种类型的成员函数指针强制转换为另一种成员函数指针，或者把单继承派生类的成员函数指针强制转换为基类成员函数指针。这是打破了C++标准的违例办法。例如，对于CWnd::OnCommand函数，转换过程是：

``` cpp
BOOL (CWnd::*)(WPARAM, LPARAM lParam) => void (CWnd::*)() => void (CCmdTarget::*)()
```

## CString

CString是MFC中最常见的类之一，用于封装字符串数据结构。它只有一个数据成员m_pszData，其值为字符串的首地址，其数据类型为wchar_t\*或char\*。在CString的m_pszData的前面实际还分配了CSringData数据块，包含了`IAtlStringMgr* pStringMgr; int nDataLength; int nAllocLength; int nRefs;`等管理数据。CAtlStringMgr提供内存管理，CStringData提供共享管理。而更上层的CString提供字符串操作。CAtlStringMgr的一个成员是IAtlMemMgr接口，这是[策略模式](../Page/策略模式.md "wikilink")，可以引用某个内存管理类。CAtlStringMgr的另一个成员是CNilStringData。

因此，每次为CString动态分配地址空间，实际分配长度为:`(nChars+1)*nCharSize+sizeof(CStringData)`。当执行CString的默认构造函数生成一个空串时，实际上都是构造一个CnilStringData对象。

部分编译器对std::string放弃了[写时复制](https://zh.wikipedia.org/wiki/写时复制 "wikilink")（Copy On Write）机制。但是，CString一直采取这一机制。GetString方法返回的是只读的字符串地址；而GetBuffer方法返回的是**可写**的字符串地址，如果修改了字符串内容，这时需要调用ReleaseBuffer方法把新的字符串长度修改到元数据中。

CString对象用作可变参数函数（如printf）的实参时，由于无法通过形参类型确定调用哪个CString的类型转换操作符函数，因此有必要显式指明要转换的类型。如果需要在函数的参数传递CString，由于CString使用了引用计数，因此函数参数传递一个CString对象是可行的；需要修改其内容时，推荐使用const CString&。

## 支持MFC的DLL开发

使用Visual C++可以开发3种DLL:

  - 不使用MFC的DLL；
  - 使用MFC的规则的DLL：输出的函数不涉及MFC，因此可以被支持/不支持MFC的应用程序调用该DLL
      - 动态链接到MFC（Regular DLLs dynamically linked to MFC）。
      - 静态链接到MFC（Regular DLLs statically linked to MFC）
  - 使用MFC的扩展DLL（Extension DLLs），只能动态链接到MFC：输出的函数涉及MFC，也可以输出基于MFC的派生类。

由于DLL与调用它的应用程序都可以有自己的MFC全局数据与句柄映射（handle mapping），如果句柄值相同，则默认使用应用程序的映射到的资源。为了不互相干扰，允许DLL内部使用自己的资源，必须在DLL函数的入口处把资源模块句柄从默认的应用程序切换为该DLL。办法是：

1.  在该DLL的每个输出的函数的最开始之处调用`AFX_MANAGE_STATE(AfxGetStaticModuleState( ))`\[8\]。函数AfxGetStaticModuleState的功能是在运行栈上创建一个AFX_MODULE_STATE类的实例，对其进行设置，函数返回值为AFX_MODULE_STATE的指针。AFX_MODULE_STATE类利用其构造函数和析构函数进行模块状态现场存储及恢复。
2.  使用AfxGetResourceHandle();获取当前资源模块句柄。使用AfxSetResourceHandle(HINSTANCE xxx); 设置程序要使用的资源模块句柄。

## 常用头文件与库文件

  - STDAFX.H 载入其他MFC头文件。
  - AFXWIN.H 它和它载入的文件声明了所有的MFC类。其内包含AFX.H，后者包含了AFXVER_.H，后者又载入了AFXV_W32.H，后者又载入WINDOWS.H。
  - AFXEXT.H 使用工具栏、状态栏的程序必须载入这个文件
  - AFXDLGS.H 通用对话框（Common dialog）的MFC程序需要载入此文件。它内部包含COMMDLG.H
  - FXCMN.H 通用控件（common control）的MFC程序需要载入此文件。
  - AFXCOLL.H 使用MFC提供的容器都需要载入此文件。
  - AFXDLLX.H 凡使用MFC extension DLLs需要载入此文件。
  - AFXRES.H MFC程序的RC文件必须载入此文件。此文件中对于标准资源的ID都有默认值。它们定义于此文件中。

## 参考和引用

  - [ATL](https://zh.wikipedia.org/wiki/ATL "wikilink")
  - [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink")
  - [Visual Studio .NET](https://zh.wikipedia.org/wiki/Visual_Studio_.NET "wikilink")
  - [Object Windows Library](../Page/Object_Windows_Library.md "wikilink")

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink")

1.  [MFC应用程序向导](http://msdn.microsoft.com/zh-cn/library/te3z014d.aspx)
2.  [HOWTO:给ATL项目添加MFC支持](http://support.microsoft.com/kb/173974)
3.  [Recommendations for Choosing Between ATL and MFC](http://msdn.microsoft.com/en-us/library/bk8ytxz5.aspx)
4.  Upgrading Relational Databases with Objects, Robert Vermeulen著, 126页
5.  [MFC Updates for Vista Common Controls](http://blogs.msdn.com/vcblog/archive/2007/03/21/mfc-updates-for-vista-common-controls.aspx)
6.  [Making your application sparkle with Windows 7](http://blogs.msdn.com/somasegar/archive/2009/10/02/making-your-application-sparkle-with-windows-7.aspx)
7.  \[<https://msdn.microsoft.com/EN-US/library/eeah46xd(v=VS.140,d=hv.2>).aspx MSDN TN062: Message Reflection for Windows Controls\]
8.  [MSDN:Module States of a Regular DLL Dynamically Linked to MFC](https://msdn.microsoft.com/en-us/library/w25be484.aspx)