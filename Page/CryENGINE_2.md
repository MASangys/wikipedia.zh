> 本文内容由[CryENGINE 2](https://zh.wikipedia.org/wiki/CryENGINE_2)转换而来。


**CryENGINE 2**是由[Crytek](../Page/Crytek.md "wikilink")開發的[遊戲引擎](https://zh.wikipedia.org/wiki/遊戲引擎 "wikilink")，來自於《[孤岛惊魂](../Page/孤岛惊魂_\(游戏\).md "wikilink")》（Far Cry）使用的[CryEngine的升級](https://zh.wikipedia.org/wiki/CryEngine "wikilink")。目前使用此引擎的遊戲為Crytek所開發的《[孤岛危机](../Page/孤岛危机.md "wikilink")》（Crysis）。瑞典的遊戲開發商[MindArk已經簽約使用此引擎在他們的遊戲](https://zh.wikipedia.org/wiki/MindArk "wikilink")──[Entropia Universe](https://zh.wikipedia.org/wiki/Entropia_Universe "wikilink")。第一個和CryENGINE 2引擎簽約的是[法國公司IMAGTP](https://zh.wikipedia.org/wiki/法國 "wikilink")，用來在開始興建之前，對客戶展示建築物完成時的樣貌。

2007年5月7日，開發工作室Avatar Reality, Inc.簽約使用CryENGINE 2，創造了一個主題為被殖民的火星的大型多人虛擬世界。\[1\]同年9月17日Ringling College of Art & Design成為第一個使用CryENGINE2作為教育目的的團體。Crytek也宣佈將以這個引擎開發一套新的遊戲。

## 历史

## 技術

CryENGINE 2具有許多繪圖、物理和動畫的技術以及遊戲部分的加強，其中包括：

  - 體積雲
  - 即時動態光影且沒有事先計算的陰影
  - 場景光線吸收
  - 3D海洋技術
  - 場景深度，當注視在某物體上時會使其它部分模糊
  - 移動時的模糊特效
  - 物件真實的動態半影
  - 真實的臉部動畫
  - 光透過半透明物體時的散射
  - 可破壞的建築物
  - 可破壞的樹木
  - 進階的物理效果讓樹木對於風、雨和玩家的動作能有更真實的反應
  - 載具不同部位造成的傷害
  - [高動態光照渲染](https://zh.wikipedia.org/wiki/高動態光照渲染 "wikilink")
  - [屏幕空间环境光遮蔽](../Page/屏幕空间环境光遮蔽.md "wikilink")
  - 可互動和破壞的環境
  - 進階的粒子系統，例如火和雨會被外力所影響而改變方向
  - 日夜變換效果
  - 光芒特效並且可以產生水底的折射效果
  - 以[視差貼圖創造非常高解析度的材質表面](https://zh.wikipedia.org/wiki/:视差贴图 "wikilink")
  - 16公里遠距離的視野
  - 人體骨骼模擬
  - 程式上運動彎曲模型

CryENGINE 2也支援[Shader Model](https://zh.wikipedia.org/wiki/高級著色器語言 "wikilink") 2.0、3.0（DirectX 9）和4.0（DirectX 10），並且支援多核心技術來獲得[對稱多處理機](https://zh.wikipedia.org/wiki/對稱多處理機 "wikilink")（Symmetric multiprocessing）和[超執行緒](../Page/超執行緒.md "wikilink")（Hyper-threading，HT）。CryENGINE 2同時支援32和64位元版本，Crytek表示使用64位元系統將會提升10%至15%的效能。\[2\]引擎不支援任何的[物理處理器](../Page/物理處理器.md "wikilink")（例如[AGEIA](../Page/AGEIA.md "wikilink") [PhysX](../Page/PhysX.md "wikilink")）\[3\]，CryTek發展了他們自己的物理引擎稱作CryPhysics。

其他功能還包括...

  - 沙盤編輯器（Sandbox Editor）：是一個所見即所得的編輯器。

<!-- end list -->

  - 渲染器（CryRenderer）：集成了室內和室外的繪製技術，支持DirectX 8/9/10。

<!-- end list -->

  - 物理系統（CryPhysics）：支持載具（Vehicles）、液體（Fluid）、布娃娃（Ragdoll）、布料（Cloth）等物理特性模擬，物理系統集成在遊戲和開發工具中。

<!-- end list -->

  - 動畫系統（CryAnimation）：回放和混合動態數據（捕捉和關鍵楨）和物理模擬，特別需要提到是它可以用於真實的角色動畫（如運用到起伏的地形、視野追踪、臉部動畫、或者跑動轉彎時的身體傾斜或者其他自然的動作變化）

<!-- end list -->

  - 人工智能系統（CryAISystem）：基於腳本的AI和AI行為，能夠不使用C++編程就能夠自己創建自定義的敵人行為模式。

<!-- end list -->

  - 音效系統（FMOD）：複雜的工作室級音效能夠用創新的工具簡單的製作，FMOD音效庫可以保證多平台的兼容性。

<!-- end list -->

  - 交互的動態音樂系統（OpenAL32）：音樂回放可以由遊戲的事件觸發，可以給玩家提供電影版的聽覺效果。

<!-- end list -->

  - 環境音效：能夠真實的還原和混合內外位置的自然環境的音效。

<!-- end list -->

  - 網絡和伺服器系統（CryNetwork）：管理多人遊戲的所有網絡連接，它是一個基於委託伺服結構的低延遲的網絡系統。本模塊的按次時代的遊戲需求完全重新製作。

<!-- end list -->

  - 著色器（Shaders）：一個腳本系統被用於使用多種不同方法來組合紋理材質來實現驚人的視覺效果。支持實時的像素渲染，凸凹反射，漫反射，反射，容積光效果，透明顯示，窗口，彈眼和光澤表面。

<!-- end list -->

  - 地形（Terrain）：使用高級的高度圖系統和多邊形減少創建大量的真實的環境，轉換成遊戲裡的單位距離視野能夠有2000米遠。

<!-- end list -->

  - 顯示柵格立體圖層物體（Voxel Object）：允許用幾何學方式的創建高度圖系統，

支持創建懸崖，洞穴，山谷等地形，顯示柵格立體圖層的編輯方式可以和高度圖編輯一樣簡單而快速的繪製。

  - 光照和陰影（Lighting and Shadows）：一個帶高質量實時陰影組合了高級計算屬性組合用於生成動態環境。包含高分辨率，透視和容積陰影用於生成真實的室內陰影效果。支持高級的粒子技術和任何用於粒子的容積光照效果。

<!-- end list -->

  - 霧（Fog）：包含容積霧層和視距霧化等增強的大氣效果變化。

<!-- end list -->

  - 集成工具（CryExport）：使用3DS MAX或者Maya創建物體或者建築可以在遊戲或者編輯器裡使用。

<!-- end list -->

  - 資源編譯器（ResourceCompiler）：ssets被資源編譯器編譯成為依賴平台的格式，這樣可以根據預設置和平台進行全局改動而不需要難以忍受的讀取時間。

<!-- end list -->

  - Polybump 2：將獨立的或者完全集成的使用如3DS MAX之類工具創建的高質量的可以快速的利用法線貼圖貼在切線空間或者物體空間，置換貼圖和非閉合區域上表面貼圖。

<!-- end list -->

  - 腳本系統（CryScriptSystem）：基於流行的LUA語言，可以簡單的設置和調整武器和遊戲的各種參數，音效和載入畫面而不用C++編程。

<!-- end list -->

  - 流程表（CryAction）：流程表系統允許設計者不用觸及代碼就可以編程，編程只需要簡單的連接流程圖和定義屬性就可以。

<!-- end list -->

  - 模塊化（Modularity）：遊戲完全由C++編寫，並且帶有註釋、文檔。

<!-- end list -->

  - 多線程（Multi-threading）：支持多處理器用來減少多人遊戲的網絡延遲和提高在大範圍地形上的CPU運算能力。

<!-- end list -->

  - 64位支持：支持32位和64位系統允許遊戲利用更多的內存。

## 使用CryENGINE 2引擎的遊戲

  - [孤岛危机](../Page/孤岛危机.md "wikilink") - 由Crytek開發，已发行。
  - [孤岛危机：弹头](https://zh.wikipedia.org/wiki/孤岛危机：弹头 "wikilink") - 由Crytek開發，使用该引擎的升级版本制作，已发行。
  - [商人布魯克林](https://zh.wikipedia.org/wiki/商人布魯克林 "wikilink") - 由Paleo Entertainment開發，已发行。\[4\]
  - [安特罗皮亚世界](../Page/安特罗皮亚世界.md "wikilink") - 由MindArk開發，由v10.0.6.29273版本升級至CryENGINE 2的游戏引擎，已升級。\[5\]
  - [藍色火星](https://zh.wikipedia.org/wiki/藍色火星 "wikilink") - 由Avatar Reality開發，正在公測中。
  - [The Day](https://zh.wikipedia.org/wiki/The_Day "wikilink") - 由Reloaded Studios開發，开发中。
  - [Vigilance](https://zh.wikipedia.org/wiki/Vigilance_\(軍事訓練遊戲\) "wikilink") - 由The Harrington Group開發，已开发完成。(這是一套軍事專用訓練軟體，只用于軍事人員專用訓練，不公開發布)

## 內部連結

  - [末日之戰](https://zh.wikipedia.org/wiki/末日之戰 "wikilink")
  - [CryENGINE](../Page/CryENGINE.md "wikilink")
  - [CryENGINE3](https://zh.wikipedia.org/wiki/CryENGINE3 "wikilink")

## 參見

## 外部連結

  - [Crytek 官方網站](http://www.crytek.com/)
  - [MyCryengine官方網站](http://mycryengine.com/)

[en:CryEngine\#CryEngine 2](https://zh.wikipedia.org/wiki/en:CryEngine#CryEngine_2 "wikilink") [ja:CryENGINE\#CryENGINE 2](https://zh.wikipedia.org/wiki/ja:CryENGINE#CryENGINE_2 "wikilink") [sv:Cry Engine\#Versioner](https://zh.wikipedia.org/wiki/sv:Cry_Engine#Versioner "wikilink")

[Category:游戏引擎](https://zh.wikipedia.org/wiki/Category:游戏引擎 "wikilink")

1.
2.  [GameSpot.com](http://www.gamespot.com/pc/action/crysis/news.html?sid=6154899&page=2&q=)
3.  [GameSpot.com](http://www.gamespot.com/pc/action/crysis/news.html?sid=6163791)
4.  [Merchants of Brooklyn to use CryEngine 2](http://www.paleoent.com/press.html)
5.  <http://www.marketwire.com/mw/release.do?id=754668>