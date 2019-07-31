**G.711**是一種由國際電信聯盟（[ITU-T](https://zh.wikipedia.org/wiki/ITU-T "wikilink")）訂定音頻編碼方式，又稱為ITU-T G.711。

## 形式

G.711使用64Kbps的[帶寬](https://zh.wikipedia.org/wiki/帶寬 "wikilink")，可將14bits轉換成8bits。目前G.711有兩個編碼方式，A-law以及μ-law。2008年3月國際電信聯盟正式發布了最新的寬帶語音編解碼標準G.711.1。

## G.711 A-Law

A-law 編碼是以 13-bit 帶符號的線性音效樣品輸入並轉換成 8 bit 的值如下:

|                  |          |
| ---------------- | -------- |
| **线性输入值**        | **输出值**  |
| s0000000wxyza... | s000wxyz |
| s0000001wxyza... | s001wxyz |
| s000001wxyzab... | s010wxyz |
| s00001wxyzabc... | s011wxyz |
| s0001wxyzabcd... | s100wxyz |
| s001wxyzabcde... | s101wxyz |
| s01wxyzabcdef... | s110wxyz |
| s1wxyzabcdefg... | s111wxyz |

## G.711.1

2008年3月ITU-T正式發布宽带语音编解码标准G.711.1，支援50Hz到7kHz的宽带语音音频信号。

## 參考書目

  - \[<http://www.itu.int/rec/dologin_pub.asp?lang=e&id=T-REC-G.711-198811-I>\!\!PDF-E\&type=items ITU-T Recommendation G.711\] - (STD.ITU-T RECMN G.711-ENGL 1989)
  - [G.711 codec process](http://www.en.voipforo.com/codec/codecs-g711-alaw.php)

## 參見

  - [G.718](https://zh.wikipedia.org/wiki/G.718 "wikilink")
  - [G.719](https://zh.wikipedia.org/wiki/G.719 "wikilink")
  - [G.722](https://zh.wikipedia.org/wiki/G.722 "wikilink")
  - [G.722.1](https://zh.wikipedia.org/wiki/G.722.1 "wikilink")
  - [G.722.2](https://zh.wikipedia.org/wiki/G.722.2 "wikilink")
  - [G.723](https://zh.wikipedia.org/wiki/G.723 "wikilink")
  - [G.723.1](https://zh.wikipedia.org/wiki/G.723.1 "wikilink")
  - [G.726](https://zh.wikipedia.org/wiki/G.726 "wikilink")
  - [G.728](https://zh.wikipedia.org/wiki/G.728 "wikilink")
  - [G.729](https://zh.wikipedia.org/wiki/G.729 "wikilink")
  - [G.729a](https://zh.wikipedia.org/wiki/G.729a "wikilink")
  - [編解碼器列表](../Page/編解碼器列表.md "wikilink")

## 外部連結

  - [ITU-T G.711 page](http://www.itu.int/rec/recommendation.asp?type=folders&lang=e&parent=T-REC-G.711)
  - [ITU-T G.191 software tools for speech and audio coding, including G.711 C code](http://www.itu.int/rec/T-REC-G.191/en)
  - [Code Project C\# implementation of G.711 with source code](https://web.archive.org/web/20060720180425/http://www.codeproject.com/csharp/g711audio.asp)

[Category:音頻編解碼器](https://zh.wikipedia.org/wiki/Category:音頻編解碼器 "wikilink") [Category:音效編解碼器](https://zh.wikipedia.org/wiki/Category:音效編解碼器 "wikilink")