**Debian自由软件指导方针**（，简称）是[Debian项目用来判断](../Page/Debian.md "wikilink")[自由软件许可证的方针](../Page/自由软件.md "wikilink")，以决定某软件是否可以包含在Debian之中。它是的一部分。

## 方针概要

1.  自由的再次发行。
2.  包含源代码。
3.  允许修改和衍生作品。
4.  许可证可要求保持作者源代码的完整性。（作为妥协）
5.  禁止歧视人士或者组织。
6.  禁止歧视用途。例如不能禁止商业用途。
7.  权利必须适用于程序再次发行的所有受众。
8.  许可证不能特定于Debian。
9.  许可证的规定不得污染其他软件。
10. [GPL](https://zh.wikipedia.org/wiki/GNU通用公共许可协议 "wikilink")、[BSD许可证和](../Page/BSD许可证.md "wikilink")[Artistic是自由许可证的示例](https://zh.wikipedia.org/wiki/Artistic_License "wikilink")。\[1\]\[2\]

## 历史

1997年7月，Debian自由软件指导方针连同Debian社群契约首次发布\[3\]。Ean
Schuessler提出了为[发行版的许可政策提供一个正式保障的设想](../Page/Linux发行版.md "wikilink")。方针的主要作者是[布鲁斯·佩伦斯和当时其他一些Debian开发者](https://zh.wikipedia.org/wiki/布鲁斯·佩伦斯 "wikilink")。

不久，以DFSG为蓝本写成。DFSG的出现比[自由软件基金会的](../Page/自由软件基金会.md "wikilink")要晚。在DFSG成为开放源码定义后，自由软件基金会创建人[理查德·斯托曼感到区分](../Page/理查德·斯托曼.md "wikilink")[自由软件和](../Page/自由软件.md "wikilink")[开源软件的必要](../Page/开源软件.md "wikilink")，以推广自由软件定义\[4\]。自由软件定义在1986年首次发布于首个版本的GNU公告\[5\]。值得注意的是，自由软件定义的核心“四大自由”明显产生于DFSG的起草和颁布之前，但DFSG的作者在当时却并不知道它\[6\]。

1998年11月，和其他人在1.4版本的草案中提出了一些修改，但这些修改没应用到正式版中。杰克逊表示方针的问题在于“宽松的措辞”和补丁条文\[7\]。

截至2011年，方针一直没有被修改。不过社群契约做了一些修订，影响了由方针控制的发行版部分。

Debian的常规决议（）2004-003修改了社群契约\[8\]。提案者Andrew Suffield说：

  -
    “规则是‘这项决议只修改措辞，不修改精神’。对社群契约措辞上的大部分修改更好地反映了它的本意，修正了当初撰写时未考虑的问题。”\[9\]

然而，一句“我们承诺保持Debian
GNU/Linux发行版是完​​全自由的软件”到“我们承诺Debian系统及其所有组件都是自由的”的改变，导致发布管理者做出了一个实质变化：

  -
    “因为不再限于‘软件’，而且这决定是由开发者在讨论我们应该如何处理像文档和固件等非软件的内容过程中作出的，我不再拥护这项政策决议以期能免除文档、固件等内容，虽然社会契约已经修订以涵盖所​​有这些领域。”\[10\]

这促使了另一项常规决议2004-004\[11\]，其中开发者以压倒性票数决定推迟修改直到下一个版本（其开发始于一年后，2005年6月）。

## 应用

### 软件

关于DFSG的大部分讨论位于debian-legal[邮件列表](https://zh.wikipedia.org/wiki/邮件列表 "wikilink")。当Debian开发人员首先上传将要包含在Debian中的软件包时，ftpmaster团队检查软件许可证以确定其是否符合社群契约。在有困难的情况下，团队会在debian-legal列表里商议。

### 非软件内容

DFSG专注于[软件](../Page/软件.md "wikilink")，但这个词本身的范围是不确定的——一些人将其应用到所有可以被表示为比特流的东西，而少数认为它只能指计算机程序。此外，[PostScript的存在](../Page/PostScript.md "wikilink")、可执行的脚本、源文档等等，极大地搞乱了第二个定义。因此为了打破混乱，2004年6月Debian项目决定将相同的准则明确应用于[软件文档](../Page/软件文档.md "wikilink")、多媒体数据和其他内容。Debian中的非程序内容从Debian
4.0（发布于2007年4月）开始严格地符合DFSG。

### GNU自由文档许可证

由[GNU计划](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")、[Linux文档计划等撰写的许多文档采用](../Page/Linux文档计划.md "wikilink")[GNU自由文档许可证授权](../Page/GNU自由文档许可证.md "wikilink")，而其中包含的“不变章节”不符合DFSG。这种说法是长时间的讨论和常规决议2006-001的最终结果\[12\]。

由于GNU自由文档许可证的“不变章节”，该许可证下的内容必须置于一个额外的“非自由”包库内，不作为Debian的一部分。

### 多媒体文件

有时很难界定什么是多媒体文件的“源”，如未压缩的图像文件是否是压缩图像的源，[光线追踪前的三维模型是否是其产生的图像的源](https://zh.wikipedia.org/wiki/光线追踪 "wikilink")。

## debian-legal测试

debian-legal邮件列表的订户们创造了一些测试，以检查许可证是否符合DFSG。常见的测试（见于DFSG FAQ草案\[13\]）如下：

  - 荒岛测试。想象一个在荒岛上的漂流者，他有一台太阳能供电的电脑。这时进行更改并公开或向某些特定的地方发送补丁的需求完全不可能满足。即使他能够接收却无法发送邮件，这种情况仍将持续。因此为了自由，软件必须可被这个不幸的漂流者修改，他还必须能够在岛上合法地与朋友们分享修改。
  - 持不同政见者测试。考虑一个在极权国家的[持不同政见者](../Page/持不同政见者.md "wikilink")，他想要和同样的持不同政见者分享一个修改过的软件，但不希望向政府透露修改人的身份或修改本身，甚至是藏有该程序的消息。任何向收件人以外的人发布源代码修改的行为将使他处于危险中。因此对于Debian，软件自由意味着不能有任何超额发布。
  - 邪恶触手测试。想象一下，一个软件作者由一家邪恶的大公司聘请，在其束缚之下试图要做对程序用户最坏的事情：使他们的生活苦不堪言，使他们停止使用该程序，揭发他们的法律责任，使程序不自由，寻找他们的秘密等等。同样的事情可能发生在一家被大公司收购的公司，那家大公司执意摧毁自由软件以维持其垄断地位并扩大其邪恶帝国。因此为了自由，许可证甚至不能让软件作者带走必需的自由。

## 参见

  - [Debian](../Page/Debian.md "wikilink")
  - [自由软件](../Page/自由软件.md "wikilink")

## 参考资料

## 外部链接

  - [Debian社群契约和自由软件指导方针](http://www.debian.org/social_contract#guidelines)
  - [现时Debian接受的许可证列表](http://www.debian.org/legal/licenses/)

[Category:Debian](https://zh.wikipedia.org/wiki/Category:Debian "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")

1.

2.

3.
4.

5.  [GNU's Bulletin, First
    Edition](http://www.gnu.org/bulletins/bull1.txt)

6.  Bruce Perens: "[when I had to write license guidelines for Debian,
    the Four Freedoms document was
    unknown.](http://news.slashdot.org/comments.pl?sid=1129863&cid=26875815)"

7.  Ian Jackson: [Draft new
    DFSG](http://lists.debian.org/debian-devel/1998/11/msg01944.html),
    debian-devel mailing list

8.  [General Resolution: Editorial amendments to the social
    contract](http://www.debian.org/vote/2004/vote_003)

9.  Andrew Suffield: [Re: Candidate social contract amendments (part 1:
    editorial) (3rd
    draft)](http://lists.debian.org/debian-vote/2004/01/msg00692.html),
    debian-vote mailing list

10. Anthony Towns: [Social Contract GR's effect on
    Sarge](http://lists.debian.org/debian-devel/2004/04/msg01929.html),
    debian-devel mailing list

11. [General Resolution: Sarge Release Schedule in view of
    GR 2004-003](http://www.debian.org/vote/2004/vote_004)

12. [General Resolution: Why the GNU Free Documentation License is not
    suitable for Debian main](http://www.debian.org/vote/2006/vote_001)

13. [The Debian Free Software
    FAQ](http://people.debian.org/~bap/dfsg-faq.html)