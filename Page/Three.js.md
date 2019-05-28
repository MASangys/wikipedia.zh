**Three.js**是一个[跨浏览器的脚本](../Page/浏览器兼容性.md "wikilink")，使用[JavaScript函数库或](../Page/JavaScript函式庫.md "wikilink")[API来在](https://zh.wikipedia.org/wiki/API "wikilink")[网页浏览器中创建和展示动画的](../Page/网页浏览器.md "wikilink")[三维计算机图形](../Page/三维计算机图形.md "wikilink")。Three.js使用[WebGL](../Page/WebGL.md "wikilink")。源代码托管在[GitHub](../Page/GitHub.md "wikilink")。

## 概述

Three.js允许使用[JavaScript创建网页中的](../Page/JavaScript.md "wikilink")[GPU加速的](https://zh.wikipedia.org/wiki/GPU "wikilink")3D动画元素，而不是使用特定的浏览器插件。\[1\]\[2\]这归功于[WebGL的出现](../Page/WebGL.md "wikilink")。\[3\]

高级的JavaScript函数库例如Three.js或[GLGE](https://zh.wikipedia.org/wiki/GLGE_\(programming_library\) "wikilink")、SceneJS、PhiloGL或一定数量的其他函数库使作者在浏览器中显示复杂的三维计算机动画而不需要使用传统的独立应用程序或插件成为可能。\[4\]

## 历史

Three.js由Ricardo
Cabello在2010四月于GitHub首次发布。\[5\]它的起源可以追溯到他在本世纪初演示场景的参与。代码最初是在ActionScript，稍后2009年移植到JavaScript。在Cabello看来，转移到JavaScript有两个优点：每次运行前没有编译代码和平台独立性。随着WebGL的到来，Paul
Brunt增加渲染功能，这使Three.js的设计与绘制的代码作为一个模块，而不是核心本身。\[6\]Cabello的贡献包括API的设计、CanvasRenderer、
SVGRenderer并负责合并各种贡献到该项目。

该项目的二号贡献者Branislav
Ulicny在2010年张贴在自己的网站一些WebGL演示后开始参与Three.js的开发工作。他希望Three.js中的WebGL渲染能力超过CanvasRenderer或SVGRenderer。\[7\]他的主要贡献通常涉及素材、着色器和后处理。

稍后在 [WebGL](../Page/WebGL.md "wikilink") 1.0
在2011年引入[火狐](https://zh.wikipedia.org/wiki/火狐 "wikilink")4后，Joshua
Koo开始参与工作。他在2011年9月创建了他的第一个面向3D文本的Three.js样本。\[8\] 目前该项目总共有650次贡献。\[9\]

## 特性

Three.js包括以下特性：\[10\]

  - 效果：浮雕，对眼和视差屏障。
  - 场景：在运行时添加和删除对象；雾
  - 镜头：视角和正字法；控制器：轨迹球、FPS、路径等
  - 动画：电枢，运动学，逆运动学，变形和关键帧
  - 灯光：环境、方向、点和点光；阴影：投射和接收
  - 材料：Lambert、海防、光滑阴影，纹理和更多
  - 材质：访问完整的OpenGL着色语言（[GLSL](../Page/GLSL.md "wikilink")）能力：镜头光晕，经过深入而广泛的后置处理库
  - 对象：网格、粒子、精灵、线、带、骨头和更多-所有细节层次
  - 几何：平面，立方体，球体，圆环，3D文本等；修改器：车床，挤压和管
  - 数据加载器：二进制，图像，JSON和场景
  - 事业：全套时间和三维数学函数包括锥、矩阵、四元、UVs等
  - 输入输出：three.js-compatible
    [JSON文件](../Page/JSON.md "wikilink")：[Blender](../Page/Blender.md "wikilink")，openctm，FBX，[Max](../Page/3ds_Max.md "wikilink")，OBJ
  - 支持：API文档正在建设中，公共论坛和维基全面运作
  - 例子：超过150个文件的编码例子加字体，模型，纹理，声音和其他支持文件
  - 调试：Stats.js，\[11\] WebGL检查员\[12\]，Three.js检查员\[13\]

Three.js在所有支持WebGL 1.0的浏览器皆可运行。

Three.js依据[MIT公用许可证发布](https://zh.wikipedia.org/wiki/MIT_license "wikilink")。\[14\]

## 使用

Three.js函数库是一个独立的JavaScript文件。它在网页中可以通过链接至本地或远程副本而链接在该页面中：

``` javascript
<script src="js/three.min.js"></script>
```

以下代码创造了一个场景，并添加摄像机和一个摄像机和一个立方体到场景中，且创建一个WebGL渲染并添加视图到document.body元素中。一旦被载入，这个立方体将以它的X轴线和Y轴线旋转。

``` javascript
<script>

    var camera, scene, renderer,
    geometry, material, mesh;

    init();
    animate();

    function init() {
        scene = new THREE.Scene();

        camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 1, 10000 );
        camera.position.z = 1000;

        geometry = new THREE.BoxGeometry( 200, 200, 200 );
        material = new THREE.MeshBasicMaterial( { color: 0xff0000, wireframe: true } );

        mesh = new THREE.Mesh( geometry, material );
        scene.add( mesh );

        renderer = new THREE.WebGLRenderer();
        renderer.setSize( window.innerWidth, window.innerHeight );

        document.body.appendChild( renderer.domElement );
    }

    function animate() {
        requestAnimationFrame( animate );
        render();
    }

    function render() {
        mesh.rotation.x += 0.01;
        mesh.rotation.y += 0.02;

        renderer.render( scene, camera );
    }

</script>
```

## 应用与作品

Hello World.

## 社区

## 参见

  - [Google
    Chrome实验项目](https://zh.wikipedia.org/wiki/Google_Chrome实验项目 "wikilink")
  - [WebGL框架列表](https://zh.wikipedia.org/wiki/WebGL框架列表 "wikilink")
  - [Verge3D](../Page/Verge3D.md "wikilink")

## 参考文献

## 参考书目

  -
  -
  - \- "Three.js can make game development easier by taking care of
    low-level details"

  -
  -
<!-- end list -->

  -
## 外部链接

  -
  - [Three.js source](https://github.com/mrdoob/three.js/) in
    [GitHub](../Page/GitHub.md "wikilink")

  - [AlteredQualia](http://alteredqualia.com/)

  - [Stemkoski Three.js Examples](http://stemkoski.github.io/Three.js/)

  - [1-2-three: graphic simulation by
    example](http://graphic-sim.com/index.html)

  - [Learning Three.js](http://learningthreejs.com)

  - [kepo-ing
    Zz85](https://web.archive.org/web/20120531075249/http://www.lab4games.net/zz85/blog/)

  - [Learning WebGL](http://learningwebgl.com)

  - [WebGL Review Site](http://webgl.com)

<!-- end list -->

1.  [O3D](https://zh.wikipedia.org/wiki/O3D "wikilink")

2.  [Unity (game
    engine)](https://zh.wikipedia.org/wiki/Unity_\(game_engine\) "wikilink")

3.

4.

5.
6.

7.
8.
9.
10.

11.

12.

13.

14.