> 本文内容由[RPG Maker XP](https://zh.wikipedia.org/wiki/RPG_Maker_XP)转换而来。


**RPG Maker XP**（[日本](../Page/日本.md "wikilink")：，[台灣](https://zh.wikipedia.org/wiki/台灣 "wikilink")：新RPG製作大師XP）是[Enterbrain](../Page/Enterbrain.md "wikilink")在PC上出版的第四套[RPG製作大師](../Page/RPG製作大師.md "wikilink")系列軟體。

## 特色

  - 畫質獲得進一步提升
  - [RGSS](../Page/RGSS.md "wikilink")的出現，令使用者和開發者能夠利用其開發出自己想要的遊戲
  - 資料庫的大調整：
      - 角色設定部分：
          - 以往2000系列限制能力值最高為999，但隨著程式設計的改變，XP的能力值上限大幅度上升，可惜最多也只能到9999(HP和SP)和999(其他屬性)，敵方HP和SP最高則可以達到999999(但用普通方式輸入最多只能輸入99999)
          - 臉圖設定、二刀流、影片播放、AI控制取消，且無法空手戰鬥(但皆可以藉著RGSS的設計來彌補)。
      - 新增「職業」設定：
          - 2000系列中的角色欄位之「特殊技能學習」、「狀態有效」、「屬性有效」被轉移到此分頁設定，可裝備的武器和防具也改到此區設定。
      - 道具設定頁一分為三：
          - XP中的道具設定分頁從僅有一個道具分頁分為「武器」、「裝備」和「物品」，而物品也不能設定只有哪些人可以使用。
      - 屬性、用語和系統被整合為一個介面。
  - 地圖設定部分：
      - 事件頁面新增每個事件各自獨立的「獨立開關」選項。
  - 地圖元件部分：
      - 在拼製時，是選擇一張Tilesets進行製作地圖，因此製作上自由度高。
  - XP的素材設定由於經過大改變，多半不能與2000通用，使得2000系列的遊戲要移植到XP時徒增許多困難。

## 画面

  - [RPG製作大師](../Page/RPG製作大師.md "wikilink")系列中，RPG Maker XP首先支援的640x480解析度，先前幾個版本都僅能支援320x240的解析度。並跳脫先前版本的256色限制，支援全彩，這使得RPG Maker XP能夠製作更高畫質的RPG遊戲。

<!-- end list -->

  - 由於擔心硬體相容性的問題，[Enterbrain](../Page/Enterbrain.md "wikilink")決定只使用軟體模式進行繪製（Software-mode rendering）。另外其幀率一般為20幀每秒，開啟平滑模式的話40幀每秒。

<!-- end list -->

  - 雖然RPG Maker XP本身只支援640x480的解析度，但透過一些非官方提供的方法（使用[RGSS](../Page/RGSS.md "wikilink")及呼叫[Windows API](../Page/Windows_API.md "wikilink") SetWindowPos/MoveWindow），可以超越640x480的限制。

## 系統需求

  - 作業系統：[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") 98/98SE/ME/2000/XP/Vista/7
  - 中央處理器：800 MHz
  - 記憶體：128MB
  - 顯示配接器
  - 音效卡：與[DirectSound](../Page/DirectSound.md "wikilink")相容之音效卡
  - 100MB以上之磁碟空間
  - 另外，本作中文版和2000不一樣，和2003則是相同，運行時需要將安裝光碟放置於光碟機中才可以啟動。

## Ruby遊戲腳本系統([RGSS](../Page/RGSS.md "wikilink"))

在[RPG製作大師](../Page/RPG製作大師.md "wikilink")系列中，RPG Maker XP使用[Ruby](../Page/Ruby.md "wikilink")程式語言作為架構的腳本系統，以[Ruby](../Page/Ruby.md "wikilink")的基礎架構內建的圖形、音效等形成的系統，便稱之為[RGSS](../Page/RGSS.md "wikilink")（Ruby Game Scripting System）。這使得RPG Maker XP製作的遊戲可以很容易的強化、擴充。整個系統非常容易學習，而有經驗的[程式設計師可以使用](https://zh.wikipedia.org/wiki/程式設計師 "wikilink")[RGSS](../Page/RGSS.md "wikilink")或者是說Ruby撰寫更複雜的功能(尤其使用[Windows API](../Page/Windows_API.md "wikilink")——Win32API 類)。

### 內建的模块和類別

RPG Maker XP中的[RGSS](../Page/RGSS.md "wikilink")腳本大部份都宣告於內建的腳本編輯器之中。但有一些模塊和類別是內建的，由系統底層生成的圖形、音效功能，會以動態調用[Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") [DirectX](../Page/DirectX.md "wikilink")來實現這些功能，並非以RGSS腳本的形式宣告，以增加效率，因此同時無法放出Ruby源代碼，大概可以分為四類：

  - 音效
      - Audio(音效模块)
  - 画面绘画
      - Graphics(画面模块)
      - Sprite(精灵类)
      - Bitmap(位圖類)
      - Tilemap(元件类)
      - Window(窗口类)
      - Viewport(显示区域类)
      - Plane(平面類)
      - Font(字体类)
      - Color(颜色类)
      - Tone(色调类)
  - 系统
      - Input(输入模块)
      - Table(表单类)
      - Rect(矩形类)
      - RGSSError([RGSS](../Page/RGSS.md "wikilink")内部异常类)
  - Ruby库
      - Zlib(压缩模块)
      - Win32API([Windows API](../Page/Windows_API.md "wikilink"))

但是[RGSS](../Page/RGSS.md "wikilink")中也有使用脚本的形式宣告：

  - RPG(數據庫模塊)
      - RPG模塊包含很多類([class](https://zh.wikipedia.org/wiki/class "wikilink"))，這些類的定義都是以Ruby表示(可以從RPG Maker XP的說明文件中查到源代碼)，用於讀取數據庫的內容。

注：部份的內建模块和類別在RPG Maker XP附帶的說明中可以找到使用方法。

### 内建函数

RPG Maker XP中也添加了些函數，其中能以Ruby源代碼表示的有兩個：

  - load_data(filename)
  - save_data(filename)

其源代碼可以從RPG Maker XP附帶的說明文件中查看，而不能以Ruby腳本表示的兩個：

  - p(obj\[, obj, ...\])
      - 以Object.insect的方法print出来
  - print(obj\[, obj, ...\])
      - 本来print是Ruby的标准输出，但是[RGSS](../Page/RGSS.md "wikilink")重定义为使用Windows的对话框弹出

## 素材

RPG Maker XP定義了各種不同的素材格式。

圖片方面可支援png、jpg、bmp三種圖檔格式，部分素材在匯入資料庫時，可自由選取一種顏色做為透明色，呈現在遊戲內部時是去背狀況。

以下是Graphics資料夾底下各子資料夾的名稱意義：

  - Animation：動畫圖片，由固定的192\*192像素規格圖片，連續五張橫向排成一列，縱向尺寸不拘，可自由往下衍伸。通常用於戰鬥中、或是地圖上當做角色心情動畫。
  - Autotiles：可自動連結起來的地形，像是室內地圖中用以做為天花板的隔間、水流、地板。
  - Battlebacks：戰鬥背景。
  - Battlers：戰鬥時出現的靜態敵方圖像，我方圖像也放這裡。
  - Charactor：角色的行走圖，一個人物一張圖像，放置該角色的4個方向的連續4張動作圖，合計16張樣式。
  - Fogs：迷霧，在地圖上有遮蓋效果，比如雲朵及樹蔭。
  - Gameover：遊戲結束圖，尺寸為640\*480像素。
  - Icon：狀態、技能、物品小圖標，單一一張的規格是24\*24像素。
  - Panoramas：遠景圖，在設定上是與地圖元件綁在一起的。
  - Pictures：可自行將欲加入遊戲中的圖片放入。比如過場CG、一些外裝腳本預設的素材放置地點。
  - Tilesets：地圖元件，圖像規格是以事件格的32\*32像素為一個單位，8個橫向排成一列，共256像素，而縱向尺寸無限制，因此能自由往下添加。
  - Titles：遊戲標題圖，尺寸為640\*480像素，可從編輯介面的資料庫中，系統頁面更換選擇標題圖。
  - Transition：轉場效果。
  - WindowSkin：視窗系統圖，用於對話框、選單介面、商店介面等。

音效與音樂：這次XP除了WAV和MIDI檔以外，也支援MP3、WMA和OGG檔。

## 遊戲

## VALUE\!版

VALUE\!版是本軟件的增強版，與通常版的區別有

  - 支持[Windows Vista](../Page/Windows_Vista.md "wikilink")（通常版要版本号升级为1.02才支援）
  - 用户认证只需要一次
  - 由5个范例游戏增加到11个
  - 价钱重新调整

其他与通常版一样。

## 外部連結

  - [ツクールweb (RPG Maker系列官方網站)](https://web.archive.org/web/20110624000425/http://tkool.jp/)
  - [RPG Maker XP官方介紹頁](http://tkool.jp/products/rpgxp/)
  - [英文版官方網站](http://www.rpgmakerweb.com/)
  - [巴哈姆特RPG製作大師哈拉板](http://forum.gamer.com.tw/A.php?bsn=4918)
  - [英特衛多媒體](http://www.interwise.com.tw/) - RPG Maker XP 台灣代理官方網站

[Category:電子遊戲研發](https://zh.wikipedia.org/wiki/Category:電子遊戲研發 "wikilink") [Category:電子角色扮演遊戲](https://zh.wikipedia.org/wiki/Category:電子角色扮演遊戲 "wikilink") [Category:電子遊戲開發軟件](https://zh.wikipedia.org/wiki/Category:電子遊戲開發軟件 "wikilink") [Category:RPG製作大師](https://zh.wikipedia.org/wiki/Category:RPG製作大師 "wikilink")