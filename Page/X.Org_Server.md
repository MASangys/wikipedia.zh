**X.Org Server**（全称）是[X Window System的官方](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")[参考實作](https://zh.wikipedia.org/wiki/参考實作 "wikilink")，它是[开放源代码](../Page/开放源代码.md "wikilink")的[自由软件](../Page/自由软件.md "wikilink")。

这个项目由[X.Org基金会](../Page/X.Org基金会.md "wikilink")运作，存放于[freedesktop.org的主机上](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink")。

由于在XFree86 4.4最终版本采用新许可证问题上的分歧，Xorg服务的第一个版本X11R6.7.0从[XFree86](../Page/XFree86.md "wikilink") 4.4 RC2[派生出来](https://zh.wikipedia.org/wiki/派生 "wikilink")，并加入了X11R6.6的一些改动。许多原先XFree86的开发者加入了这个比XFree86更开放的项目。

選擇XOrg作為提供圖形與桌面服務為主的套件，逐渐在开源實作的[類Unix操作系统中流行](https://zh.wikipedia.org/wiki/類Unix "wikilink")。

它被以下发行版本采用以代替XFree86：[Gentoo Linux](../Page/Gentoo_Linux.md "wikilink")、[Fedora Core](https://zh.wikipedia.org/wiki/Fedora_Core "wikilink")、[Slackware](../Page/Slackware.md "wikilink")、[SUSE](../Page/SUSE.md "wikilink")、[Mandrake Linux](https://zh.wikipedia.org/wiki/Mandrake_Linux "wikilink")、[Cygwin/X](https://zh.wikipedia.org/wiki/Cygwin/X "wikilink")、[Debian GNU/Linux](https://zh.wikipedia.org/wiki/Debian_GNU/Linux "wikilink")、[Ubuntu Linux](https://zh.wikipedia.org/wiki/Ubuntu_Linux "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")和[FreeBSD](../Page/FreeBSD.md "wikilink")。

## 发布历史

### 发布

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>日期</p></th>
<th><p>X11 Release</p></th>
<th><p>主要特性</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>[1]</p></td>
<td><p>X11R7.0 (1.0.1)</p></td>
<td><p>Initial modularized X server, <a href="https://zh.wikipedia.org/wiki/EXA" title="wikilink">EXA</a> architecture</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[2]</p></td>
<td><p>X11R7.1 (1.1.0)</p></td>
<td><p>KDrive integration, <a href="https://zh.wikipedia.org/wiki/AIGLX" title="wikilink">AIGLX</a> support[3]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[4]</p></td>
<td><p>X11R7.2 (1.2.0)</p></td>
<td><p>Autoconfiguration, enhanced support for GL-based compositing managers[5]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[6]</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a> 1.2[7]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[8]</p></td>
<td><p>X11R7.3 (1.4.0)</p></td>
<td><p>Input hotplugging support[9][10]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[11]</p></td>
<td><p>X11R7.4 (1.5.1)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Multi-Pointer_X" title="wikilink">MPX</a>[12]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[13]</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a> 1.3, <a href="https://zh.wikipedia.org/wiki/Direct_Rendering_Infrastructure" title="wikilink">DRI2</a>, XInput 1.5[14]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[15]</p></td>
<td><p>X11R7.5 (1.7.1)</p></td>
<td><p>XInput 2.0, multi-pointer X[16][17]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[18]</p></td>
<td></td>
<td><p>, udev input handling[19]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[20]</p></td>
<td><p>X11R7.6 (1.9.3)</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[21]</p></td>
<td></td>
<td><p>X Synchronization Fences[22]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[23]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[24]</p></td>
<td><p>X11R7.7 (1.12.2)</p></td>
<td><p>XInput 2.2 (including multi-touch support)[25]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[26]</p></td>
<td></td>
<td><p>New DDX driver API, <a href="https://zh.wikipedia.org/wiki/Direct_Rendering_Infrastructure" title="wikilink">DRI2</a> offload, <a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a> 1.4, <a href="../Page/OpenGL.md" title="wikilink">OpenGL</a> 3.x+ contexts, removing <a href="https://zh.wikipedia.org/wiki/XFree86_Acceleration_Architecture" title="wikilink">XAA</a>[27]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[28]</p></td>
<td></td>
<td><p>XInput 2.3[29]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[30]</p></td>
<td></td>
<td><p>DRI3 and Present extensions[31][32]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[33]</p></td>
<td></td>
<td><p>XWayland DDX, GLAMOR acceleration, non-PCI devices support, <a href="https://zh.wikipedia.org/wiki/Logind" title="wikilink">systemd-logind</a> support (rootless X),[34][35] obtained support for the <a href="https://zh.wikipedia.org/wiki/libinput" title="wikilink">libinput</a> library in form of a wrapper called <code>xf86-input-libinput</code>[36][37]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[38]</p></td>
<td></td>
<td><p>Generic DRM/KMS driver <code>xf86-video-modesetting</code>,[39][40] added support for <a href="https://zh.wikipedia.org/wiki/Direct_Rendering_Infrastructure#DRI2" title="wikilink">DRI2</a> with GLAMOR</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[41]</p></td>
<td></td>
<td><p><a href="https://zh.wikipedia.org/wiki/RandR" title="wikilink">RandR</a> 1.5</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[42]</p></td>
<td></td>
<td><p>Threaded Input, PRIME synchronization, XWayland pointer confinement and warping, Windows DRI extension support[43]</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td><p><a href="../Page/Meson.md" title="wikilink">Meson</a> build system, Release Candidate available</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參考資料

## 外部链接

  - [项目主页](http://www.x.org/)

  - on freenode

[Category:X服务器](https://zh.wikipedia.org/wiki/Category:X服务器 "wikilink") [Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")

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

24.

25.

26.

27.

28.

29.

30.

31.

32.

33.

34.
35.

36.

37.

38.

39.

40.

41.

42.

43.