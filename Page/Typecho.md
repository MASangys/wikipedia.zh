**Typecho**是一个基于[PHP的简洁的开源博客程序](../Page/PHP.md "wikilink")。它使用多种数据库（[MySQL](../Page/MySQL.md "wikilink")、[PostgreSQL](../Page/PostgreSQL.md "wikilink")、[SQLite](../Page/SQLite.md "wikilink")、[MariaDB](https://zh.wikipedia.org/wiki/MariaDB "wikilink")）储存数据，在[GNU
GPLv2许可证下发行](https://zh.wikipedia.org/wiki/GNU通用公共许可协议 "wikilink")。\[1\]\[2\]\[3\]\[4\]\[5\]\[6\]

## 名称来历

Typecho 是由 type 和 echo 两个词合成的，来自于开发团队的头脑风暴。

Type，有打字的意思，博客这个东西，正是一个让我们通过打字，在网络上表达自己的平台。Echo，意思是回声、反馈、共鸣，也是PHP里最常见、最重要的函数，相信大部分PHP爱好者都是从
echo 'Hello,world\!'; 开始自己的PHP编程之路的。\[7\]

Typecho 由两个单词 type 和 echo 组成的，在发音的时候也发这两个音`/taɪpˌ'ekoʊ/`。\[8\]

## 发展历史

Typecho的前身是开源博客程序Magike，由Typecho项目的发起人JoyQi(70)开发。该团队的最初形成，是在[wordcamp
china的活动上](../Page/WordCamp.md "wikilink")，后来有更多成员加入了这个项目，之后改名为Typecho。\[9\]这个名字来源于团队内部的头脑风暴：Type，有打字的意思；Echo，意思是回声、反馈、共鸣，也是PHP里最常见、最重要的函数。将这两个词合并在一起，就有了Typecho。\[10\]\[11\]

团队成员来自天南地北，通过邮件、[IM沟通并制订开发计划](https://zh.wikipedia.org/wiki/即时通信 "wikilink")，利用工作之余的闲暇时间完成开发工作。\[12\]

## 特性

### 扩展

和[WordPress一样](../Page/WordPress.md "wikilink")，Typecho带有完整的插件与模板（主题）机制。\[13\]它们可以在不更改博客内容和Typecho核心部分时，修改博客的界面和功能。插件与模板可以在官方论坛上下载，然后上传到/usr/目录下。\[14\]

### 使用 Markdown 语法

Typecho使用的是[Markdown语法](https://zh.wikipedia.org/wiki/Markdown "wikilink")，通过[HyperDown](https://github.com/SegmentFault/HyperDown)解析器进行解析。\[15\]Markdown是一种轻量级标记语言，它允许人们“使用易读易写的纯文本格式编写文档，然后转换成有效的XHTML（或者HTML）文档”。\[16\]

### 代码

Typecho 的代码不到 500 KB，数据表仅7张（不包括扩展生成的数据表）。\[17\]

### 自适应

Typecho的默认模板和后台，全部采用了[响应式设计](https://zh.wikipedia.org/wiki/响应式网页设计 "wikilink")。所以Typecho的大多数民间模板，都采用了自适应设计。\[18\]

## 版本

Typecho最早可下载的版本是0.3 <small>(8.12.30)</small>，括号内的数字即代表发布日期，如0.3
<small>(8.12.30)</small>的发布时间为2008年12月30日。\[19\]

截止2018年8月19日，Typecho的最新正式版为1.1(17.10.30)\[20\]，最新开发版为1.2(18.1.29)\[21\]\[22\]。

正式版可在官方网站下载，开发版可在官方网站和Github上下载。\[23\]\[24\]

1.0及以前的版本为旧版，存在安全漏洞，除非特殊需要否则请不要下载。它们可以在 [Google
Code](https://zh.wikipedia.org/wiki/Google_Code "wikilink") 存档页面下载。

<table>
<colgroup>
<col style="width: 40%" />
<col style="width: 70%" />
<col style="width: 10%" />
<col style="width: -20%" />
</colgroup>
<thead>
<tr class="header">
<th><p>版本号</p></th>
<th><p><strong>Status</strong></p></th>
<th><p>发布时间</p></th>
<th><p>详情</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0.3 <small>(8.12.30)</small></p></td>
<td><p>release</p></td>
<td><p>2008-12-30</p></td>
<td><p>基于Magike打造的第一个版本</p></td>
</tr>
<tr class="even">
<td><p>0.4 <small>(9.1.21)</small></p></td>
<td><p>release</p></td>
<td><p>2009-01-21</p></td>
<td><p>由于官方博客文章丢失，暂不知晓</p></td>
</tr>
<tr class="odd">
<td><p>0.5 <small>(9.3.13)</small></p></td>
<td><p>release</p></td>
<td><p>2009-03-13</p></td>
<td><ol>
<li>一些细小的改变：更加方便的升级，一些操作细节的改进，日期操作的改进，删除功能的确认；</li>
<li>上一个版本已经发现的bug修正；</li>
<li>所见即所得编辑器的加入；</li>
<li>安装程序的优化。[25]</li>
</ol></td>
</tr>
<tr class="even">
<td><p>0.6 <small>(9.6.1)</small></p></td>
<td><p>release</p></td>
<td><p>2009-06-01</p></td>
<td><p>除了修正了beta版本的bug外，还增加了堆楼的功能[26]</p></td>
</tr>
<tr class="odd">
<td><p>0.7 <small>(9.10.31)</small></p></td>
<td><p>release</p></td>
<td><p>2009-10-31</p></td>
<td><ol>
<li>对系统进行调整，优化了效率，修正了若干bug</li>
<li>系统默认皮肤改进</li>
<li>评论：增加评论分页功能、评论修改功能</li>
<li>附件：增加附件替换功能，改进附件列表</li>
<li>增加用户注册功能</li>
<li>修正静态链接启用方法</li>
<li>增加插件版本依赖检测</li>
<li>增加按作者归档</li>
<li>增加自动保存功能</li>
<li>后台内容管理页面链接调整，归档更加方便[27]</li>
</ol></td>
</tr>
<tr class="even">
<td><p>0.8 <small>(10.8.15)</small></p></td>
<td><p>release</p></td>
<td><p>2010-08-15</p></td>
<td><p>修正了一些由热心网友发现的bug，增加了一些插件接口，增加了模板选项（设置）</p></td>
</tr>
<tr class="odd">
<td><p>0.9 <small>(13.12.12)</small></p></td>
<td><p>release</p></td>
<td><p>2013-12-12</p></td>
<td><ol>
<li>修正了0.8以来的大量bug[28]</li>
<li>新的安装程序支持BAE, SAE, GAE 自动安装</li>
<li>完全重构了后台，自适应手持设备</li>
<li>原生支持Markdown编辑器，实时预览</li>
<li>支持自定义字段</li>
<li>支持自定义独立页面和分类页面链接样式[29][30][31]</li>
</ol></td>
</tr>
<tr class="even">
<td><p>0.9 <small>(14.5.25)</small></p></td>
<td><p>release</p></td>
<td><p>2014-05-25</p></td>
<td><p>与<a href="https://zh.wikipedia.org/wiki/乌云_(漏洞报告平台)" title="wikilink">乌云网合作</a>，修复了一些安全漏洞和bug，并增加了多级分类支持、上传文件多选、对多语言的支持等。[32][33]</p></td>
</tr>
<tr class="odd">
<td><p>1.0 <small>(14.10.9)</small></p></td>
<td><p>release</p></td>
<td><p>2014-10-09</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1.0 <small>(14.10.10)</small></p></td>
<td><p>release</p></td>
<td><p>2014-10-10</p></td>
<td><p>上一个版本的修正版，修正了用户在升级后出现网站访问错误的情况，并带来了一个新的可降低垃圾评论的数量的feature[34]</p></td>
</tr>
<tr class="odd">
<td><p>1.1 <small>(17.10.24)</small></p></td>
<td><p>release</p></td>
<td><p>2017-10-24</p></td>
<td><ol>
<li>做了大量的易用性修复</li>
<li>修复两个高危的漏洞(XMLRPC的和安装文件的)</li>
<li>新增了备份功能</li>
<li>新增了若干的插件钩子和特性</li>
<li>修正了上一个版本以来的大量错误</li>
<li>新增了Mysqli适配器</li>
<li>增加夏令时支持</li>
<li>修正了反垃圾的措施</li>
<li><a href="../Page/PHP.md" title="wikilink">PHP最低要求提升至PHP</a>5.4[35]</li>
</ol></td>
</tr>
<tr class="even">
<td><p>1.1 <small>(17.10.30)</small></p></td>
<td><p>release</p></td>
<td><p>2017-10-30</p></td>
<td><p>除上述以外，还包括</p>
<ol>
<li>替换了 Markdown 解析引擎，保证预览与实际效果严格一致</li>
<li>在升级之前加入了自动安全检查机制</li>
<li>修正了一个时区的错误[36]</li>
</ol></td>
</tr>
</tbody>
</table>



### 衍生版本

**[HPTypecho](https://zh.wikipedia.org/wiki/HPTypecho "wikilink")**：Typecho的高性能版本\[37\]

## 外部链接

  - [官方网站：typecho.org](http://typecho.org/)
  - [官方论坛：forum.typecho,org](http://forum.typecho.org)
  - [官方日志：typecho.org/blog](http://typecho.org/blog)
  - [官方下载站：typecho.org/download](http://typecho.org/download)
  - [官方 Github](https://github.com/typecho/typecho)
  - [官方 SegmentFault 问答](https://segmentfault.com/t/typecho)

## 参考资料

[Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink")
[Category:網誌軟體](https://zh.wikipedia.org/wiki/Category:網誌軟體 "wikilink")

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