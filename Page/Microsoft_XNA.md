**Microsoft XNA** ("**X**NA's **N**ot **A**cronymed"\[1\])，完全支援[受控代碼](../Page/受控代碼.md "wikilink")的[運行環境](https://zh.wikipedia.org/wiki/運行環境 "wikilink")，由[微軟提供用以幫助電腦](https://zh.wikipedia.org/wiki/微軟 "wikilink")[遊戲開發](https://zh.wikipedia.org/wiki/遊戲開發 "wikilink")、[電腦軟件開發及管理的一些工具](https://zh.wikipedia.org/wiki/電腦軟件開發 "wikilink")。XNA把遊戲設計員從“反覆刻版編程”中解放出來\[2\]，還把遊戲開發上的所有需要結合到一個系統之中。\[3\]XNA 工具集在2004年3月24日在[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[加州](https://zh.wikipedia.org/wiki/加州 "wikilink")[聖荷西市的](https://zh.wikipedia.org/wiki/聖荷西 "wikilink")[遊戲開發者大會首次亮相](https://zh.wikipedia.org/wiki/遊戲開發者大會 "wikilink")，第一個公開技術預覽在2006年3月14日推出，最新版本3.0在2008年10月30日推出。

## 概觀

### XNA Framework

XNA Framework 是建置於 [.NET Framework 2.0上](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，XNA 將[DirectX](../Page/DirectX.md "wikilink")的功能以[受控代碼](../Page/受控代碼.md "wikilink")的方式封裝運作（因此微软终止了Managed DirectX 9.0的開發，所以有人称XNA为Managed DirectX 2.0），另外還加入了一些專注於遊戲開發上[類別庫](../Page/函式庫.md "wikilink")，在指定的平台上使“程式碼重用”達之最大效果。XNA Framework 在一個特別為有管理式遊戲運行的[通用語言運行庫](../Page/通用語言運行庫.md "wikilink")（Common Language Runtime）版本上運行。這個執行層支援[Windows XP](../Page/Windows_XP.md "wikilink")、[Windows Vista](../Page/Windows_Vista.md "wikilink")、[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows Phone 7和](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink")[XBox 360](https://zh.wikipedia.org/wiki/XBox_360 "wikilink")。由於遊戲是開發在執行層上，使得遊戲能在所有支持XNA Framework 的平台上只要很少甚至不需要任何更改便能運行。現時所有在XNA Framework 上的遊戲必需使用[C \#和XNA](https://zh.wikipedia.org/wiki/C_Sharp "wikilink") Game Studio Express IDE\[4\]開發。

XNA 的程式都是繼承自Game class，它包含了所有重要的游戏组件，比如图形设备（Graphic Device）、窗口设置以及内容管理器，你也可以添加GameComponent class到你的Game class。XNA Framework 把所有用作遊戲編程的低階技術封裝起來，例如XNA提供了Effect（BasicEffect）類別來處理大部分繪圖著色相關的工作，開發人員不需再理會“矩陣變數”相乘，只要指定物件的World、View、Projection即可，其相乘效果由Shader檔自動處理。Effect 本身還能用于加载和编译shader, Effect.CurrentTechnique 可用於指定technique, 像是AmbientLight; Effect.SetValue可以用來設定Shader的參數。一个effect包含一個或多個technique，一个technique包含一個以上的pass。在pass裡面可能還有VertexShader, PixelShader，這些元素構成一份effect文件, 這也就是極簡化後的HLSL程式碼。因此，遊戲開發員就可以專注於遊戲內容開發而不用關心遊戲移植至不同平台上的問題，遊戲只要開發於XNA 的平台上，所有硬體只要支援XNA都能運行。XNA Framework 還內置一些工具，例如[XACT以幫助遊戲內容開發](https://zh.wikipedia.org/wiki/XACT "wikilink")。這些工具還能幫助開發視覺和聽覺效果和和像真度很高的模型制作。

XNA Framework 同時支持2D 和3D 的遊戲開發也支援XBox 360 的控制器和震動效果。Content Pipeline被用来导入.fbx格式，而且加载像纹理（Texture）、3D模型、[着色器](../Page/着色器.md "wikilink")（shader）。Shader指令經過編譯之後，直接載入到顯示卡上的[GPU來執行](https://zh.wikipedia.org/wiki/GPU "wikilink")。[Xbox Live賣場可以升級開發者的XNA](../Page/Xbox_Live.md "wikilink") Game Studio Express 以使能把他們開發的遊戲用於[Xbox 360上](../Page/Xbox_360.md "wikilink")。

### XNA的流程簡介

首先，讓我們看看Programs.cs檔案的摘要內容:

`   using System;`
`   namespace WindowsGame1`
`   {`
`   #if WINDOWS || XBOX`
`   static class Program`
`   {`
`      `
`       static void Main(string[] args)`
`       {`
`           using (Game1 game = new Game1())`
`           {`
`               game.Run();`
`           }`
`       }`
`   }`
`     #endif`
`   }`

首先要使用System名稱空間，並且判斷執行環境是否在Windows或是Xbox360下

並寫了一個靜態類別 **Program** 裡面的static void Main(string\[\] args){...}

是程式的進入點(C\#基本常識)，然後產生一個Game1物件game，最後使用Game1物件的run方法執行遊戲。

後面介紹有關Game1物件的類別分段程式碼

`  using System;`
`  using System.Collections.Generic;`
`  using System.Linq;`
`  using Microsoft.Xna.Framework;`
`  using Microsoft.Xna.Framework.Audio;`
`  using Microsoft.Xna.Framework.Content;  `
`  using Microsoft.Xna.Framework.GamerServices;`
`  using Microsoft.Xna.Framework.Graphics;`
`  using Microsoft.Xna.Framework.Input;`
`  using Microsoft.Xna.Framework.Media;`

這裡是很基本的命名空間使用，簡介每個名稱空間的用途。

1.  System C\#最基本的名稱空間
2.  System,Collections.Generic 泛型的名稱空間
3.  System.Linq Ling(一種嵌入式的資料庫查詢語言)的名稱空間
4.  Microsoft.Xna.Framework XNA基礎名稱空間
5.  Microsoft.Xna.Framework.Audio XNA音效方面名稱空間
6.  Microsoft.Xna.Framework.Content XNA內容輸出入名稱空間
7.  Microsoft.Xna.Framework.GamerServices XNA玩家權限名稱空間
8.  Microsoft.Xna.Framework.Graphics XNA繪圖名稱空間
9.  Microsoft.Xna.Framework.Input XNA輸出入(鍵盤、滑鼠)名稱空間
10. Microsoft.Xna.Framework.Media XNA多媒體名稱空間

`  namespace WindowsGame1`
`  {`
`    .....`
`  }`

首先設定了一個WindowsGame1的名稱空間，裡面包含著一個類別:

`   public class Game1 : Microsoft.Xna.Framework.Game`
`   {`
`     ......`
`   }`

Game1類別，繼承Microsoft.Xna.Framework.Game類別

其中Game1類別裡面又有

`       GraphicsDeviceManager graphics;`
`       SpriteBatch spriteBatch;`

`       public Game1()`
`       {`
`           graphics = new GraphicsDeviceManager(this);`
`           Content.RootDirectory = "Content";`
`       }`
`  `

GraphicsDeviceManager類別是管理有關繪圖卡方面的設定

SpriteBatch類別則是有關2D圖片、文字的繪畫設定。

還可以看到一個建構式public Game1(){...}

裡面讓graphics物件先產生出來

並規定Content的目錄在Content資料夾之下

接下來

`       protected override void Initialize()`
`       {`
`           base.Initialize();`
`       }`

是一個覆寫原父類別的初始方法

因為Microsoft已經把繁複的初始內寫在父類別當中

變得相當簡化，直接呼叫base(基底類別)使用即可

所以可以讓製作者專心在遊戲重點的初始化

接下來

`        protected override void LoadContent()`
`       {`
`           spriteBatch = new SpriteBatch(GraphicsDevice);`
`       }`

這是覆寫讀取材質 音效...etc的方法，先讓spritBatch物件透過繪圖裝置參數，而產生

然後製作者可以上載其想要的內容，寫法如下:

`  Content.Load`<T>`("AssetName");`

**T**可以是很多種類型，像是Texture2D、Model...等，而AssetName則是內容名稱。

這裡主要是使用到了泛型

`       protected override void UnloadContent()`
`       {`
`          `
`       }`

這個覆寫方法是用來回收內容的。接下來

`       protected override void Update(GameTime gameTime)`
`       {`
`           if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)`
`               this.Exit();`
`           base.Update(gameTime);`
`       }`

這是覆寫了邏輯更新的方法，也是整個遊戲的重心所在，GameTime物件可以取得遊戲時間。 另外透過GamePad物件 可以得知玩家1是否按下了倒退鍵而結束遊戲 如果想透過鍵盤可以這樣寫:

`   if (Keyboard.GetState().IsKeyDown(Keys.Back)){...}`

最後會呼叫父類別 base.Update(gameTime);

接下來

`       protected override void Draw(GameTime gameTime)`
`       {`
`           GraphicsDevice.Clear(Color.CornflowerBlue);`
`           base.Draw(gameTime);`
`       }`

這部分是繪圖的部分，也需要遊戲時間確定畫面跟邏輯更新是同步的， 首先使用GameDevice物件Clear方法，把畫面清成淡藍色，同時也呼叫父類別進行運作。 Update跟Draw會連續進行每秒鐘60HZ的更新速度來跑動遊戲，直到出現離開程式指令。

### XNA中实现Shader

BasicEffect是XNA 內建的 Shader, 支援12種渲染模型，ContentPipeline根据xnb模型文件说明，设置模型的MeshPart的BasicEffect参数。

XNA中实现[Shader很简单](../Page/着色器.md "wikilink")。對XNA程式來說，Shader是一個小程式，只要把shader文件（.fx）导入到Contents 即可，會自动生成素材（material）。

` `**`technique`**` Technique1`
` {`
`     `**`pass`**` Pass1`
`     {`
`        VertexShader = `**`compile`**` `*`vs_2_0`*` VertexShaderFunction();`
`        PixelShader = `**`compile`**` `*`ps_2_0`*` PixelShaderFunction();`
`     }`
` }`

再透過XNA Effect class 來加载和编译shader。[HLSL可以在XNA或是DirectX使用](https://zh.wikipedia.org/wiki/HLSL "wikilink")。

` effect = Content.Load`<Effect>`("MyShader"); `
` effect.CurrentTechnique = effect.Techniques ["AmbientLight" ]; `
` effect.Begin(); `
` foreach (EffectPass pass in effect.CurrentTechnique.Passes) `
` {`
`    pass.Begin(); `
` ... `
`    pass.End();`
` }`
` effect.End(); // 終止使用 effect`

如果想要改用BasicEffect 以外的Shader, 你必須自己呼叫DrawPrimitive()。

### XNA Build

2006年, Microsoft XNA Build March 2006 CTP 在GDC 上被发布。XNA Build 是一工具，允许你管理复杂的编译，类似Msbuild 和Ants，功能更强大。2006年8月30日微软宣布了XNA Game Studio Express Beta1。2006年12月微软又发布了XNA Game Studio Express的正式版，该版本加入了内容管道（Content Pipeline）。

### XNA Game Studio

2010年美国当地时间3月15日，微软官方XNA发布了期待已久的XNA 4.0的社区预览版和路线图，包含在Windows Phone Developer Tool CTP中。目前只有英文版本，可以用于编写Silverlight或XNA for Windows Phone游戏，Xbox游戏，PC游戏，没有Zune游戏的开发模版。

#### XNA Game Studio Express

第一個XNA Game Studio Express 的beta版本首度於2006年8月30日提供下載，2006年11月1日有第二個版本推出。2006年12月11日微軟首度提供正式版\[5\]

2007年4月24日, Microsoft 更新 **XNA Game Studio Express 1.0 Refresh**.\[6\]

#### XNA Game Studio 2.0

**XNA Game Studio 2.0** 於2007年12月13日推出.\[7\] **XNA Game Studio 2.0**\[8\][Visual Studio 2005亦實作有相同的特色與功能](https://zh.wikipedia.org/wiki/Visual_Studio_2005 "wikilink") (包括免費的 Visual C\# 2005 Express Edition)。

#### XNA Game Studio 3.0

XNA Game Studio 3.0 (基於Visual Studio 2008) 支援Zune的遊戲開發。[beta版在](../Page/軟件版本週期.md "wikilink")2008年9月推出.\[9\]2008年10月30日推出正式版. XNA Game Studio 3.0 目前可支援 C\# 3.0, Visual Studio 2008之上還支援LINQ. 在XNA3.0中，SoundEffect可以不透過[XACT也可以做到特效的處理](https://zh.wikipedia.org/wiki/XACT "wikilink")。

#### XNA Game Studio 3.1

XNA Game Studio 3.1於2009年6月11日推出。可支援 video playback, 並修正了Audio API, 還支援Xbox LIVE Party system 並且可以使用 Xbox 360 Avatars\[10\]。

#### XNA Game Studio 4

XNA Game Studio 4 最早2010年3月9日由 "Community Technical Preview" 在 [GDC](https://zh.wikipedia.org/wiki/Game_Developers_Conference "wikilink") 上發布, 並於2010年9月16日完整推出.\[11\]。XNA 4整合了Visual Studio 2010, 可支援[Windows Phone 7](https://zh.wikipedia.org/wiki/Windows_Phone_7 "wikilink") 平台 (包括：3D API的硬體加速)。VertexDeclaration 在 XNA Game Studio 4.0中略有改變，另外SpriteBatch.Begin也可以配合pixel shader。

### XNA Framework Content Pipeline

XNA架構素材管道（XNA Framework Content Pipeline）是一種可延伸的素材处理框架，素材（Content）是在Visual C\# Express内进行管理。在添加素材时，需要选择工具（importer），例如: **Autodesk FBX**，**.FX**, **.XAP**，這些工具用於接收資料，FBX是一种转移3D（3D transport）文件格式，将其标准化（normalize）。

### XDK Extensions

正式名稱是 XNA Game Studio Professional, XDK Extensions 是 XNA Game Studio 附加，可用於發展Microsoft Xbox 360.\[12\]

### XNA 批評

雖然已被世界上很多開發員採用，但XNA 並未能真正發揮的作用，例如使遊戲編程更容易。這是因為他沒有一些重要的功能如[骨骼动画](https://zh.wikipedia.org/wiki/骨骼动画 "wikilink")（[Skeletal animation](https://zh.wikipedia.org/wiki/骨骼动画 "wikilink")），對初學者而言還是比較複雜的編程。另一個問題是有人認為XNA 沒讓開發者有太多控制權，這使得大多數的大型遊戲制件過還是用C++直接調用[DirectX](../Page/DirectX.md "wikilink")。

在程式編輯上，XNA 確實大幅改善了繁雜的程式設計。包括：資源回收系統、簡易聲音API, 與背景保護程式的衝突改善等。但是由於企業界已經投入大量心力在C++與DirectX上面，目前仍然鮮見有企業願意針對新語言C\# 還有新平台XNA 進行投資。

## 注释

## 参考文献

## 外部链接

  - [Microsoft XNA official homepage](http://msdn.microsoft.com/xna/)
  - ["XNA Game Studio Express Beta 2 Launches"](http://gear.ign.com/articles/743/743754p1.html) from *[IGN](../Page/IGN.md "wikilink")*
  - [XNA Samples, Videos, GameComponents and Articles](http://www.codeplex.com/XNACommunity)

{{-}}

[Category:電子遊戲研發](https://zh.wikipedia.org/wiki/Category:電子遊戲研發 "wikilink") [Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:微軟開發工具](https://zh.wikipedia.org/wiki/Category:微軟開發工具 "wikilink") [Category:Computing_acronyms](https://zh.wikipedia.org/wiki/Category:Computing_acronyms "wikilink") [Category:Xbox_360](https://zh.wikipedia.org/wiki/Category:Xbox_360 "wikilink") [Category:游戏引擎](https://zh.wikipedia.org/wiki/Category:游戏引擎 "wikilink")

1.  [Microsoft XNA Frequently Asked Questions](http://msdn.microsoft.com/directx/xna/faq/)

2.  [Microsoft: Next Generation of Games Starts With XNA](https://www.microsoft.com/presspass/press/2004/mar04/03-24xnalaunchpr.mspx)

3.

4.
5.  [Gamefest announcement of XNA Game Studio Express](http://www.microsoft.com/presspass/press/2006/aug06/08-13XNAGameStudioPR.mspx)

6.  [XNA Team Blog : XNA Game Studio Express 1.0 Refresh Released](http://blogs.msdn.com/xna/archive/2007/04/24/xna-game-studio-express-1-0-refresh-released.aspx)

7.  [XNA Creators Club Online - quick start guide](http://creators.xna.com/Education/GettingStarted.aspx)

8.  [XNA Tutorial](http://www.xnatutorial.com/)

9.  [XNA Creators Club Online - xna game studio 3.0 beta](http://creators.xna.com/en-us/3.0beta_mainpage)

10. [Dream Build Play '09/XNA Game Studio 3.1 Announcement](http://creators.xna.com/en-US/news/dbpandxnags31)

11.

12.