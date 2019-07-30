Chaocipher是John F. Byrne于1918年设计出的一套[加密系统](https://zh.wikipedia.org/wiki/加密 "wikilink")。 1954年，他在他的自传《Silent Year》中加入了一个用Chaocipher加密后的消息作为谜题来挑战读者，至今无人破解。2010年5月，Byrne家族将所有与Chaocipher相关的文件和物件捐献给美国[国家密码博物馆](https://zh.wikipedia.org/wiki/国家密码博物馆 "wikilink")（[英版维基百科资料](http://en.wikipedia.org/wiki/National_Cryptologic_Museum)），Chaocipher的加密方式才就此大白于天下，但是书中的谜题仍然无从破解。

## 加密方式

### 实体模型

实体的加密机**模型**由两个密码盘和基座组成，基座内有齿轮，保证与密码盘连接的两个齿轮旋转方向相反，转速相同。密码盘分为左盘和右盘，左盘为加密后的字母（[密文](https://zh.wikipedia.org/wiki/密文 "wikilink")），右盘为加密前的字母（[明文](https://zh.wikipedia.org/wiki/明文 "wikilink")）。密码盘可从齿轮上快速卸下。密码盘上各有26个字母，每个字母可从密码盘上快速卸下。

标准的Chaocipher密码字母盘如下：
左盘（按逆时针方向排列）: HXUCZVAMDSLKPEFJRIGTWOBNYQ
右盘（按顺时针方向排列）: PTLNBQDEOYSFAVZKGJRIHWXUMC
各个人可以指定各自的字母盘

定义两个位置：高点（+），低点（\*）（在密码盘上位置相对）。在我们用字符串表示出的密码盘状态里，两个位点分别对应第一位和第十四位。

## 加密过程

### 准备工作

1、选定一个初始状态：这里我们简单点，就以上面给出的标准盘的顺序。当然我们也可以比如说让左盘从W开头（WOBNYQ...）。加密的文字我们用WELLDONEISBETTERTHANWELLSAID（说得好不如做得好）

### 获取密文

2、在右盘中找到要加密的字母，这里是W。

3、找出W对应的密文（实物模型上相当于将右盘旋转使W在高点，因为会带动左盘，左盘高点对应的字母就是密文。在字符串里我们先直接用感叹号表示出来），这里是O，记下来。
标识：+ \* \!
左： HXUCZVAMDSLKPEFJRIGTW**O**BNYQ
右： PTLNBQDEOYSFAVZKGJRIH**W**XUMC

### 更改码盘

这里是Chaocipher的精髓，通过对码盘的时时变换，把简单的\[单字母表对应\]转变成了随机关键词对应。

4、刚才在实体模型上我们已经把那两个字符都转到了高位上，但是字符串这儿还没有。转一下。
标识：+ \*
左： OBNYQHXUCZVAMDSLKPEFJRIGTW
右： WXUMCPTLNBQDEOYSFAVZKGJRIH
5、把左盘高位字母逆时针方向的第一个字母取下来（字符串的第二个字母）
标识：+ \*
左： O.NYQHXUCZVAMDSLKPEFJRIGTW
右： WXUMCPTLNBQDEOYSFAVZKGJRIH
6、把从逆时针第二个字母（字符串第三个字母）到低位的所有字母前移一位，并把刚才取下的字母放到低位
标识：+ \*
左： ONYQHXUCZVAMD**B**SLKPEFJRIGTW
右： WXUMCPTLNBQDEOYSFAVZKGJRIH
7、现在是右盘。**转变方式和左盘不同！**先将右盘向逆时针方向旋转一位（对于实体模型，要把右盘卸下来，因为这一步**不能带动左盘旋转**），也就是在字符串上将右盘每个字符前移一位，第一个字符放到最后。
标识：+ \*
左： ONYQHXUCZVAMDBSLKPEFJRIGTW（左盘不动）
右： XUMCPTLNBQDEOYSFAVZKGJRIHW
8、把右盘高位字母顺时针方向的第二个字母取下来（字符串的第三个字母）
标识：+ \*
左： ONYQHXUCZVAMDBSLKPEFJRIGTW
右： XU.CPTLNBQDEOYSFAVZKGJRIHW
9、把从逆时针第三个字母（字符串第四个字母）到低位的所有字母前移一位，并把刚才取下的字母放到低位
标识：+ \*
左： ONYQHXUCZVAMDBSLKPEFJRIGTW
右： XUCPTLNBQDEOY**M**SFAVZKGJRIHW
10、重复获取密文和更改码盘这两个部分直到加密完成。

## 解码过程

跟加密大同小异，只是要从左盘的密文找到右盘对应的明文罢了，码盘更改方式是一样的。

## 参考资料

  - [*Chaocipher Revealed Algorithm*](http://www.mountainvistasoft.com/chaocipher/ActualChaocipher/Chaocipher-Revealed-Algorithm.pdf)-by Rubin, Moshe (July 2, 2010).

[Category:古典密码](https://zh.wikipedia.org/wiki/Category:古典密码 "wikilink")