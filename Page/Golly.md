**Golly**是由Andrew Trevorrow和Tom Rokicki开发的跨平台[开源软件](https://zh.wikipedia.org/wiki/开源 "wikilink")，可用于模拟[康威生命游戏](../Page/康威生命游戏.md "wikilink")或其他类型的[元胞自动机](https://zh.wikipedia.org/wiki/元胞自动机 "wikilink")。Golly包含大量预先设定的元胞模式和生长规则，可模拟大尺度、长时间的元胞行为；采用[wxWidgets编写](https://zh.wikipedia.org/wiki/wxWidgets "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")，并支持[Python](../Page/Python.md "wikilink")和[Lua](../Page/Lua.md "wikilink")（v3.0之前的版本是[Perl](../Page/Perl.md "wikilink")）[脚本语言](../Page/脚本语言.md "wikilink")\[1\]。Golly采用[GNU GPL第](https://zh.wikipedia.org/wiki/GNU_GPL "wikilink")2版协议发布，属于[自由软件](../Page/自由软件.md "wikilink")\[2\]。

## 算法与规则

Golly支持以下算法及规则\[3\]：

  - **QuickLife**：一种常规的算法，支持包括康威生命游戏在内的各种二维邻域总和相关（outer-totalistic）规则，还支持[史蒂芬·沃尔夫勒姆的一维规则](https://zh.wikipedia.org/wiki/史蒂芬·沃尔夫勒姆 "wikilink")。
  - **HashLife**：一种基于[散列表的算法](https://zh.wikipedia.org/wiki/散列表 "wikilink")，支持的规则与QuickLife相当。当元胞模式规律性较强时，HashLife的效率将大大超过QuickLife；当元胞模式趋于[混沌](../Page/混沌.md "wikilink")时，HashLife反而不如QuickLife高效。
  - **Generations**：一种支持多元胞状态的算法，经典的康威生命游戏中每个元胞只有生/死两种状态，而Generations可以支持那些拥有多状态（最高可达256个状态）的规则。
  - **JvN**：由[约翰·冯·诺伊曼](../Page/约翰·冯·诺伊曼.md "wikilink")最早提出的元胞自动机算法（20世纪40年代），支持诺伊曼本人提出的JvN29规则（一个包含29种状态的元胞自动机）及其变种。
  - **RuleLoader**：允许用户自定义规则的算法，用户可通过外部.rule文件按照规定的格式\[4\]定义规则。

## 快捷操作

Golly支持以下快捷操作和快捷键\[5\]\[6\]：

### 鼠标快捷操作

  - 单击状态栏的"Generation=..."可修改代数
  - 单击状态栏的"Scale=..."可将显示比例设定为1:1
  - 单击状态栏的"Step=..."可将步长恢复为默认值（即指数位恢复为0）
  - 双击编辑栏的元胞图标可设定界面及图标颜色
  - 使用鼠标滚轮可缩放当前视野
  - 在文件栏中右键单击可打开并编辑模式文件

### 键盘快捷键

|        |          |  |        |                 |  |         |                 |
| ------ | -------- |  | ------ | --------------- |  | ------- | --------------- |
| Tab    | 下一步      |  | 空格     | 下一代             |  | 回车      | 暂停/启动元胞繁殖       |
| 方向键    | 移动视野     |  | \+     | 加快速度（Step指数位加1） |  | \-      | 降低速度（Step指数位减1） |
| ?      | 显示帮助     |  | \[     | 缩小              |  | \]      | 放大              |
| Ctrl+R | 恢复到初始形态  |  | Z      | 撤销              |  | Shift+Z | 重做              |
| L      | 显示/不显示网格 |  | T      | 自动调整视野大小        |  | F       | 调整视野大小以适应当前形态   |
| B      | 反色显示     |  | F11    | 全屏显示            |  | '       | 显示/隐藏工具栏        |
| P      | 显示/隐藏文件栏 |  | ;      | 显示/隐藏状态栏        |  | /       | 显示/隐藏编辑栏        |
| Ctrl+N | 新建元胞模式   |  | Ctrl+S | 保存当前形态          |  | Ctrl+Q  | 退出Golly         |

## 同类软件

与Golly功能相仿的软件有：

  - ：由Mirek Wójtowicz编写的模拟软件。项目主页：

  - [Xlife](https://zh.wikipedia.org/wiki/Xlife "wikilink")：由Jon Bennett编写的模拟软件。项目主页：

  - [Life32](https://zh.wikipedia.org/wiki/Life32 "wikilink")：由Johan Bontes编写的模拟软件。项目主页：

  - [LifeLab](https://zh.wikipedia.org/wiki/LifeLab "wikilink")：由Andrew Trevorrow编写的模拟软件。项目主页：

## 参考资料

## 外部链接

  - [Golly项目主页](http://golly.sourceforge.net/)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.
2.
3.
4.
5.
6.