> 本文内容由[MPEG-21](https://zh.wikipedia.org/wiki/MPEG-21)转换而来。


**MPEG-21**是正在制定中的[MPEG](../Page/MPEG.md "wikilink")标准，致力于定义[多媒体](../Page/多媒体.md "wikilink")应用的一个开放框架。

## 第13部分

MPEG-21希望發展一種高效率之[可調性視訊編碼標準](https://zh.wikipedia.org/wiki/可調性視訊編碼 "wikilink")（Scalable Video Coding; SVC）以適用於UMA之目標，並計畫將此標準納入其Part 13: Scalable Video Coding的標準。

此種可調性編碼器必須符合下列需求：SNR / temporal / spatial / complexity / region-of-interest / object-based以及combined scalability、錯誤強韌性及graceful degradation、base-layer相容性、低傳輸延遲、隨機存取功能、良好的編碼效率、支援interlaced video等等。

在2003年3月已經在MPEG會議進行一次各種提案之初步效能評估。當時共有兩種主流技術趨勢：DCT-based方法及interframe wavelet-based方法。一開始，因為DCT-based FGS已被制訂為MPEG-4 streaming profile標準，而且wavelet編碼難以克服在低位元率效率不佳之問題，因此DCT-based FGS在一開始居於領先地位。但是在美國RPI Prof. Woods發展出MC-EZBC interframe wavelet編碼技術後，由於效能大幅改善，再加上wavelet本身具備之高度可調性，wavelet-based FGS已經後來居上，而逐漸主導了MPEG-21 SVC標準的走向。

後來MPEG組織於2003年12月的會議持續公開徵求SVC的提案（Call for Proposal）之後，在2004年3月的會議共有15篇方法被提出，當時的提案大致可以分為兩類主要的方法：wavelet-based及H.264-based，雖然大部分的方法都是wavelet-based的方法，不過由Heinrich-Hertz Institute（HHI）所提出的H.264-based的方法經過效能比較之後，卻比起其他wavelet-based方法還要來的突出。因此經過第一階段的效能比較之後，MPEG會議決定由微軟亞洲研究院（Microsoft Research Asia; MSRA）所提出的Barbell-lifting wavelet-based SVC與HHI所提出的H.264-based SVC這兩個提案來競爭。

經過約半年的方法比較與改進之後，在2004年10月的MPEG會議初步決定以HHI的方法為Reference software，並提出一個Scalable Video Model（SVM）。雖然此時支持wavelet-based方法的人仍持續提出方法改進，希望能夠適時扭轉局面，但是方法比較上還是都不能勝過HHI的方法，至2005年1月的MPEG會議結束後大勢底定，未來MPEG-21 SVC的方法將以HHI的H.264-based SVC為基礎繼續發展。

## 参见

[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink") [Category:MPEG](https://zh.wikipedia.org/wiki/Category:MPEG "wikilink")