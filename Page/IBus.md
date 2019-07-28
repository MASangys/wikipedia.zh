**Intelligent Input Bus**，簡稱**IBus**，是
[Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink")
[作業系統下的](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[多語](https://zh.wikipedia.org/wiki/多語 "wikilink")[輸入法平台](https://zh.wikipedia.org/wiki/輸入法 "wikilink")。因為它採用了[-{A](https://zh.wikipedia.org/wiki/匯流排 "wikilink")（Bus）式的架構，所以命名為Bus。

## 目標

IBus 的主要目標如下：

  - 易用、直覺的全功能[輸入法](https://zh.wikipedia.org/wiki/輸入法 "wikilink")[使用者介面](https://zh.wikipedia.org/wiki/使用者介面 "wikilink")
  - 使用驗證方法加強安全性
  - 為輸入法開發者提供一個統一的[介面及](https://zh.wikipedia.org/wiki/介面 "wikilink")[函式庫](../Page/函式庫.md "wikilink")
  - 符合來自不同地域，文化的使用者需求

## 開發動機

在東北亞[開源軟體](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")（OSS）論壇第3工作小組\[1\]提出的「輸入法引擎服務提供者界面規格」（Specification
of IM engine Service Provider
Interface）草案裡\[2\]，能實現以Bus為核心的架構被建議採用。[SCIM](../Page/SCIM.md "wikilink")-1.4
的架構並不被看好，因為它是用C++開發的，因此常常會有C++[應用二進位介面不符合的情況發生](https://zh.wikipedia.org/wiki/應用二進位介面 "wikilink")\[3\]。

從那時起，一些人開始著手開發下一代的輸入法平台，像是蘇哲領導的[IM-Bus](https://zh.wikipedia.org/wiki/IM-Bus "wikilink")，以及胡正的[SCIM-2](https://zh.wikipedia.org/wiki/SCIM-2 "wikilink")，可惜的是它們的開發進度仍然停滯不前。因此，時任[紅帽](https://zh.wikipedia.org/wiki/紅帽 "wikilink")（現任[谷歌](https://zh.wikipedia.org/wiki/谷歌 "wikilink")）的黃鵬開始用[Python](../Page/Python.md "wikilink")開發IBus以實現
IM-Bus提出的構想。IBus
並不完全實現東北亞OSS論壇所建議的函式，而是採用[D-Bus](../Page/D-Bus.md "wikilink")及[Glib來實做](https://zh.wikipedia.org/wiki/Glib "wikilink")。儘管如此，IBus已經開始被OSS社群所接受，[FreeBSD](../Page/FreeBSD.md "wikilink")以及各大[Linux發行版](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")
如[Fedora](../Page/Fedora.md "wikilink")、[Ubuntu](../Page/Ubuntu.md "wikilink")已經將
IBus 納入其套件庫裡。在 Fedora 11 裡，IBus已經成為預設的多語輸入平台\[4\]。

## 系統架構

IBus 是用 C 及 Python 開發的，如此可以避免 C++ ABI transition
問題。IBus主要透過下列三種服務(Service)來提供功能：

  - 輸入法引擎服務：為輸入法本身。
  - 配置服務：管理IBus以及輸入法的設定選項。
  - 控制面板服務：提供諸如語言條，候選字選單等使用者介面。

IBus 使用[D-Bus](../Page/D-Bus.md "wikilink")作 ibus-daemon服務，以及
IM客戶端（像是konsole, gedit, firefox)之間的溝通。 ibus-daemon
透過接受服務登錄，以及發送D-Bus訊息來管理服務及IM客戶端。

IBus支援 [XIM](https://zh.wikipedia.org/wiki/XIM "wikilink") 協議及 Gtk IM
模組以及 [Qt](../Page/Qt.md "wikilink") IM 模組。

## 特點

  - 輸入法引擎可以隨時載入與卸載
  - [Systray](https://zh.wikipedia.org/wiki/Systray "wikilink") 支援
  - [XKB](https://zh.wikipedia.org/wiki/XKB "wikilink") 支援
  - 配置選項更動可即時生效。
  - 提供 C 與 Python 的介面

## 現有輸入法引擎列表

  - ibus-anthy: [日文輸入法](../Page/日文輸入法.md "wikilink")。
  - ibus-array: [行列輸入法](https://zh.wikipedia.org/wiki/行列輸入法 "wikilink")
  - ibus-bopomofo:
    使用注音符號的拼音輸入法，基於ibus-pinyin引擎開發\[5\]，但輸入方式與一般標準智慧形[注音輸入法](../Page/注音輸入法.md "wikilink")（如[新酷音輸入法](../Page/新酷音輸入法.md "wikilink")或微軟新注音）不同。
  - ibus-chewing:
    [新酷音輸入法](../Page/新酷音輸入法.md "wikilink")，智慧形[注音輸入法](../Page/注音輸入法.md "wikilink")。
  - ibus-hangul: 韓文輸入法。
  - ibus-kkc：日文假名漢字轉換輸入法。
  - ibus-m17n: 使用m17n-db的多語輸入法，細節請參閱
    [\#ibus-m17n](https://zh.wikipedia.org/wiki/#ibus-m17n "wikilink")。
  - ibus-pinyin:
    [拼音輸入法](https://zh.wikipedia.org/wiki/拼音輸入法 "wikilink")，為IBus主要開發者所開發。
  - ibus-libpinyin: 是 Red Hat 工程師主導、基於 n-gram 語言模型的整合性泛拼音輸入法引擎。
  - ibus-libzhuyin: 與 ibus-libpinyin 系出同源，支援注音符號輸入，名為「新注音」(New Zhuyin)
    輸入法，是智慧形的[注音輸入法](../Page/注音輸入法.md "wikilink")。
  - ibus-table: 碼表輸入引擎，細節請參閱
    [\#ibus-table](https://zh.wikipedia.org/wiki/#ibus-table "wikilink")。
  - ibus-googlepinyin:
    Google拼音输入法的ibus版本（这个并不是官方的Google输入法，而是由爱好者从Android项目上迁移过来）

### ibus-m17n

ibus-m17n 利用m17n 架構下的輸入法及相對應的圖示來達成多語輸入。由於m17n架構支援上下文(surrounding
tex)t以及輸入狀態(state)。像是泰文輸入法或是其他需要狀態的輸入法就由ibus-m17n來支援。輸入法狀態會顯示在
IBus panel (語言條)上。

### ibus-table

ibus-table 為余鈺煒所開發，針對查表型輸入法所設計的碼表輸入引擎。許多輸入法，不需要像是 ibus-chewing 或是
ibus-pinyin
之類的複雜選字演算法，只需要一個對照表即可運作\[6\]。許多[字形輸入法像是倉頡輸入法及五筆輸入法都由](https://zh.wikipedia.org/wiki/字形輸入法 "wikilink")
ibus-table 所支援。

[IBus_Ubuntu_12.04.1_LTS_CHT.png](https://zh.wikipedia.org/wiki/File:IBus_Ubuntu_12.04.1_LTS_CHT.png "fig:IBus_Ubuntu_12.04.1_LTS_CHT.png")

官方釋出的碼表\[7\]:

  - latex: 使用 latex 語法來輸入特殊符號，ibus-table 自帶
  - compose: 使用 compose letter 及 diacritical mark 來輸入特殊字元，ibus-table 自帶。
  - Array30: [行列30輸入法](https://zh.wikipedia.org/wiki/行列輸入法 "wikilink")。
  - Cangjie:
    [倉頡及速成](https://zh.wikipedia.org/wiki/倉頡輸入法 "wikilink")、三代及五代。
  - Erbi: [二筆輸入法](https://zh.wikipedia.org/wiki/二筆輸入法 "wikilink")。
  - Wubi: [五筆輸入法](https://zh.wikipedia.org/wiki/五筆輸入法 "wikilink")。
  - Yong: [永碼輸入法](https://zh.wikipedia.org/wiki/永碼輸入法 "wikilink")。
  - ZhengMa: [鄭碼輸入法](https://zh.wikipedia.org/wiki/鄭碼輸入法 "wikilink")。

1.可選字由預設的1頁6個換成主流的1頁9個 尋找 `_page_size = 6` 修改為

``` python
        _page_size = 9
```

2.空白鍵跳下一頁選字 尋找 `elif key.code == keysyms.space:` 將下面的

``` python
        o_py = self._editor._py_mode
        sp_res = self._editor.space ()
        #return (KeyProcessResult,whethercommit,commitstring)
        if sp_res[0]:
          self.commit_string (sp_res[1])
         #self.add_string_len(sp_res[1])
          self.db.check_phrase (sp_res[1], sp_res[2])
        else:
          if sp_res[1] == u' ':
        self.commit_string (cond_letter_translate (u" "))
        if o_py != self._editor._py_mode:
          self._refresh_properties ()
        self._update_ui ()
        return True
```

換成

``` python
        res = self._editor.page_down()
        self._update_lookup_table ()
        return res
```

3.backspace鍵 跳上一頁選字 尋找

``` python
        elif key.code == keysyms.BackSpace:
```

將下面的

``` python
          res = self._editor.backspace ()
          self._update_ui ()
```

取代為

``` python
          res = self._editor.page_up ()
          self._update_lookup_table ()
```

4.單一個碼空白鍵自動選字,數字鍵區選字 尋找

``` python
        if key.mask & modifier.RELEASE_MASK:
          return True
        if self._editor.is_empty ():
```

於`return True`與 `if self._editor.is_empty ():`之間 新增

``` python
        if key.code>=65457 and key.code<=65465 :
          key.code-=65408
        elif key.code == keysyms.space and len(self._editor._chars[0])==1:
          key.code=keysyms._1
```

## 缺陷

  - 由於讀取[sqlite詞庫時有大量的IO操作](https://zh.wikipedia.org/wiki/sqlite "wikilink")，ibus-pinyin在系統高負載時輸入時有卡住的現象。
  - 当用户在火狐浏览器文本框输入文字并希望选中文字时，文字将会自动删除\[8\]。

## 參閱

  - [List of input methods for UNIX
    platforms](https://zh.wikipedia.org/wiki/List_of_input_methods_for_UNIX_platforms "wikilink")

  - [输入法](../Page/输入法.md "wikilink")

  - [SCIM](../Page/SCIM.md "wikilink")

  -
  - [Fcitx](../Page/Fcitx.md "wikilink")

## 參考資料

  - [Linux進化特區：Ubuntu 12.04
    從入門到精通](https://books.google.com.tw/books?id=daOrAAAAQBAJ&pg=SA3-PA58&dq=SCIM&hl=zh-TW&sa=X&ei=zd4xVYOXLYbimAXaxICQCA&ved=0CFEQ6AEwBg#v=onepage&q=iBus&f=false)

## 外部链接

  - [IBus 首頁](http://code.google.com/p/ibus/)
  - [IBus Git 源碼](http://github.com/phuang/ibus/tree/master)
  - [Comparison of Chinese Input Method Servers for Unix-like Operating
    Systems](https://web.archive.org/web/20080703182433/http://cle.linux.org.tw/trac/wiki/GcinImCompare)

[Category:输入法](https://zh.wikipedia.org/wiki/Category:输入法 "wikilink")
[Category:中文輸入法平台](https://zh.wikipedia.org/wiki/Category:中文輸入法平台 "wikilink")

1.  [Northeast Asia Open Source Software
    Forum](http://www.neaossforum.org) .
2.  [Specification of IM engine Service Provider
    Interface](http://www.neaossforum.org/menu02_3_1.php) .
3.  [SCIM ABI transition in
    sid](http://lists.alioth.debian.org/pipermail/pkg-ime-devel/2005-August/000276.html).
4.  [Fedora 11 Feature
    List](http://fedoraproject.org/wiki/Releases/11/FeatureList).
5.  [1](http://www.byvoid.com/blog/ibus-pinyin-bopomofo-preview/)
6.  [ibus-table README (in Chinese and
    English)](http://code.google.com/p/ibus/wiki/TableReadme)
7.  [IBus Google
    Downloads](http://code.google.com/p/ibus/downloads/list)
8.  [When Chinese ibus input is on, selecting text on Firefox textareas
    makes the text
    disappear](http://askubuntu.com/questions/620454/when-chinese-ibus-input-is-on-selecting-text-on-firefox-textareas-makes-the-tex)