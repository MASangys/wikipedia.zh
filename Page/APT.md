**高级打包工具**（，缩写为）是[Debian及其衍生的](../Page/Debian.md "wikilink")[Linux軟體包管理器](https://zh.wikipedia.org/wiki/软件包 "wikilink")。APT可以自动下载，配置，安裝二进制或者源代码格式的[软件包](https://zh.wikipedia.org/wiki/软件包 "wikilink")，因此简化了[Unix系統上管理软件的过程](https://zh.wikipedia.org/wiki/Unix "wikilink")。APT最早被設計成[dpkg的前端](https://zh.wikipedia.org/wiki/dpkg "wikilink")，用來處理[deb格式的軟件包](https://zh.wikipedia.org/wiki/deb "wikilink")。現在經過APT-RPM組織修改，APT已經可以安裝在支援[RPM的系統管理](../Page/RPM套件管理員.md "wikilink")[RPM套件](../Page/RPM套件管理員.md "wikilink")。

## 構成

APT由以下的幾個主要的命令構成：

  - [apt-get](https://zh.wikipedia.org/wiki/apt-get "wikilink")
  - [apt-cache](https://zh.wikipedia.org/wiki/Apt-get "wikilink")
  - [apt-file](https://zh.wikipedia.org/wiki/Apt-get "wikilink")

在Debian系統中，APT建構於dpkg之上。

## 安裝源

APT的軟體安裝來源在[Debian安裝的時候即可進行初始](../Page/Debian.md "wikilink")[設置](https://zh.wikipedia.org/wiki/設置 "wikilink")，除了Debian官方的網路安裝來源之外，也可以使用Debian的安裝[光碟](../Page/光碟.md "wikilink")，甚至可以從非官方的安裝來源中下載非官方的軟體。APT同時也可以從一些安裝來源中下載原始碼軟體，並且自行編譯、安裝。

## 依賴關係處理

APT會從每一個安裝源下載一個軟件包的列表。這個列表中有這個安裝源所包含的可用軟件包的信息。在可能的情況下，APT會安裝最新的軟件包，被安裝的軟件包所依賴的其他軟件包也會被安裝，建議安裝的軟件包則會在屏幕中顯示但是不會被安裝。不過在有一些情況下APT由於依賴關係不能安裝軟件包，例如：這個軟件包和系統中的其他軟件包衝突，或者這個軟件包依賴的軟件包在任何安裝源中均不存在或沒有要求的版本。在這種情況下，APT會返回錯誤信息並且中止，使用者需要自行解決依賴問題。

## 軟件包更新方式

[Debian系統的一大特色即為](../Page/Debian.md "wikilink")「永不停機」，事實上，APT達到了這一點。在軟體被升級的時候，它仍然可以繼續服務。APT可以智能地從安裝來源下載最新版本的軟體並且安裝，而無須在安裝後重新啟動電腦（除了更新[Linux內核之外](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")）。所有的配置都可以得到保留，升級軟體不再是一個棘手的問題。

## 發行版升級

APT最使人稱道的特點在於可以從一個Debian發行版升級到新的Debian發行版，例如從[woody升級到](https://zh.wikipedia.org/wiki/woody "wikilink")[sarge](https://zh.wikipedia.org/wiki/sarge "wikilink")。APT可以升級絕大部分滿足依賴關係的軟體，但是也可能要刪除，或添加新的軟體以滿足依賴關係。

## 前端

[Synaptic_Package_Manager.png](https://zh.wikipedia.org/wiki/File:Synaptic_Package_Manager.png "fig:Synaptic_Package_Manager.png")\]\]

APT擁有不少的前端程序：

| 名稱                                                            | 運行界面 | 最新版本       |
| ------------------------------------------------------------- | ---- | ---------- |
| [aptitude](https://zh.wikipedia.org/wiki/aptitude "wikilink") | 字符終端 | 0.2.15.9-2 |
| [Synaptic](https://zh.wikipedia.org/wiki/Synaptic "wikilink") | 圖形界面 | 0.75.13    |
| [GNOME 軟體](https://zh.wikipedia.org/wiki/GNOME_軟體 "wikilink") | 圖形界面 | 0.4.7-1.2  |
| [wajig](https://zh.wikipedia.org/wiki/wajig "wikilink")       | 兼容   | 2.0.25     |

## 示例

### 搜索

在終端機裡輸入：

  - ` apt-cache search  `<package>

這樣系統會列出与<package>名称相匹配的套件。

### 安裝

在終端機裡輸入：

  - ` apt-get install  `<package>

這樣系統會自動下載<package>以及所有的依存套件，同時進行套件的安裝。

### 移除

在終端機裡輸入：

  - ` apt-get remove [--purge]  `<package>

這樣系統會自動移除<package>以及任何依此存套件的其它套件。 --purge指明套件應被完全清除。

### 升級

在終端機裡輸入：

  - `apt-get update`

這樣系統會自動由映射點更新套件列表，如果想安裝最新套件，必須先運行一次。每次修改了
/etc/apt/sources.list後，也必須執行一次。

在終端機裡輸入：

  - `apt-get upgrade [-u]`

這樣系統會自動將所有已經安裝在系統內的套件升級為最新版本。如果一個套件改變了依存關係，而需要安裝一個新的套件時，它將不會被升級，而是標識成hold。如果某個套件被設置hold標號，就不會被升級。

在終端機裡輸入：

  - `apt-get dist-upgrade [-u]`

和apt-get upgrade類似，dist-upgrade會安裝和移除套件來滿足依存關係，因此具有一定的危險性。

## 彩蛋

在终端输入apt-get -h会在末尾出现“This APT has super cow power（本APT具有超级牛力）。

在终端输入apt-get moo会在屏幕上显示一头牛。

```
                 (__)
                 (oo)
           /------\/
          / |    ||
         *  /\---/\
            ~~   ~~
..."Have you mooed today?"...
```

与apt-get相似的一个叫做[aptitude的程序在aptitude](https://zh.wikipedia.org/wiki/aptitude "wikilink")
-h的末尾加上了“This aptitude does not have Super Cow
Powers.（这个aptitude没有超级牛力）”。

在后面加上moo（即输入aptitude
moo），并且分别加上选项“-v”，“-vv”，“-vvv”，“-vvvv”，“-vvvvv”，“-vvvvvv”（即输入aptitude
-v moo;输入aptitude -vv moo;等等），则会有如下输出：

```
 $ aptitude moo
 There are no Easter Eggs in this program.（本程序中没有复活节彩蛋。）
 $ aptitude -v moo
 There really are no Easter Eggs in this program.（本程序中确实没有复活节彩蛋。）
 $ aptitude -vv moo
 Didn't I already tell you that there are no Easter Eggs in this program?（我不是已经告诉您本程序中没有复活节彩蛋了吗？）
 $ aptitude -vvv moo
 Stop it!（停下来！）
 $ aptitude -vvvv moo
 Okay, okay, if I give you an Easter Egg, will you go away?（好吧，好吧，如果我给您复活节彩蛋，您会停手吗？）
 $ aptitude -vvvvv moo
 All right, you win.（好吧，您赢了。）
                               /----\
                       -------/      \
                      /               \
                     /
  |-----------------/                  --------\
   ----------------------------------------------
 $ aptitude -vvvvvv moo
 What is it?  It's an elephant being eaten by a snake, of course.（这是什么？这当然是一只大象被一条蛇吞吃了。）
```

而apt系列的另一个名为"apt-build"的软件包也具有相似的功能：

```
 $ apt-build moo
          (__)    ~
          (oo)   /
      _____\/___/
     /  /\ / /
    ~  /  * /
      / ___/
 *----/\
     /  \
    /   /
   ~    ~
 ..."Have you danced today? Discow!"...
 （意为：今天你跳舞了吗？迪斯可！）
```

软件编写者特地将Disco（迪斯可）一词改为"Discow"，以体现"Cow"（[奶牛](https://zh.wikipedia.org/wiki/奶牛 "wikilink")）之意。

## 參見

  - [Yum](https://zh.wikipedia.org/wiki/Yellow_Dog_Updater_Modified "wikilink")
  - [Debian](../Page/Debian.md "wikilink")
  - [Ubuntu](../Page/Ubuntu.md "wikilink")

## 参考文献

## 外部連結

  -
  - [APT HOWTO](http://www.debian.org/doc/manuals/apt-howto/)

  - [APT-RPM組織](http://apt-rpm.org/)

{{-}}

[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:Dpkg](https://zh.wikipedia.org/wiki/Category:Dpkg "wikilink")
[Category:自由软件包管理系统](https://zh.wikipedia.org/wiki/Category:自由软件包管理系统 "wikilink")
[Category:用C++編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C++編程的自由軟體 "wikilink")
[Category:Linux软件包管理相关软件](https://zh.wikipedia.org/wiki/Category:Linux软件包管理相关软件 "wikilink")
[Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink")