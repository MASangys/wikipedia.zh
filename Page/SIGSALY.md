**SIGSALY**，也被称为**X系统**、**X项目**、**密码电话 I**，或者**绿色大黄蜂**，它是为[二战期间](../Page/第二次世界大战.md "wikilink")[盟军最高层设计的一个经过数字](https://zh.wikipedia.org/wiki/盟军 "wikilink")[加密](../Page/加密.md "wikilink")的[无线电话系统](https://zh.wikipedia.org/wiki/无线电话 "wikilink")。

SIGSALY是通信系统发展过程中的一个里程碑，当代[数字通信耳熟能详的一系列概念在其中首次得以运用](https://zh.wikipedia.org/wiki/数字通信 "wikilink")，其中包括著名的[脉冲编码调制技术](https://zh.wikipedia.org/wiki/脈衝編號調變 "wikilink")（PCM）。

SIGSALY不是首字母缩略词，没有什么含义。别名“绿色大黄蜂”则说出了这个语音通话系统的保密特征——窃听者只能听到像[大黄蜂一样嗡嗡作响的噪声](https://zh.wikipedia.org/wiki/大黄蜂 "wikilink")。

## 发展过程

二战期间交战双方都用[电子扰频器](https://zh.wikipedia.org/wiki/电子扰频器 "wikilink")（scrambler）保护自己的无线通信不受窃听，但是突破电子扰频器的屏蔽并不十分困难。只要用一台[频谱分析仪](../Page/频谱分析仪.md "wikilink")器对通信[频谱](../Page/频谱.md "wikilink")进行仔细扫描，就能发现扰频的规律从而加以破解。为了弥补这个缺陷，基于一次性密码本的[加密](../Page/加密.md "wikilink")技术出现了。

[贝尔实验室](../Page/贝尔实验室.md "wikilink")开发了基于一次性密码本加密技术的无线通话系统的原型机，并展示给军方。领导这个项目的是A·B·Clark，[英国则派出了著名数学家](https://zh.wikipedia.org/wiki/英国 "wikilink")[艾伦·图灵](../Page/艾伦·图灵.md "wikilink") \[1\] 给予协助。军方对此非常满意，向贝尔实验室购买了两套设备并于1943年投入使用，这就是SIGSALY。SIGSALY一直为军方服役至1946年。

## 工作原理

SIGSALY用一个随机噪声掩码对语音通话进行[加密](../Page/加密.md "wikilink")，整个[编码加密过程由一个声码器](https://zh.wikipedia.org/wiki/编码 "wikilink")（vocoder）完成。声码器能减少语音流中的冗余信息，从而减少编码的工作量。

SIGSALY每隔20毫秒对语音信号的幅度进行一次采样。采样取值按照6档进行数字化，最小是0，最大是5。需要指出的是，SIGSALY使用非线性采样法，即声音小的时候采样间隔比较宽，声音大的时候采样间隔比较窄，这是基于所谓的[压缩扩展的原理](https://zh.wikipedia.org/wiki/压缩 "wikilink")，因为人的耳朵对大音量的变化比较敏感，而对小音量的变化不敏感。

加密的密钥也是在0到5之间[随机挑选](https://zh.wikipedia.org/wiki/随机 "wikilink")。加密的过程是采样取值减去密钥，然后对6取模。如果做减法的结果是负数，则加6。比如，语音采样值是3，而随机密钥是5, 运算过程如下：

\[3 - 5 \equiv -2,\ -2 + 6 \equiv 4\pmod 6 \,\]

— 最后的结果是4.

完成上述运算后，系统在6个载频中挑选一个运送采样取值，这个技术也叫频移键控（frequency-shift keying，FSK）。SIGSALY接收终端收到信号时，先将他们还原成采样取值，然后加上随机密钥（0到5）进行[解码](https://zh.wikipedia.org/wiki/解码 "wikilink")。解码的过程中同样用到模运算。比如，SIGSALY收到的采样取值是4，随机密钥是5（必须与发送端完全一样），则加法运算结果是：

\[4 + 5 \equiv 9,\ 9 - 6 \equiv 3\pmod 6 \,\]

— 最后得到结果3。

SIGSALY用所谓的“一次性密码本”的方法产生随机密钥。随机密钥被刻录在电唱片上，每张唱片可以为12分钟的语音流加密。当制作完成足够数量的电唱片之后，就派专人将唱片副本送到SIGSALY接收端。如果直接播放唱片，听到的只有噪声。SIGSALY发送端的声音和唱片上的密钥混合后，产生的也是象大黄蜂一样的嗡嗡声。但是接收端只要在播放唱片时与发送端严格同步，就能还原发送端的声音。由于每个通话使用不同的唱片，因此[德国人永远不可能破译密码](https://zh.wikipedia.org/wiki/德国人 "wikilink")。

## 重要意义

SIGSALY被誉为拥有现代通信系统的许多个第一，包括：

1.  第一个实用的加密电话系统
2.  第一次实现[离散化的语音传输](https://zh.wikipedia.org/wiki/离散化 "wikilink")
3.  第一次用脉冲编码调制（PCM）技术实现语音传输
4.  第一次使用压缩PCM技术
5.  第一次实现多层次频移键控技术（Frequency Shift Keying，FSK)
6.  第一次实现语音带宽压缩
7.  第一次使用FSK - FDM (Frequency Shift Keying-Frequency Division Multiplex) 对抗信道衰落
8.  第一次使用多层次眼图技术（ eye pattern）来监控语音信号的采样质量

## 参考链接

[Category:通信技术](https://zh.wikipedia.org/wiki/Category:通信技术 "wikilink")

1.