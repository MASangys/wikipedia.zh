**X3D**是一种專為[萬維網而設計的三維圖像](https://zh.wikipedia.org/wiki/萬維網 "wikilink")[標記語言](https://zh.wikipedia.org/wiki/標記語言 "wikilink")。全称可扩展三维（语言），是由[Web3D联盟](http://www.web3d.org)设计的，是[VRML标准的最新的升级版本](../Page/VRML.md "wikilink")。
X3D基于XML格式開發，所以可以直接使用XML DOM文檔樹、XML
Schema校驗等技術和相關的XML編輯工具。目前X3D已經是通過ISO認證的國際標準。

## X3D的特性

VRML和X3D有数次跟随显卡硬件发展的升级，现阶段多数的Direct3D 9.0c和OpenGL 2.0
GLSL的功能特效都可以实现。X3D的规格为支持显卡硬件的功能，添加了从底层的渲染节点，比如支持三角形、三角形扇、三角形条带等基本渲染元素；比如支持设置显卡的混合模式和设置帧缓存、深度缓存、模板缓存的功能；还有节点能支持多纹理和多遍绘制、支持Shader着色、支持多渲染目标（MRT）、支持几何实例（Geometry
Instance）、支持粒子系统。2010年已经可以在X3D和VRML中使用延迟着色技术。现在的特效包括SSAO和CSM阴影、实时环境反射和折射、基于实时环境和天光的光照、HDR、运动模糊、景深。X3D支持对应3ds
MAX标准材质的多种贴图/多纹理。

X3D通过H-anim组件支持骨骼动画和蒙皮，也可以通过原型扩展支持角色AI和动作混合。

X3D通过DIS组件或Networking组件多支持多用户场景和事件共享。

现阶段有几个X3D引擎能支持ODE物理引擎或PhysX物理引擎。

X3D浏览器可以通过插件的形式支持Wii控制器、Kinect体感识别、DirectInput等外设。 X3D浏览器可以通过插件的支持 语音识别和
TTS 文本朗读。

## X3D和其它实时三维引擎的比较

和最流行Web3D引擎比较，VRML和X3D的市场占有率都不高。这并不是因为X3D技术本身的缺陷，而主要是X3D的制作工具和开发环境相对落后。以前的支持所见即所得的VRML实时开发环境Cosmo
Worlds、ISA、Avatar Studio都因为开发公司的转向而没有继续发展，而后面开发的BS Editor、Flux
Studio等还没有完善。另外X3D也没有提供完善的功能包，而Quest3D、Unity3D、3D VIA
Virtools都提供了完善的功能包。

## HTML5、WebGL 和 X3D

在Web3D聯盟和相關公司的推進下，在主流的瀏覽器中現在可以使用XML
DOM文檔樹和相關腳本解析<X3D>、</X3D>標籤中的三維內容。這主要是利用HTML5和WebGL的功能實現的。這是
X3D
的一個重大的推進，X3D/VRML將推進到第四版(X3D是第三版、VRML97是第二版、VRML是第一版)，並再次提交給ISO組織審閱。因為免插件安裝等特性，X3D
有望再次成為新的瀏覽器中的三維標準。

## 参见

  - [VRML](../Page/VRML.md "wikilink")
  - [Quest3D](https://zh.wikipedia.org/wiki/Quest3D "wikilink")
  - Universal 3D
  - [Unity3D](https://zh.wikipedia.org/wiki/Unity3D "wikilink")
  - [3D VIA
    Virtools](https://zh.wikipedia.org/wiki/3D_VIA_Virtools "wikilink")
  - [O3D](https://zh.wikipedia.org/wiki/O3D "wikilink")
  - [WebGL](../Page/WebGL.md "wikilink")
  - [网络三维](../Page/网络三维.md "wikilink")
  - [虚拟现实](../Page/虚拟现实.md "wikilink")

## X3D標準中文翻譯

  - [HAnim骨骼動畫標準](http://17de.com/x3d/www.web3d.org/specifications/ISO-IEC-19774/index.html)
  - [X3D基本結構和組件](http://17de.com/x3d/www.web3d.org/specifications/ISO-IEC-19775/index.html)
  - [X3D編碼標準](http://17de.com/x3d/www.web3d.org/specifications/ISO-IEC-19776/index.html)
  - [X3D應用程序接口](http://17de.com/x3d/www.web3d.org/specifications/ISO-IEC-19777/index.html)

## 外部链接

  - [m17的X3D网站](http://17de.com/x3d/)
  - [用X3D替代VRML 2.0的十个理由](http://17de.com/x3d/x3d_vs_vrml.html)
  - [X3D常见问题集](http://17de.com/x3d/faq.html)
  - [从VRML到X3D](http://17de.com/x3d/vrml2x3d.html)
  - [Flux Player和Flux
    Studio](http://mediamachines.wordpress.com/flux-player-and-flux-studio/)

  - [HTML5和WebGL樣例](http://www.x3dom.org/?page_id=5)

[Category:计算机语言](https://zh.wikipedia.org/wiki/Category:计算机语言 "wikilink")
[Category:ISO](https://zh.wikipedia.org/wiki/Category:ISO "wikilink")
[Category:置标语言](https://zh.wikipedia.org/wiki/Category:置标语言 "wikilink")
[Category:虚拟现实](https://zh.wikipedia.org/wiki/Category:虚拟现实 "wikilink")
[Category:图形文件格式](https://zh.wikipedia.org/wiki/Category:图形文件格式 "wikilink")
[Category:三维计算机图形学](https://zh.wikipedia.org/wiki/Category:三维计算机图形学 "wikilink")
[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink")