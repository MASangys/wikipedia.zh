**Vimperator**是[Mozilla Firefox的一个](https://zh.wikipedia.org/wiki/Mozilla_Firefox "wikilink")[扩展](../Page/Firefox扩展列表.md "wikilink")，它为喜欢使用键盘的用户提供了类似于[Vim](../Page/Vim.md "wikilink")的用户界面。它和Vim一样，有着较陡的[学习曲线](https://zh.wikipedia.org/wiki/学习曲线 "wikilink")。

## 特點

Vimperator最獨特的是不需要滑鼠，\[1\] 這是因為它有所謂的*Hint*模式、及自動補齊的[命令行](https://zh.wikipedia.org/wiki/命令行 "wikilink")，以及說明系統。

### Hint模式

[Vimp2_hints.png](https://zh.wikipedia.org/wiki/File:Vimp2_hints.png "fig:Vimp2_hints.png")

Vimperator的hints允許使用者做出通常需滑鼠來完成的動作。在此模式中，所有能被點擊的網頁元素會被編號，使用者可以利用輸入編號或者鏈接中的文字來選擇。一旦元素被選擇，就會執行操作（如點擊、選擇、複製鏈接地址等）。會執行什麼動作由使用者如何進入Hint模式決定。

### 命令列

Vimperator的大多數功能通過視窗底部類似[Vim](../Page/Vim.md "wikilink")的[命令列來完成](https://zh.wikipedia.org/wiki/命令列 "wikilink")。像在Vim中一樣，所有的命令以「:」開始。當使用者輸入「:」，Vimperator就進入「[命令列模式](https://zh.wikipedia.org/wiki/命令列模式 "wikilink")」。常用的命令如下：

  - `:help [主題]` – 提供與`[主題]`相關的說明
  - `:open [位址]` – 在當前標籤打開`[位址]`，位址可以是文件、書籤的關鍵字、或者用搜索引擎搜索。
  - `:back` 和 `:forward` – 根據歷史記錄後退和前進。
  - `:bmark [位址]` – 創建書籤。
  - `:echo [表達式]` – 以[JavaScript](../Page/JavaScript.md "wikilink")的形式運算`[表達式]`並顯示結果。
  - `:set[!] ...` – 顯示或修改Vimperator和Firefox的設置。
  - `:map` – 創建、修改鍵盤快捷鍵。
  - `:highlight` – 改变Vimperator的外观，详见帮助文档第18章：Styling the GUI and web pages
      - eg:为了增大Hint模式下的字体尺寸(font-size)，你可以将Hint (它是 highlight 命令中可使用的一个"group")中的默认font-size由10改至14。

<!-- end list -->

  -

      -
        `:highlight Hint font-family: monospace; font-size: 14px; font-weight: bold; text-transform: uppercase; color: white; background-color: red; border-color: ButtonShadow; border-width: 0px; border-style: solid; padding: 0px 1px 0px 1px;`

<!-- end list -->

  -   - eg:为了增大命令行字体及列表字体尺寸，你可以将Normal(它是 highlight 命令中可使用的一个"group")添加一个font-size参数。

<!-- end list -->

  -

      -
        `:highlight Normal color: black; background: white; font-size:20px`

大多數常用的命令可以被映射成快捷鍵。有些快捷鍵直接執行操作，另一些則進入命令列模式並自動輸入一部分命令。 比如：

  - 快捷鍵「O」打開命令列模式並輸入「`:open`」和當前頁面的[URI](https://zh.wikipedia.org/wiki/URI "wikilink")。
  - 快捷鍵「H」等價於執行命令`:back`。

### 自動補齊

[Vimperator_search.png](https://zh.wikipedia.org/wiki/File:Vimperator_search.png "fig:Vimperator_search.png")

Vimperator提供命令的自動補齊功能。比如在按了快捷鍵「b」後，將進入命令列模式，自動輸入`buffer`命令，並且顯示當前打開的所有標籤頁的列表。只需要輸入標題、位址或者序號的一部分就可以轉到相應標籤。

### 線上說明

[Vimp2_help_open.png](https://zh.wikipedia.org/wiki/File:Vimp2_help_open.png "fig:Vimp2_help_open.png")

因為它的學習曲線較陡，Vimperator提供了一個類似於Vim的線上說明系統。輸入「help」命令就可以進入。或者輸入「:help \[主題\]」來瀏覽和\[主題\]相關的說明。

### 套件系統

Vimperator有自己的套件系統，套件可以使用[JavaScript](../Page/JavaScript.md "wikilink")和Vim腳本編寫，以.vimp為副檔名放在 `~/.vimperator/plugin` 目錄（[Windows中是](https://zh.wikipedia.org/wiki/Windows "wikilink") `%HOME%\vimperator\plugin` ）下。JavaScript的函數可以通過js命令使用，所有JavaScript腳本必須放在「js\<\<EOF」和「EOF」中間。可以在https://web.archive.org/web/20090622191748/http://vimperator.org/trac/wiki/Vimperator/Scripts （英文）下載

## 参见

  - [Vim](../Page/Vim.md "wikilink")编辑器
  - [Conkeror](https://zh.wikipedia.org/wiki/Conkeror "wikilink") – 一个类似[Emacs](../Page/Emacs.md "wikilink")的浏览器
  - [Firefox扩展列表](../Page/Firefox扩展列表.md "wikilink")

## 参考资料

## 外部链接

  - [Vimperator 主页](http://vimperator.org/)

  - [Firefox 附加组件中的 Vimperator 页面](https://addons.mozilla.org/zh-cn/firefox/addon/4891)

  - [Vimperator 中文帮助](https://web.archive.org/web/20140305004908/https://addons.mozilla.org/zh-CN/firefox/addon/vimperator-cn/)

  - [Pentadactyl/Vimperator简明教程](http://xbeta.info/vimperator.htm)

  - [vimpr——Vimperator 插件仓库](http://vimpr.github.io/)

  - [Linux.com: How to control Firefox using Vim keybindings](https://www.webcitation.org/66UkRrkB3?url=http://archive09.linux.com/feature/114419)

  - [Lifehacker.com: Bring VIM-like navigation to Firefox](http://lifehacker.com/software/firefox/bring-vim+like-navigation-to-firefox-252695.php)

[Category:Firefox_附加组件](https://zh.wikipedia.org/wiki/Category:Firefox_附加组件 "wikilink") [Category:Vi](https://zh.wikipedia.org/wiki/Category:Vi "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:使用XUL的軟體](https://zh.wikipedia.org/wiki/Category:使用XUL的軟體 "wikilink")

1.