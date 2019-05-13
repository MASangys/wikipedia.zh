**G.711**是一種由國際電信聯盟（[ITU-T](../Page/ITU-T.md "wikilink")）訂定音頻編碼方式，又稱為ITU-T
G.711。

## 形式

G.711使用64Kbps的[帶寬](../Page/帶寬.md "wikilink")，可將14bits轉換成8bits。目前G.711有兩個編碼方式，A-law以及μ-law。2008年3月國際電信聯盟正式發布了最新的寬帶語音編解碼標準G.711.1。

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

  - \[<http://www.itu.int/rec/dologin_pub.asp?lang=e&id=T-REC-G.711-198811-I>\!\!PDF-E\&type=items
    ITU-T Recommendation G.711\] - (STD.ITU-T RECMN G.711-ENGL 1989)
  - [G.711 codec
    process](http://www.en.voipforo.com/codec/codecs-g711-alaw.php)

## 參見

  - [G.718](../Page/G.718.md "wikilink")
  - [G.719](../Page/G.719.md "wikilink")
  - [G.722](../Page/G.722.md "wikilink")
  - [G.722.1](../Page/G.722.1.md "wikilink")
  - [G.722.2](../Page/G.722.2.md "wikilink")
  - [G.723](../Page/G.723.md "wikilink")
  - [G.723.1](../Page/G.723.1.md "wikilink")
  - [G.726](../Page/G.726.md "wikilink")
  - [G.728](../Page/G.728.md "wikilink")
  - [G.729](../Page/G.729.md "wikilink")
  - [G.729a](../Page/G.729a.md "wikilink")
  - [編解碼器列表](../Page/編解碼器列表.md "wikilink")

## 外部連結

  - [ITU-T G.711
    page](http://www.itu.int/rec/recommendation.asp?type=folders&lang=e&parent=T-REC-G.711)
  - [ITU-T G.191 software tools for speech and audio coding, including
    G.711 C code](http://www.itu.int/rec/T-REC-G.191/en)
  - [Code Project C\# implementation of G.711 with source
    code](https://web.archive.org/web/20060720180425/http://www.codeproject.com/csharp/g711audio.asp)

[Category:音頻編解碼器](https://zh.wikipedia.org/wiki/Category:音頻編解碼器 "wikilink")
[Category:音效編解碼器](https://zh.wikipedia.org/wiki/Category:音效編解碼器 "wikilink")