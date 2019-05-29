**LXQt**是一个资源需求相对较低的[免费的开源](../Page/自由及开放源代码软件.md "wikilink")[Linux](../Page/Linux.md "wikilink")[桌面环境](../Page/桌面环境.md "wikilink")，它是由[LXDE和](../Page/LXDE.md "wikilink")[Razor-qt项目合并而成](../Page/Razor-qt.md "wikilink")。

## 历史

因为对[GTK+
3不满意](../Page/GTK.md "wikilink")，\[1\][LXDE维护者](../Page/LXDE.md "wikilink")[洪任諭于](../Page/洪任諭.md "wikilink")2013年初对[Qt进行了实验](../Page/Qt.md "wikilink")\[2\]
，并于2013年3月26日发布了基于[Qt的](../Page/Qt.md "wikilink")[PCMan檔案管理程式的第一个版本](../Page/PCMan檔案管理程式.md "wikilink").\[3\]。不过，他澄清[LXDE不会背离](../Page/LXDE.md "wikilink")[GTK+](../Page/GTK.md "wikilink")，称“[GTK+和](../Page/GTK.md "wikilink")[Qt版本将共存](../Page/Qt.md "wikilink")”，之后他将[LXDE的Xrandr前端](../Page/LXDE.md "wikilink")[移植到](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")[Qt](../Page/Qt.md "wikilink")。\[4\]

2013年7月3日，[洪任諭宣布推出完整](../Page/洪任諭.md "wikilink")[LXDE套件的Qt端口](../Page/LXDE.md "wikilink")。\[5\]2013年7月21日，[Razor-qt和](../Page/Razor-qt.md "wikilink")[LXDE宣布决定合并这两个项目](../Page/LXDE.md "wikilink")。\[6\]\[7\]这一合并意味着GTK+和Qt版本将首先共存，但最终将放弃[GTK+版本](https://zh.wikipedia.org/wiki/GTK+ "wikilink")，后续将集中在Qt端口上。\[8\]LXDE-Qt和Razor-qt的合并后更名为LXQt\[9\]并于2014年5月7日发布了第一个版本0.7.0。\[10\]

随着0.13版本于2018年5月21日发布，LXQT项目正式从[LXDE中分离出来](../Page/LXDE.md "wikilink")，并转移到一个独立的[Github团体](https://zh.wikipedia.org/wiki/Github "wikilink")。\[11\]

## 软件组件

LXQt由许多模块化组件组成，其中一些组件依赖于[Qt和](../Page/Qt.md "wikilink")[KDE Frameworks
5](../Page/KDE_Frameworks_5.md "wikilink")。\[12\]

<table>
<thead>
<tr class="header">
<th><p>组件</p></th>
<th><p>依赖（除<a href="../Page/Qt.md" title="wikilink">Qt外</a>）</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>qterminal</p></td>
<td></td>
<td><p>使用<a href="../Page/命令行界面.md" title="wikilink">命令行</a>，现在是LXQt的一部分</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Falkon.md" title="wikilink">Falkon</a></p></td>
<td></td>
<td><p><a href="../Page/网页浏览器.md" title="wikilink">网页浏览器</a></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/簡單顯示管理器.md" title="wikilink">sddm</a></p></td>
<td></td>
<td><p>用于LXQt和<a href="../Page/QML.md" title="wikilink">QML的</a><a href="../Page/簡單顯示管理器.md" title="wikilink">簡單顯示管理器</a></p></td>
</tr>
<tr class="even">
<td><p>lximage-qt</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/图像浏览器" title="wikilink">图像浏览器</a></p></td>
</tr>
<tr class="odd">
<td><p>lxmenu-data</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/freedesktop.org" title="wikilink">freedesktop.org桌面菜单所需的文件</a></p></td>
</tr>
<tr class="even">
<td><p>lxqt-about</p></td>
<td></td>
<td><p><a href="../Page/对话框.md" title="wikilink">关于对话框</a></p></td>
</tr>
<tr class="odd">
<td><p>lxqt-admin</p></td>
<td></td>
<td><p>系统管理工具</p></td>
</tr>
<tr class="even">
<td><p>lxqt-common</p></td>
<td></td>
<td><p>常用文件（图形文件、主题、记录文件……）</p></td>
</tr>
<tr class="odd">
<td><p>lxqt-config</p></td>
<td><p>KScreen (<a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a>)</p></td>
<td><p>系统设置中心</p></td>
</tr>
<tr class="even">
<td><p>lxqt-globalkeys</p></td>
<td></td>
<td><p>全局键盘快捷键注册的守护程序和库</p></td>
</tr>
<tr class="odd">
<td><p>lxqt-notificationd</p></td>
<td></td>
<td><p>通知<a href="../Page/守护进程.md" title="wikilink">守护进程</a></p></td>
</tr>
<tr class="even">
<td><p>lxqt-openssh-askpass</p></td>
<td></td>
<td><p>OpenSSH的密码提示</p></td>
</tr>
<tr class="odd">
<td><p>lxqt-panel</p></td>
<td><p>Solid</p></td>
<td><p>桌面面板（<a href="../Page/任务栏.md" title="wikilink">任务栏</a>）</p></td>
</tr>
<tr class="even">
<td><p>lxqt-policykit</p></td>
<td></td>
<td><p>身份验证代理</p></td>
</tr>
<tr class="odd">
<td><p>lxqt-powermanagement</p></td>
<td><p>Solid</p></td>
<td><p>电源管理守护进程</p></td>
</tr>
<tr class="even">
<td><p>lxqt-qtplugin</p></td>
<td></td>
<td><p>Qt平台集成插件（所有基于Qt的程序都可以采用LXQt的设置）</p></td>
</tr>
<tr class="odd">
<td><p>lxqt-runner</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>lxqt-session</p></td>
<td></td>
<td><p>会话管理器</p></td>
</tr>
<tr class="odd">
<td><p>lxqt-sudo</p></td>
<td></td>
<td><p>sudo/su的<a href="../Page/图形用户界面.md" title="wikilink">图形用户界面前端</a></p></td>
</tr>
<tr class="even">
<td><p>menu-cache</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>obconf-qt</p></td>
<td></td>
<td><p><a href="../Page/Qt.md" title="wikilink">Qt编写的</a><a href="../Page/Openbox.md" title="wikilink">Openbox配置工具</a></p></td>
</tr>
<tr class="even">
<td><p>compton-conf</p></td>
<td></td>
<td><p>Compton X复合管理器的<a href="../Page/图形用户界面.md" title="wikilink">图形用户界面配置工具</a>（metacity ⇒ xcompmgr ⇒ dcompmgr ⇒ Compton）[13]</p></td>
</tr>
<tr class="odd">
<td><p>pcmanfm-qt</p></td>
<td></td>
<td><p>文件管理器（<a href="../Page/PCMan檔案管理程式.md" title="wikilink">PCMan檔案管理程式的Qt端口</a>）</p></td>
</tr>
<tr class="even">
<td><p>qt-gtk-engine</p></td>
<td></td>
<td><p>Qt风格<a href="../Page/GTK.md" title="wikilink">GTK+ 3程序</a></p></td>
</tr>
</tbody>
</table>

## 版本历史

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>日期</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0.7.0</p></td>
<td><p>[14]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>0.8.0</p></td>
<td><p>[15]</p></td>
<td><p>完美<a href="../Page/兼容性.md" title="wikilink">兼容</a><a href="../Page/Qt.md" title="wikilink">Qt 5</a></p></td>
</tr>
<tr class="odd">
<td><p>0.9</p></td>
<td></td>
<td><p>大量的清理和<a href="../Page/代码重构.md" title="wikilink">重构代码</a>。取消与<a href="../Page/Qt.md" title="wikilink">Qt 4的</a><a href="../Page/兼容性.md" title="wikilink">兼容</a>，需要安装<a href="../Page/Qt.md" title="wikilink">Qt 5和</a><a href="../Page/KDE_Frameworks_5.md" title="wikilink">KDE Frameworks 5</a>，最低版本要求为<a href="../Page/Qt.md" title="wikilink">Qt 5.3</a>。[16]</p></td>
</tr>
<tr class="even">
<td><p>0.10</p></td>
<td><p>[17]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>0.11</p></td>
<td><p>[18]</p></td>
<td><p>为了解决基于<a href="../Page/Qt.md" title="wikilink">Qt的应用程序占用大量内存的担忧</a>，将此版本与<a href="../Page/Xfce.md" title="wikilink">Xfce进行了比较</a>，发现在<a href="https://zh.wikipedia.org/wiki/重新启动" title="wikilink">冷启动后LXQt的内存使用量为</a>112 MB，略低于<a href="../Page/Xfce.md" title="wikilink">Xfce</a>。[19]</p></td>
</tr>
<tr class="even">
<td><p>0.12</p></td>
<td><p>[20]</p></td>
<td><p>最低版本要求为<a href="../Page/Qt.md" title="wikilink">Qt 5.6.1</a>[21]</p></td>
</tr>
<tr class="odd">
<td><p>0.13</p></td>
<td><p>[22]</p></td>
<td><p>所有包适用于Qt 5.11</p></td>
</tr>
<tr class="even">
<td><p>0.14</p></td>
<td><p>[23]</p></td>
<td></td>
</tr>
</tbody>
</table>

## 更多

  - [Razor-qt](../Page/Razor-qt.md "wikilink")

## 参考

## 外部链接

  -
  - [LXQt Roadmap](https://github.com/lxqt/lxqt/wiki/Roadmap)

[Category:LXDE](https://zh.wikipedia.org/wiki/Category:LXDE "wikilink")
[Category:2013年软件](https://zh.wikipedia.org/wiki/Category:2013年软件 "wikilink")
[Category:自由桌面环境](https://zh.wikipedia.org/wiki/Category:自由桌面环境 "wikilink")
[Category:使用Qt的軟體](https://zh.wikipedia.org/wiki/Category:使用Qt的軟體 "wikilink")

1.
2.

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
15.

16.

17.

18.

19.

20.

21.

22.

23.