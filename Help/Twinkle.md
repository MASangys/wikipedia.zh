**Twinkle** 是一个基于 [JavaScript](../Page/JavaScript.md "wikilink")
的工具，有助于提高编者的效率。关于 Twinkle
的详细信息和安装方法，请参见[维基百科:Twinkle](https://zh.wikipedia.org/wiki/维基百科:Twinkle "wikilink")。请注意，本地化的
Twinkle 無法在 [Internet Explorer](../Page/Internet_Explorer.md "wikilink")
上運作。

当您完成安装 Twinkle 后，您在打开不同页面时，会在页面顶部出现 TW 标识，并看到一系列不同的选项卡或链接。

## 安装

安装 Twinkle
很简单，请参考[维基百科:Twinkle中的指示](https://zh.wikipedia.org/wiki/维基百科:Twinkle "wikilink")。

在您开始使用 Twinkle 前，您应该**认真阅读此页以了解 Twinkle 的功能及使用時機**。有许多的配置选项允许您更改 Twinkle
的默认行为。

**注意**：不要忘了，您对于 Twinkle
所有操作造成的后果**负有责任**。您必须**[了解维基百科的方针与指引](https://zh.wikipedia.org/wiki/WP:方针与指引 "wikilink")**并且在方针的约束下使用
Twinkle，否则您可能**会被封禁**。

### 练习使用Twinkle

有几个沙盒能帮助您测试 Twinkle 的强大功能：

  - 测试条目标记，请使用[沙盒](https://zh.wikipedia.org/wiki/WP:SB "wikilink")。
  - 测试用户页相关功能（警告用户、以及
    Talkback），请使用[用户讨论页警告沙盒](https://zh.wikipedia.org/wiki/User_talk:Sandbox_for_user_warnings~zhwiki "wikilink")。

注意：请不要在上述沙盒执行**速删**、**提删**，或者**请求保护**的操作，因为这些会真的通知到管理员。并且，不要在沙盒页面进行**取消反链**的操作，因为这将移除所有到沙盒的链接。

### 安装故障解答

Twinkle安装失败的可能原因：

  - 您必须已登录，并且至少获得[自动确认用户权限](https://zh.wikipedia.org/wiki/Wikipedia:用户权限级别 "wikilink")。
  - 您必须使用支持的浏览器，本地化的 Twinkle 不喜欢 Internet Explorer。
  - 如果您使用旧版本的
    [Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")、[Safari](../Page/Safari.md "wikilink")
    或者 [Firefox](../Page/Firefox.md "wikilink") 浏览器，请尝试启用 JavaScript
    标准库，位于系统设置页面的小工具选单中。
  - 安装之后，您可能需要清除您的浏览器缓存。
  - 如您进行了手动安装，需要提醒您 Twinkle 必须安装在[您的 **skin.js**
    文件](https://zh.wikipedia.org/wiki/Special:MyPage/skin.js "wikilink")（*不是*
    .css）中。
  - 如果您没有使用小工具并更换了皮肤，请确保您的[脚本文件有导入](https://zh.wikipedia.org/wiki/Special:MyPage/skin.js "wikilink")
    Twinkle 组件。
  - 如果您使用 Windows 且正在使用觸控螢幕，您可能需要長按 "TW" 按鈕來顯示選單。

如果您尝试了上方的建议，但仍无法使用
Twinkle，或者您发现有其他问题，请至[Twinkle工具讨论处](https://zh.wikipedia.org/wiki/Wikipedia_talk:Twinkle "wikilink")。并且如有必要，请将问题发布于此。如果您要这样做，请提供以下信息：

1.  您看-{}-到了什么？
2.  您希望看到什么？
3.  怎样才能重现错误的内容或者行为？请*准确*说明您做了和看到什么。
4.  确认您已经清除过浏览器缓存。
5.  注明您的浏览器及其版本、操作系统及其版本。
6.  注明您浏览器显示的 JavaScript 错误内容。这一点可以在浏览器的错误控制台或者 JavaScript
    控制台找到，复制相关的错误信息。以下是各浏览器错误控制台的位置：
      - [Firefox](../Page/Firefox.md "wikilink")：菜单→工具→故障控制台（或
        Firefox按钮→网络开发者→错误控制台）。您应该按位于上方的“错误”按钮来隐藏可以忽略的大量警告。
      - [Opera](https://zh.wikipedia.org/wiki/Opera電腦瀏覽器 "wikilink")：菜单→页面→开发人员工具→错误控制台。
      - [Chrome](../Page/Google_Chrome.md "wikilink")：页面菜单→开发人员→JavaScript
        控制台（Ctrl+Shift+J）。
      - [Safari](../Page/Safari.md "wikilink")：页面菜单→开发→显示错误控制台（Ctrl+Alt+C
        或 Shift+Command+J）。您可能需要先在首选项→高级中启用它。

我们强烈建议您阅读 <http://www.chiark.greenend.org.uk/~sgtatham/bugs.html>
以获得关于如何有效地报告错误的建议，以确保你所描述的问题可以被尽快解决。

### 安装单独的Twinkle模块

在早期版本，Twinkle
允许单独安装一些模块，但目前已無法再透過此方法安裝，請改用[**此連結**提供的方法來安裝](https://zh.wikipedia.org/wiki/Wikipedia:Twinkle "wikilink")。

## 模块

Twinkle被设计成基于模块的工具，每个模块都对特定的任务提供了更快的解决方案。大多数模块可以通过页面顶部的标签来访问（在 Monobook
皮肤中），或者在靠近搜索框的「TW」弹出式菜单中（在 Vector 皮肤中）。

### 速刪

[Twinkle-csd-dialog.png](https://zh.wikipedia.org/wiki/File:Twinkle-csd-dialog.png "fig:Twinkle-csd-dialog.png")

**速刪**代表**快速删除（CSD，Criteria for Speedy
Deletion）**。如果您认为文章符合快速删除的标准之一，您可以使用
Twinkle 的这个功能来提请速删。

#### 使用方法

點擊「速删」按钮。您将可以看到一个速删原因列表，這取决于不同名称空间而有所不同。在過去，当您选择了一项理由后，Twinkle
就会立即提请速删；现在您必须在选择理由后点击提删按钮。关于这一点，可以在 Twinkle
设置中修改。如果需要额外信息（比如说理由等等）时，Twinkle 可能会提示您。然后 Twinkle
就會在页面上標示適合的速删模板。

  - 如果您选中了**如果可能，通知页面创建者**，根據[快速删除守则](https://zh.wikipedia.org/wiki/WP:快速删除守则 "wikilink")，页面创建者將会收到警告模板。如果创建者的讨论页不存在，同时對方也会收到[欢迎訊息](https://zh.wikipedia.org/wiki/Template:welcome "wikilink")（但會使用
     模板）。在一般情况下，不用取消勾選“通知页面创建者”；然而，有时候必須考虑到，通知用户并不適合（參見
    [:en:WP:DTTR](https://zh.wikipedia.org/wiki/:en:WP:DTTR "wikilink")），所以要小心使用。
  - **应用多个理由**
    选项位于窗口上方。当其被选中时，所有理由前的单选框将变为复选框，以便您标记多个理由。当标记完成后，点击「提交」将更改应用到页面中。
  - 在您的 Twinkle 设置中，您可以开启 CSD
    **用户空间日志**。此功能将在您的用户名字空间下记录您提报过的所有快速删除记录。由于已删除页面并不会出现在您的用户贡献中，所以非管理员用户仅能通过此方法来查看其标记过的快速删除页面，并检查其中有多少个已被删除。它也可用来检查被驳回的速删请求（页面内蓝色的连接），并从中提升您标记的质量。
  - 在标记一个快速删除时，其页面默认**不会**加入到您的**监视列表**中。您可以在参数设置中启用它，或是选择在您使用哪些理由时才自動加入。另外，如果一個拥有[巡查权的用戶從](https://zh.wikipedia.org/wiki/WP:PATROL "wikilink")[Special:最新页面進入條目](https://zh.wikipedia.org/wiki/Special:最新页面 "wikilink")，在标记速删时页面会默认地被标记为已巡查。当然，您也可以在参数设置中禁用它。

#### 注意

  - Twinkle 的速删功能提供了一套简单的在页面悬挂速删模板的方法。然而，要时刻提醒自己你在使用 Twinkle
    对维基百科造成的**所有**更改**负有责任**，所以在用 Twinkle
    将页面悬挂速删模板前请再三思考，并且要记住[不要伤害新手](https://zh.wikipedia.org/wiki/Wikipedia:不要伤害新手 "wikilink")。
  - 当标注某些标记时（如 G8 和 G15）Twinkle
    不会通知页面创建者。这是出于避免额外打扰页面创建者的目的，或者可能适得其反。如果您真的想用它们，可以在您的
    Twinkle 设置中设置使用哪些速删理由时通知页面创建者，但請注意某些警告模板实际上并不存在。

#### 管理员附加功能

管理员可以使用 Twinkle 來删除页面（且可使其讨论页和重定向页一併刪除），在執行删除前可以修改删除原因。

### 保护

[Twinkle-rpp-dialog.png](https://zh.wikipedia.org/wiki/File:Twinkle-rpp-dialog.png "fig:Twinkle-rpp-dialog.png")

**[请求页面保护](https://zh.wikipedia.org/wiki/Wikipedia:RFPP "wikilink")（RFPP，Request
for Page
Protection）**，此功能可用於请求保护或解除保護当前页面，通常用于被严重破坏的页面或是可能因現實事件而導致的高流量页面。

#### 使用方法

點擊「保護」按鈕。您需要先選擇**操作類型**，這會影響接下來的選項。

  - **請求保護頁面**：如果您想要經由
    [Wikipedia:RFPP](https://zh.wikipedia.org/wiki/Wikipedia:RFPP "wikilink")
    來請求保護的話，請使用此選項。您必須選擇**保護類型**，接著選擇保護期限（永久或暫時）並可在下方欄位寫明理由。
  - **用保护模板标记此页**：您將可以選擇**標記選項**。您可以選擇保護模板，或是

:\*勾選**使用图标（small=yes）**，這會在條目右上方顯示一個小鎖圖案來取代文字模板

:\*選擇**用\<noinclude\>包裹保护模板**，以避免此頁面被[包含嵌入](https://zh.wikipedia.org/wiki/WP:嵌入包含 "wikilink")。

#### 注意

當您在一個尚未被建立的條目按下保護功能時，您將無法選擇**用保护模板标记此页**，而僅能提交**請求保護頁面（請求增加或解除[白紙保護](https://zh.wikipedia.org/wiki/Wikipedia:白紙保護 "wikilink")）**。

#### 管理員附加功能

管理員會擁有額外選項來對頁面實施保護，而非只是提出請求。

### 提刪

XfD（**Anything for Deletion**）是维基百科内用来讨论某个页面是否应该被删除的场所的总称。您可以使用 Twinkle
工具对任何页面快速地发起一个删除讨论。

请参阅 [WP:XFD\#特别情况](https://zh.wikipedia.org/wiki/WP:XFD#特别情况 "wikilink")
來选择一个適合的討論空間。

一旦运行 XfD 工具，Twinkle
會标记提删模板到页面上、創建删除讨论（这可能會建立一个新的存废讨论页面）、在页面创建者的討論頁上通知（如果您选择了此项）。

#### 使用方法

點擊**提删**按鈕。在显示的窗口中，您可以选择提删討論空間。Twinkle 的默认选择通常是正确的，但有时仍会出错。

当选择了一个適合的讨论空間後，以下选项将会顯示：

  - 页面存废讨论（AfD，Article for Deletion）
      - **使用\<noinclude\>包裹模板**：此选项几乎不常用到，除非页面被[嵌入包含](https://zh.wikipedia.org/wiki/WP:嵌入包含 "wikilink")；
      - **选择提删类别**：默认为「删除」，当您认为您提删的目的不是删除而另有其它方案时，更改此项；
          - **合并到**：当上一步的提删类别被选为「合并」时可用，在此填入當前條目需要合并到的目標条目。
  - 檔案存废讨论（FfD，File for Deletion）没有額外选项。

以下選項适用于所有删除情况：

  - 当**如可能，通知页面创建者**被选中时，會使得 Twinkle
    发送一个通知到頁面創建者的討論頁上。通常此选项应该被选中，但不是每次都应被选中，特别是针对破坏者时。

当然，您必须为此次提删指定一个**理由**。您可以在理由中使用任何维基语法。

如果您在参数设置中设置了相关参数，被提删页面将会加入您的**监视列表**中。默认不会有页面因为提删而被加入监视列表。您可以在参数设置面板中找到更多信息。

在提删模块中，没有在用户页名字空间下记录提删日志的功能，因为所有删除讨论都保存在特定页面中。

#### 注意

在進行 [頁面存廢討論](https://zh.wikipedia.org/wiki/Wikipedia:頁面存廢討論 "wikilink")
時，Twinkle 可能會很慢，特別是在日期列表加入討論時；原因目前未知。在某些情况下，你可能會需要等待一段時間才能完成操作。

#### 管理员附加工具

<s>Twinkle
不包含供管理员关闭存废讨论的工具。如果您想使用这样的工具，请参见：[:en:User:Mr.Z-man/closeAFD](https://zh.wikipedia.org/wiki/:en:User:Mr.Z-man/closeAFD "wikilink")。</s>

  - <https://github.com/jimmyxu/twinkle/blob/master/modules/twinkleclose.js>

### 最後

这个选项向您展示了现今页面和先前页面的[差异](https://zh.wikipedia.org/wiki/Help:差异 "wikilink")。此外，當您在檢視差異時，Twinkle
將會額外顯示「自上」、「自我」、「當前」選項。

### 反链

[Twinkle-unlink.png](https://zh.wikipedia.org/wiki/File:Twinkle-unlink.png "fig:Twinkle-unlink.png")

這個選項將會解除[反向連結](https://zh.wikipedia.org/wiki/反向链接 "wikilink")。**反向連結**指的是從其他页面指向一特定页面的連結。操作時會解除某些術語與这个特定頁面的連結，這通常在某一條目被快速刪除被使用，以避免不符關注度、破壞、或有其他問題的條目被重新建立。它可以避免刪除頁面後，在其他各條目看到大量紅字連結的情況。依據被刪除的條目，您有可能會想要或不想要解除反向連結。

### 标記

[Twinkle-tag-dialog.png](https://zh.wikipedia.org/wiki/File:Twinkle-tag-dialog.png "fig:Twinkle-tag-dialog.png")

**标記**功能会將您选择的模版加入页面或建立重定向。

您选择的所有模版标记将会自动地被添加到合适的位置中。标签支持自动添加`date`（日期）项。如果选择了"**如可能，合并入{{multiple
issues}}**"这个选项，那么 Twinkle 就会尝试将所有模版合併到
中，前提是您選擇了三个以上的模板。如果您选择的模板不足三个，那么该选项会被忽略。

和  可以加選子分類，但不是必須的，只是這樣可以更明確地展示出條目的問題。

如果您正在一个重定向页中，該視窗就会顯示适用于重定向页的模版标签選項，这些模版是来自[:Category:重定向模板](https://zh.wikipedia.org/wiki/Category:重定向模板 "wikilink")。

### DI（图片速删）

[Twinkle-di-dialog.png](https://zh.wikipedia.org/wiki/File:Twinkle-di-dialog.png "fig:Twinkle-di-dialog.png")

**DI（Deletable Image）**適用於沒有合理來源或版權的圖像。

### 警告［用户讨论页］

[Twinkle-warn-dialog.png](https://zh.wikipedia.org/wiki/File:Twinkle-warn-dialog.png "fig:Twinkle-warn-dialog.png")
**警告**功能允許您在該使用者的討論頁上留下警告訊息。

#### 使用方法

先點擊**警告**按鈕（這個按鈕只會在用戶空間時顯示），一個帶有以下選項的視窗將會出現：

  - 兩個拖曳式選單（警告層級和警告類別，參見
    [Wikipedia:模板消息/用戶討論名字空間](https://zh.wikipedia.org/wiki/Wikipedia:模板消息/用戶討論名字空間 "wikilink")）
  - 條目名稱（如果您在使用了 Twinkle 回退後跳出的用戶討論頁上執行警告時，此欄位會自動填入）
  - 留言（選填）將會被包含在警告模板當中。

點選提交後即會在該用戶討論頁上加入您選擇的警告模板，然後您的瀏覽器會重新整理頁面。

### 通告

**通告**功能讓您可以在其他用戶的討論頁上留下通知模板。它支援大多數的可用模板，就如同您手動加入模板一樣。

目前支援以下模板：

  -
  -
更多模板可能在未来陸續加入。

### 告狀

**告狀**功能讓您可以將該使用者報告給管理員，包括長期破壞、不恰當用戶名稱、用戶查核。

#### 使用方法

先點擊**告狀**按鈕（這個按鈕只會在用戶空間時顯示），一個帶有以下選項的視窗將會出現：

  - 選擇報告類型：
      - 破壞（WP:VIP）：如果該用戶時常破壞，您可以利用此功能將該用戶提報到[維基百科:當前的破壞](https://zh.wikipedia.org/wiki/維基百科:當前的破壞 "wikilink")。
          - 相關頁面：填入條目名稱，可留空（若留空則建議於下方說明提報理由）。
          - 受到破壞的修訂版本：填入遭破壞之版本編號。版本編號可由網址查看，為`oldid=`後的8碼數字。
          - 破壞前的修訂版本：填入正常版本之版本編號。
          - 並選擇提報理由：
              - 已发出最后（层级4或4im）警告、封禁过期后随即破坏、显而易见的纯破坏用户、显而易见的 spambot
                或失窃账户、仅用来散发广告宣传的用户
      - 用戶名（WP:UAA）：如果該用戶疑似違反[使用者名稱方針](https://zh.wikipedia.org/wiki/WP:U "wikilink")，您可以利用此功能將該用戶提報到[維基百科:需要管理員注意的用戶名](https://zh.wikipedia.org/wiki/維基百科:需要管理員注意的用戶名 "wikilink")。
          - 選項包含：误导性用户名、宣传性用户名、暗示并非由一人拥有、侮辱性用户名、破坏性用户名。
      - 用戶查核 - 主帳戶（WP:RFCU）
      - 用戶查核 - 傀儡（WP:RFCU）
          - 如果您懷疑某位用戶違反[傀儡方針](https://zh.wikipedia.org/wiki/WP:MJ "wikilink")，您可以使用此二功能將該用戶提報到[維基百科:用戶查核請求](https://zh.wikipedia.org/wiki/維基百科:用戶查核請求 "wikilink")
              - 如果您懷疑此用戶濫用傀儡，請選擇**用戶查核 -
                主帳戶（WP:RFCU）**並填入傀儡的用戶名稱。如果欄位不夠可以點擊**更多**按鈕來新增。
              - 如果您懷疑此用戶為其他用戶的傀儡，請選擇**用戶查核 - 傀儡（WP:RFCU）**並填入主帳戶的用戶名稱。
          - 如果您選擇**通知相关用户**，會在所有提及用戶的討論頁上留下用戶查核的[通知訊息](https://zh.wikipedia.org/wiki/T:Socksuspectnotice "wikilink")。
  - 但小心，<u>若是你在你的用戶頁上執行</u>，會跳出**「你不想報告你自己，對吧？」**。

### 撤销与回退

[Twinkle-rollback.png](https://zh.wikipedia.org/wiki/File:Twinkle-rollback.png "fig:Twinkle-rollback.png")
在比较一个条目的多个版本时，Twinkle会在页面上部加上四个链接。（執行以下三種回退時，若該編者有連續編輯的紀錄將會全部回退，若要回退單一版本請改用撤銷功能）

1.  <font color=#8B4513>**恢复此版本**</font>：此选项放置在旧版本上，将此版本后的所有更改全部撤销。可自定义编辑摘要。
2.  <font color= #556B2F>**回退（AGF）**</font>：此选项放置在最新版本上，执行回退，编辑摘要包含
    [AGF](https://zh.wikipedia.org/wiki/Wikipedia:善意推定 "wikilink")
    也可以自定义。預設編輯摘要會填入「-{*回退XXX
    (讨论)做出的出于[善意的编辑](https://zh.wikipedia.org/wiki/Wikipedia:善意推定 "wikilink")。*}-」。屏幕截图参见[英文维基图片](https://zh.wikipedia.org/wiki/:en:File:Twinkle_AGF_edit_summary.png "wikilink")。
3.  <font color=#6882B4>**回退**</font>：此选项放置在最新版本上，执行回退，要求输入编辑摘要。編輯摘要為「-{*回退到由XXX
    (讨论)做出的修订版本XXX：<理由>*}-。」
4.  <font color=#FF0000>**回退（破坏）**</font>：此选项放置在最新版本上，执行回退。此種回退的編輯摘要會顯示「-{*回退XXX
    (讨论)做出的 X 次编辑，到由XXX做出的前一个修订版本*}-」，不可自行輸入。

### 欢迎

[Friendly_Welcome_From_Diff.png](https://zh.wikipedia.org/wiki/File:Friendly_Welcome_From_Diff.png "fig:Friendly_Welcome_From_Diff.png")
Depending on your
[preferences](https://zh.wikipedia.org/wiki/Wikipedia:Twinkle/Preferences "wikilink"),
this link will automatically welcome the user with the template
specified in the "Template to use when welcoming automatically"
preference, or open the user's talk page with Twinkle's welcome dialogue
already visible (by default). This feature is available when viewing any
diff across all namespaces.

## 管理员专用模块

管理員除了在某些主模塊上有額外功能之外，他們也擁有一些額外的模塊：

[Twinkle-delimages-dialog-admin.png](https://zh.wikipedia.org/wiki/File:Twinkle-delimages-dialog-admin.png "fig:Twinkle-delimages-dialog-admin.png")

  - **批量删除（Batch deletion
    ("D-batch")）**：这一模块可让您删除一个分类下的部分或全部的頁面，並取消條目上的链接且刪除該頁面的討論頁、重定向頁。大量關閉
    AfD
    時適合使用此模塊，但由于删除过程自动进行，所以在使用时应谨慎。您完全了解它的处理过程，否则可能会因濫用而导致严重破坏。在某些情況下，這可能不是最好的處理方法。
  - **批量删除圖像**：與批量刪除類似，只不過是刪除圖像。之所以有兩個模塊是因為處理過程不太相同。
  - **批量反刪除（Batch undeletion
    ("Und-batch")）**：與批量刪除類似，但是執行反刪除操作而非刪除操作。此功能僅用於用戶的子頁面，所以您必須先在用戶空間[包含嵌入或是建立一個頁面列表](https://zh.wikipedia.org/wiki/Wikipedia:嵌入包含 "wikilink")。
  - **批量保護（Batch protection
    ("P-batch")）**：與批量刪除類似，但是執行保護操作而非刪除操作。通常用作有大量頁面被破壞時的緊急措施。

## 设置

最方便的设置Twinkle的方法是使用参数设置面板（见[维基百科:Twinkle/参数设置](https://zh.wikipedia.org/wiki/维基百科:Twinkle/参数设置 "wikilink")）。

### 技术细节

Twinkle 通过在
[Special:MyPage/twinkleoptions.js](https://zh.wikipedia.org/wiki/Special:MyPage/twinkleoptions.js "wikilink")
建立一个 [JSON](../Page/JSON.md "wikilink")
文件来保存您的参数设置，在您每次载入页面时它会自动加载。（看起来这会损失部分性能，但是您的浏览器会自动缓存此文件，所以您不需要每次都下载这个文件。）

如果参数设置面板工作异常，或者您想自行调整某些高级参数设定，您可以手动编辑
[Special:MyPage/twinkleoptions.js](https://zh.wikipedia.org/wiki/Special:MyPage/twinkleoptions.js "wikilink")。其格式如下（不精通
[JavaScript](../Page/JavaScript.md "wikilink") 的用户请格外注意）：

``` javascript
window.Twinkle.prefs = {
  "twinkle": {
    // 将所有个人设置放在此处，除了共享IP 标记、标记页面、欢迎及回复相关的设置
    // 例如：
    revertMaxRevisions: 13,
    summaryAd: " BTW, I use [[WT:TW|Twinkle]].",
    proddeleteChunks: 20
  },
  "friendly": {
    // 将共享IP 标记、标记页面、欢迎及回复相关的设置放在此处
    // 例如：
    watchTaggedPages: true,
    talkbackHeading: "Talkback just for you..."
  }
};
```

### 高级参数

These parameters are handy to tweak if your browser or network
connection is struggling to perform operations without encountering
database locks or network timeouts.
高级参数不包含在[参数设置面板中](https://zh.wikipedia.org/wiki/维基百科:Twinkle/参数设置 "wikilink")。因此必须通过手动编辑[Special:MyPage/twinkleoptions.js来实现](https://zh.wikipedia.org/wiki/Special:MyPage/twinkleoptions.js "wikilink")。

普通用户可设置以下参数：

  - `revertMaxRevisions`: Defines the maximum number of revisions to
    query when looking for a clean revision to roll back to. The server
    limit is 50. 默认值是`50`.

Administrators can use other parameters to fine-tune batch operations,
etc.

  - `batchdeleteChunks`: Defines how many pages should be processed at a
    time when performing batch deletions. The server limit is 50.
    建议您不要更改此参数。默认值是`50`.
    `batchDeleteMinCutOff`: Defines how many current pages should be
    left in the process of being deleted before a new batch is allowed
    to be initialized. 建议您不要更改此参数。默认值是`5`.
    `batchMax`: Defines how many pages should be processed at most by
    any batch function. 建议您不要更改此参数。默认值是`5000`.
    `batchProtectChunks`: Defines how many pages should be processed at
    a time when performing batch protections. The server limit is 50.
    建议您不要更改此参数。默认值是`50`.
    `batchProtectMinCutOff`: Defines how many current pages should be
    left in the process of being protected before a new batch is allowed
    to be initialized. 建议您不要更改此参数。默认值是`5`.
    `batchundeleteChunks`: Defines how many pages should be processed at
    a time when performing batch undeletions. The server limit is 50.
    建议您不要更改此参数。默认值是`50`.
    `batchUndeleteMinCutOff`: Defines how many current pages should be
    left in the process of being undeleted before a new batch is allowed
    to be initialized. 建议您不要更改此参数。默认值是`5`.
    `deliChunks`: Defines the number of images that will be processed at
    a time when doing a batch deletion. 建议您不要更改此参数。默认值是`500`.
    `deliMax`: Defines the maximum number of images that will be
    processed when doing a batch deletion. 建议您不要更改此参数。默认值是`5000`.
    `proddeleteChunks`: Defines how many pages should be processed at a
    time when performing batch prod deletions. The server limit is 50.
    建议您不要更改此参数。默认值是`50`.

### Location of Twinkle menu items

The default location of the Twinkle menu items in the
[Vector](https://zh.wikipedia.org/wiki/Wikipedia:Vector "wikilink") skin
is in a drop-down menu; in all other skins they are displayed on the top
row of tabs. If you like, you can change the location and layout of
those items on your page by manually setting some options in [your
twinkleoptions.js](https://zh.wikipedia.org/wiki/Special:MyPage/twinkleoptions.js "wikilink"):

`"portletArea"`
`"portletId"`
`"portletName"`
`"portletType"`
`"portletNext"`
For example, if you want to move the items to the toolbox menu on the
left-hand side of the screen, add the line `"portletId": "p-tb",` to
your Twinkle preferences, like so:

``` javascript
window.Twinkle.prefs = {
  "twinkle": {
    // ...
    "portletId": "p-tb",
    // ...
  },
  // ...
};
```

If you want to display the items as tabs as in the old
[monobook](https://zh.wikipedia.org/wiki/Wikipedia:Skin "wikilink")
skin, add the line `"portletId": "p-views",` to your Twinkle
preferences, like so:

``` javascript
window.Twinkle.prefs = {
  "twinkle": {
    // ...
    "portletId": "p-views",
    // ...
  },
  // ...
};
```

`portletId` is the ID of the portlet you'd like the menus to appear in.
In these case, 'p-tb' indicates the toolbar, while 'p-views' indicates
the menu bar. For a full list see the [catalogue of CSS
classes](https://zh.wikipedia.org/wiki/Wikipedia:Catalogue_of_CSS_classes#ca-X,_f-X,_n-X,_p-X,_pt-X,_t-X,_wpX_IDs "wikilink")).

Alternatively, you can create a new menu *just* for the Twinkle items.
In that case, add

``` javascript
window.Twinkle.prefs = {
  "twinkle": {
    // ...
    "portletArea": "column-one",
    "portletId"  : "p-twinkle",
    "portletName": "Twinkle",
    "portletNext": "p-search",
    // ...
  },
  // ...
};
```

The `portletId` parameter now refers to the specific Twinkle tool set,
'p-twinkle'. `portletArea` indicates where the menu should appear (the
value 'column-one' is the sidebar for Monobook; for Vector it is 'panel'
and for Modern it is 'mw_portlets'; Other options include
'left-navigation' and 'right-navigation' in Vector and
'mw_contentwrapper' in Modern, which will appear on a new level above
the other tabs). Change `portletNext` to dictate which ID the new
Twinkle menu should precede; in this case 'p-search' means it will come
before the search box. Change the `portletName` parameter to change the
name displayed named along with the new menu, if applicable - in this
case, "Twinkle".

Ask for support at [the Twinkle talk
page](https://zh.wikipedia.org/wiki/WT:Twinkle "wikilink") if you're
unsure what to change.

[Category:维基脚本](https://zh.wikipedia.org/wiki/Category:维基脚本 "wikilink")