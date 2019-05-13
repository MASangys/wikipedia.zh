[Wikipedia_APK_ZH.png](https://zh.wikipedia.org/wiki/File:Wikipedia_APK_ZH.png "fig:Wikipedia_APK_ZH.png")的APK安裝介面\]\]
[Nexus_4.png](https://zh.wikipedia.org/wiki/File:Nexus_4.png "fig:Nexus_4.png")，允许用户安装**APK**格式的文件来使用应用程序。\]\]
**Android应用程序包**（，**APK**）是[Android](../Page/Android.md "wikilink")[操作系统使用的一种](../Page/操作系统.md "wikilink")[应用程序包文件格式](../Page/应用程序.md "wikilink")，用于分发和安装[移动应用及](https://zh.wikipedia.org/wiki/移动应用 "wikilink")[中间件](../Page/中间件.md "wikilink")。一个Android应用程序的代码想要在Android设备上运行，必须先进行[编译](https://zh.wikipedia.org/wiki/编译 "wikilink")，然后被打包成为一个被Android系统所能识别的文件才可以被运行，而这种能被Android系统识别并运行的[文件格式便是](https://zh.wikipedia.org/wiki/文件格式 "wikilink")“APK”。
一个APK文件内包含被编译的代码文件(.dex 文件)，文件资源（resources），
assets，证书（certificates），和清单文件（manifest
file）。\[1\]\[2\]\[3\]\[4\]

APK 文件基于 [ZIP](../Page/ZIP格式.md "wikilink")
文件格式，它与[JAR文件的构造方式相似](https://zh.wikipedia.org/wiki/JAR "wikilink")。它的[互联网媒体类型是](../Page/互联网媒体类型.md "wikilink")：`application/vnd.android.package-archive`\[5\]。

## 结构

一个APK文件通常包含以下文件：

\* `META-INF` 文件夹:

\*\* `MANIFEST.MF`: [清单文件](../Page/清单文件.md "wikilink")（Manifest file）

\*\* `CERT.RSA`: 保存着该应用程序的证书和授权信息。

\*\* `CERT.SF`: 保存着 [SHA-1](../Page/SHA-1.md "wikilink") 信息资源列表，比如：

``` text
Signature-Version: 1.0
Created-By: 1.0 (Android)
SHA1-Digest-Manifest: wxqnEAI0UA5nO5QJ8CGMwjkGGWE=
...
Name: res/layout/exchange_component_back_bottom.xml
SHA1-Digest: eACjMjESj7Zkf0cBFTZ0nqWrt7w=
...
Name: res/drawable-hdpi/icon.png
SHA1-Digest: DGEqylP8W0n0iV/ZzBx3MW0WGCA=
```

  - `res`: APK所需要的资源文件夹。
  - `AndroidManifest.xml`:
    一个传统的Android清单文件，用于描述该应用程序的名字、版本号、所需权限、注册的服务、链接的其他应用程序。该文件使用XML文件格式，可以编译为二进制的XML，使用的工具为
    [AXMLPrinter2](http://code.google.com/p/android4me/downloads/list)
    或[apktool](http://code.google.com/p/android-apktool/).
  - `classes.dex`:
    classes文件通过DEX编译后的文件格式，用于在[Dalvik虚拟机上运行的主要代码部分](../Page/Dalvik虚拟机.md "wikilink")。
  - `resources.arsc`:程式的語言檔案，可以透過這軟體用(AndroidResEdit等工具)來進行翻譯

你也可以用ApkTool等工具來 反編譯 後再開始進行軟體修改，當然可以編譯回來。

## 分发

Apk格式由谷歌公司([Google](../Page/Google.md "wikilink"))发布，但谷歌在其官方应用商店[Google
Play并不提供apk文件下载](../Page/Google_Play.md "wikilink")，用户只能通过安卓手机上的应用程序**Play商店**来在线安装其他应用。但有第三方的网站提供应用的apk下载，用户可以下载到手机，然后在本地安装。

目前提供apk应用程序包下载的大型站点有：

  - [APKhere](https://cn.apkhere.com/)
  - [APKMirror](https://www.apkmirror.com/)
  - [ApkPure](https://apkpure.com/cn/app)
  - [Aptoide](https://cn.aptoide.com/)
    （参见英文条目：[Aptoide](https://en.wikipedia.org/wiki/Aptoide)
    ）
  - [Wandoujia](https://www.wandoujia.com/apps/)
    [豌豆荚](https://zh.wikipedia.org/wiki/豌豆荚 "wikilink")

## 扩展阅读

  - [Android软件开发](../Page/Android软件开发.md "wikilink")
  - [推荐几个 Android Apk 在线下载站点](https://coderschool.cn/2476.html)

## 参考文献

{{-}}

[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink")
[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.
2.
3.
4.
5.  [Developer description of MIME type for
    .apk](http://androidguys.com/?p=2235)