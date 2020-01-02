> 本文内容由[Borland C++](https://zh.wikipedia.org/wiki/Borland_C++)转换而来。


**Borland C++**是[C++](../Page/C++.md "wikilink")程式的開發環境（可稱之[-{zh-cn:集成开发环境; zh-sg:整合开发环境; zh-hant:整合開發環境;}-](../Page/集成开发环境.md "wikilink")，Integrated Development Environment, [IDE](https://zh.wikipedia.org/wiki/IDE "wikilink")）有 DOS版與 Windows 版。Borland C++的前身是[Turbo C++](../Page/Turbo_C++.md "wikilink")。Borland C++ 最後的版本是5.02。另外，Borland C++ 5.5僅有命令行功能。

## 架構

1992年Borland買下White Water的 C++ Framework，改名為 Object Windows Library（[OWL](https://zh.wikipedia.org/wiki/OWL "wikilink")），並且推出以 OWL 1.0為核心的Borland C/C++ 3.1，OWL使用[多重繼承架構](https://zh.wikipedia.org/wiki/多重繼承 "wikilink")。Borland C++ 5.0同时支持OWL与[MFC](https://zh.wikipedia.org/wiki/MFC "wikilink")。Borland C++ Builder最後取代 Borland C++。

Borland C++ 3.1的-{}-範例-{}-程式：

` class TGDIDemoWindow : public TMDIFrame`
` {`
` public:`
` TGDIDemoWindow( LPSTR ATitle, LPSTR MenuName )`
` : TMDIFrame(ATitle, MenuName) {};`
` virtual void SetupWindow();`
` virtual void ArtyDemo( TMessage& ) =[CM_FIRST + ArtyDemoID];`
` virtual void Quit( TMessage& ) =[CM_FIRST + QuitID];`
` virtual void WMTimer( TMessage& ) =[WM_FIRST + WM_TIMER];`
` virtual void WMDestroy( TMessage& ) =[WM_FIRST + WM_DESTROY];`
` };`

## 版本

  - Borland C++ 2.0 - (1990, MS-DOS)
  - Borland C++ 3.0 - (1991) New compiler support to build Microsoft Windows applications.
  - Borland C++ 3.1 - (1992) Introduction of Windows-based IDE and application frameworks (OWL 1.0, Turbovision 1.0)
  - Borland C++ 4.0 - (1993, Windows 3.x) MS-DOS IDE supported no longer included, OWL 2.0.
  - Borland C++ 2.0 - (1992, OS/2)
  - Borland C++ 4.01
  - Borland C++ 4.02 - (1994)
  - Borland C++ 4.5
  - Borland C++ 4.51
  - Borland C++ 4.52 - (1995) 支援 Windows 95, OWL 2.5
  - Borland C++ 4.53
  - Borland C++ 5.0 - (1996, Windows 95) Released in March 1996. Works on Windows 95 and Windows NT 3.51. It does not (officially) work on Windows NT 4.0 (which was still in development at that time). 3rd party tests exhibited some problems on NT 4.0. It does not work in Windows 3.x or DOS. Despite that, it can produce either Win32, Win16 or DOS programs.
  - Borland C++ 5.01
  - Borland C++ 5.02 - (1997) Final release of the Borland C++ IDE (subsequently replaced up by the C++ Builder series), final release to support compilation to (real-mode) MS-DOS target. Windows NT 4.0 officially supported.
  - Borland C++ 5.5 - Command-line compiler only (not with IDE). It is still (freely) available from Borland at <http://cc.codegear.com/Free.aspx?id=24778>

[Category:集成开发环境](https://zh.wikipedia.org/wiki/Category:集成开发环境 "wikilink")