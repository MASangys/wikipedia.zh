> 本文内容由[WAV](https://zh.wikipedia.org/wiki/WAV)转换而来。


**Waveform Audio File Format**（**WAVE**，又或者是因為[副檔名而被大眾所知的](https://zh.wikipedia.org/wiki/副檔名 "wikilink")**WAV**），是[微软](../Page/微软.md "wikilink")與[IBM](../Page/IBM.md "wikilink")公司所開發在[個人電腦儲存音訊串流的編碼格式](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")，在[Windows平台的應用軟體受到廣泛的支援](https://zh.wikipedia.org/wiki/Windows "wikilink")，地位上類似於[麥金塔](../Page/麥金塔.md "wikilink")電腦裡的[AIFF](https://zh.wikipedia.org/wiki/AIFF "wikilink")。\[1\] 此格式屬於[資源交換檔案格式](../Page/資源交換檔案格式.md "wikilink")(RIFF)的應用之一，通常會將採用[脈衝編碼調變](../Page/脈衝編碼調變.md "wikilink")的音訊資儲存在區塊中。也是其音乐发烧友中常用的指定规格之一。由于此音频格式未经过压缩，所以在音质方面不会出现失真的情况，但檔案的体积因而在众多音频格式中较为大。

## 描述

.WAV 與.AIFF 都是被微軟作業系統、[麥金塔](../Page/麥金塔.md "wikilink")作業系統、[Linux](../Page/Linux.md "wikilink")作業系統所相容的，需要特別注意的是，WAV檔案與無損檔案是不完全相同的，WAV檔案只是不去對原有檔案去做壓縮。

如果原始檔案是無損的，那能稱WAV就是無損檔案。若是將有損壓縮的檔案（例如: [mp3檔](https://zh.wikipedia.org/wiki/mp3 "wikilink"))轉成WAV檔，那麼WAV檔案也只是忠實地呈現有損檔案而已。

製作WAV檔時，會有一個取樣頻率，根據[取樣定理](https://zh.wikipedia.org/wiki/取樣定理 "wikilink")，若此取樣頻率低於信号最高频率的两倍时，那麼超過此最大頻率的頻段，將會產生[混疊](../Page/混疊.md "wikilink")的情況，使原始訊號受到汙染，亦不能稱此WAV檔就是無損檔案。

雖然WAV檔也能儲存被壓縮過的檔案，但是大多數的WAV檔是用於[CD](../Page/CD.md "wikilink")儲存原聲帶的，所以一般來說一般人聯想到WAV檔就聯想到無損檔案，也是無可厚非的。值得注意的是，[CD](../Page/CD.md "wikilink")儲存的原聲帶也不代表是完全無損的，[音樂製作人](../Page/音樂製作人.md "wikilink")會將錄製的聲音處理後製成母帶，通常取樣率為96,000[赫茲](https://zh.wikipedia.org/wiki/赫茲 "wikilink")，之後透過轉檔程式，以16bits、44,100[赫茲去做取樣](https://zh.wikipedia.org/wiki/赫茲 "wikilink")。

## 格式

WAV檔遵守[資源交換檔案格式](../Page/資源交換檔案格式.md "wikilink")之規則，在檔案的前44(或46)位元組放置[檔頭](https://zh.wikipedia.org/wiki/檔頭 "wikilink")(header)，使播放器或編輯器能夠簡單掌握檔案的基本資訊，其內容以區塊(chunk)為最小單位，每一區塊長度為4[位元組](https://zh.wikipedia.org/wiki/位元組 "wikilink")，而區塊之上則由子區塊包裹，每一子區塊長度不拘，但須在前頭先宣告標籤及長度(位元組)。檔頭的前3個區塊記錄檔案格式及長度；接著第一個子區塊包含8個區塊，記錄聲道數量、取樣頻率等資訊；接著第二個子區塊才是真正的音訊資料，長度則視音訊長度而定。內容如下表所示。須注意的是，每個區塊的[端序不盡相同](../Page/字节序.md "wikilink")，而音訊內容本身則是採用小[端序](../Page/字节序.md "wikilink")。\[2\]

[Wave_format.png](https://zh.wikipedia.org/wiki/File:Wave_format.png "fig:Wave_format.png")

### 廣播使用WAV

雖然WAV檔案很大，但沒被壓縮的WAV檔有時會被[無線電](https://zh.wikipedia.org/wiki/無線電 "wikilink")[廣播電台使用](https://zh.wikipedia.org/wiki/廣播電台 "wikilink")，舉例來說，[英國廣播公司電台](../Page/英國廣播公司電台.md "wikilink")在[英國使用](https://zh.wikipedia.org/wiki/英國 "wikilink")44.100[千赫茲](https://zh.wikipedia.org/wiki/千赫茲 "wikilink")、16bit雙聲道的WAV串流檔作為他們的主要的標準，最近他們公布使用48KHZ作為標準。

另外，有些電台也會使用WAV作為他們測試收發能力的標準。

## 限制

WAV檔案受限於檔頭中用來記錄檔案檔案長度的區塊大小為32位元，單一檔案不能超過4GB，有些使用WAV檔案的播放器甚至無法支援超過2GB的WAV檔案，雖然這樣的檔案可以使16bits、44100[赫茲的CD檔案播放將近](https://zh.wikipedia.org/wiki/赫茲 "wikilink")6.9個小時，但有些情況下，還是有可能超過這些限制，此時可以對於時間軸去切割成無數的WAV檔案，去突破4GB的限制，許多[CD](../Page/CD.md "wikilink")[專輯之中](https://zh.wikipedia.org/wiki/專輯 "wikilink")，就會利用這樣的技術去發行更多的歌曲，通常命名為「Disk-1」與「Disk-2」直到「Disk-n」能完成檔案儲存為止。另外，亦有新的格式被發展出來以改良此一限制，如[Sony](https://zh.wikipedia.org/wiki/Sony "wikilink") [Sound Forge軟體所採用的](../Page/Sound_Forge.md "wikilink")[W64格式](https://zh.wikipedia.org/wiki/W64 "wikilink")，以及[歐洲廣播聯盟](../Page/歐洲廣播聯盟.md "wikilink")所制定的[RF64格式](https://zh.wikipedia.org/wiki/RF64 "wikilink")。

## 非音訊使用

WAV檔案不一定要用在音訊檔上。由於其取樣頻率範圍極廣(低至1Hz高至4.3GHz)，同時聲道數量最高可達65535，非常適合作為其他應用所使用的儲存檔案格式，例如[SPICE作為電路模擬的檔案](https://zh.wikipedia.org/wiki/SPICE "wikilink")，有些版本會使用WAV檔去記錄每一個對應的時間所對應的波形，通常是每個節點的[電壓](../Page/電壓.md "wikilink")對[時間](https://zh.wikipedia.org/wiki/時間 "wikilink")、[電流對](https://zh.wikipedia.org/wiki/電流 "wikilink")[時間](https://zh.wikipedia.org/wiki/時間 "wikilink")、[功率](../Page/功率.md "wikilink")對[時間等波形](https://zh.wikipedia.org/wiki/時間 "wikilink")。

所以WAV檔案不一定是儲存聲音的[振幅與時間點](https://zh.wikipedia.org/wiki/振福 "wikilink")，只要是有需要使用到振幅與時間的形式，WAV檔案都能發揮它的功能。

## 如何製作WAV檔

WAV檔案通常可以使用音樂製作軟體製作，若想調整許多參數的話，可以付費使用商業軟體[MATLAB](../Page/MATLAB.md "wikilink")，以下附上一段範例碼可以生成WAV檔案。 需注意的是必須擁有[MATLAB](../Page/MATLAB.md "wikilink")的使用權才可使用。

%a,b,c均是參數，T是訊號總時間長度，Fs是取樣頻率

a=10; b=20; c=30; T=10; Fs=1000;

%function gwave(a,b,c,T,Fs)

%此為對 [餘弦](../Page/餘弦.md "wikilink")的相位去做變化的函數，從0到T，用Fs的取樣率去採樣並用[二進位](https://zh.wikipedia.org/wiki/二進位 "wikilink")[量化 (信號處理)](https://zh.wikipedia.org/wiki/量化_\(信號處理\) "wikilink")，以完成檔案

t = 0:1/Fs:T;

phase = 2\*pi\*((a\*(t.^3))/3+b\*(t.^2)/2+c\*t);

wav = cos(phase);

wavwrite(wav,Fs, '檔案名稱');

sound(wav, Fs);

%end

如此一來，就會生出一個「檔案名稱.wav」的檔案，請自行修改檔案名稱與參數，達到你想創造的WAV檔。 [用matlab生出的wav檔範例.wav](https://zh.wikipedia.org/wiki/File:用matlab生出的wav檔範例.wav "fig:用matlab生出的wav檔範例.wav")

## 參考資料

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink")

1.
2.