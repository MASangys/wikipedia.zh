**Waveform Audio File
Format**（**WAVE**，又或者是因為[副檔名而被大眾所知的](../Page/副檔名.md "wikilink")**WAV**），是[微软與](../Page/微软.md "wikilink")[IBM公司所開發在](../Page/IBM.md "wikilink")[個人電腦儲存音訊串流的編碼格式](../Page/個人電腦.md "wikilink")，在[Windows平台的應用軟體受到廣泛的支援](../Page/Windows.md "wikilink")，地位上類似於[麥金塔電腦裡的](../Page/麥金塔.md "wikilink")[AIFF](../Page/AIFF.md "wikilink")。\[1\]
此格式屬於[資源交換檔案格式](../Page/資源交換檔案格式.md "wikilink")(RIFF)的應用之一，通常會將採用[脈衝編碼調變的音訊資儲存在區塊中](../Page/脈衝編碼調變.md "wikilink")。也是其音乐发烧友中常用的指定规格之一。由于此音频格式未经过压缩，所以在音质方面不会出现失真的情况，但檔案的体积因而在众多音频格式中较为大。

## 描述

.WAV 與.AIFF
都是被微軟作業系統、[麥金塔作業系統](../Page/麥金塔.md "wikilink")、[Linux作業系統所相容的](../Page/Linux.md "wikilink")，需要特別注意的是，WAV檔案與無損檔案是不完全相同的，WAV檔案只是不去對原有檔案去做壓縮。

如果原始檔案是無損的，那不能稱WAV就是無損檔案。若是將有損壓縮的檔案（例如:
[mp3檔](../Page/mp3.md "wikilink"))轉成WAV檔，那麼WAV檔案也只是忠實地呈現有損檔案而已。

製作WAV檔時，會有一個取樣頻率，根據[取樣定理](../Page/取樣定理.md "wikilink")，若此取樣頻率低於信号最高频率的两倍时，那麼超過此最大頻率的頻段，將會產生[混疊的情況](../Page/混疊.md "wikilink")，使原始訊號受到汙染，亦不能稱此WAV檔就是無損檔案。

雖然WAV檔也能儲存被壓縮過的檔案，但是大多數的WAV檔是用於[CD儲存原聲帶的](../Page/CD.md "wikilink")，所以一般來說一般人聯想到WAV檔就聯想到無損檔案，也是無可厚非的。值得注意的是，[CD儲存的原聲帶也不代表是完全無損的](../Page/CD.md "wikilink")，[音樂製作人會將錄製的聲音處理後製成母帶](../Page/音樂製作人.md "wikilink")，通常取樣率為96,000[赫茲](../Page/赫茲.md "wikilink")，之後透過轉檔程式，以16bits、44,100[赫茲去做取樣](../Page/赫茲.md "wikilink")。

## 格式

WAV檔遵守[資源交換檔案格式之規則](../Page/資源交換檔案格式.md "wikilink")，在檔案的前44(或46)位元組放置[檔頭](../Page/檔頭.md "wikilink")(header)，使播放器或編輯器能夠簡單掌握檔案的基本資訊，其內容以區塊(chunk)為最小單位，每一區塊長度為4[位元組](../Page/位元組.md "wikilink")，而區塊之上則由子區塊包裹，每一子區塊長度不拘，但須在前頭先宣告標籤及長度(位元組)。檔頭的前3個區塊記錄檔案格式及長度；接著第一個子區塊包含8個區塊，記錄聲道數量、取樣頻率等資訊；接著第二個子區塊才是真正的音訊資料，長度則視音訊長度而定。內容如下表所示。須注意的是，每個區塊的[端序不盡相同](../Page/字节序.md "wikilink")，而音訊內容本身則是採用小[端序](../Page/字节序.md "wikilink")。\[2\]

[Wave_format.png](https://zh.wikipedia.org/wiki/File:Wave_format.png "fig:Wave_format.png")

### 廣播使用WAV

雖然WAV檔案很大，但沒被壓縮的WAV檔有時會被[無線電](../Page/無線電.md "wikilink")[廣播電台使用](../Page/廣播電台.md "wikilink")，舉例來說，[英國廣播公司電台在](../Page/英國廣播公司電台.md "wikilink")[英國使用](../Page/英國.md "wikilink")44.100[千赫茲](../Page/千赫茲.md "wikilink")、16bit雙聲道的WAV串流檔作為他們的主要的標準，最近他們公布使用48KHZ作為標準。

另外，有些電台也會使用WAV作為他們測試收發能力的標準。

## 限制

WAV檔案受限於檔頭中用來記錄檔案檔案長度的區塊大小為32位元，單一檔案不能超過4GB，有些使用WAV檔案的播放器甚至無法支援超過2GB的WAV檔案，雖然這樣的檔案可以使16bits、44100[赫茲的CD檔案播放將近](../Page/赫茲.md "wikilink")6.9個小時，但有些情況下，還是有可能超過這些限制，此時可以對於時間軸去切割成無數的WAV檔案，去突破4GB的限制，許多[CD](../Page/CD.md "wikilink")[專輯之中](../Page/專輯.md "wikilink")，就會利用這樣的技術去發行更多的歌曲，通常命名為「Disk-1」與「Disk-2」直到「Disk-n」能完成檔案儲存為止。另外，亦有新的格式被發展出來以改良此一限制，如[Sony](../Page/Sony.md "wikilink")
[Sound
Forge軟體所採用的](../Page/Sound_Forge.md "wikilink")[W64格式](../Page/W64.md "wikilink")，以及[歐洲廣播聯盟所制定的](../Page/歐洲廣播聯盟.md "wikilink")[RF64格式](../Page/RF64.md "wikilink")。

## 非音訊使用

WAV檔案不一定要用在音訊檔上。由於其取樣頻率範圍極廣(低至1Hz高至4.3GHz)，同時聲道數量最高可達65535，非常適合作為其他應用所使用的儲存檔案格式，例如[SPICE作為電路模擬的檔案](../Page/SPICE.md "wikilink")，有些版本會使用WAV檔去記錄每一個對應的時間所對應的波形，通常是每個節點的[電壓對](../Page/電壓.md "wikilink")[時間](../Page/時間.md "wikilink")、[電流對](../Page/電流.md "wikilink")[時間](../Page/時間.md "wikilink")、[功率對](../Page/功率.md "wikilink")[時間等波形](../Page/時間.md "wikilink")。

所以WAV檔案不一定是儲存聲音的[振幅與時間點](../Page/振福.md "wikilink")，只要是有需要使用到振幅與時間的形式，WAV檔案都能發揮它的功能。

## 如何製作WAV檔

WAV檔案通常可以使用音樂製作軟體製作，若想調整許多參數的話，可以付費使用商業軟體[MATLAB](../Page/MATLAB.md "wikilink")，以下附上一段範例碼可以生成WAV檔案。
需注意的是必須擁有[MATLAB的使用權才可使用](../Page/MATLAB.md "wikilink")。

%a,b,c均是參數，T是訊號總時間長度，Fs是取樣頻率

a=10; b=20; c=30; T=10; Fs=1000;

%function gwave(a,b,c,T,Fs)

%此為對
[餘弦的相位去做變化的函數](../Page/餘弦.md "wikilink")，從0到T，用Fs的取樣率去採樣並用[二進位](../Page/二進位.md "wikilink")[量化
(信號處理)](../Page/量化_\(信號處理\).md "wikilink")，以完成檔案

t = 0:1/Fs:T;

phase = 2\*pi\*((a\*(t.^3))/3+b\*(t.^2)/2+c\*t);

wav = cos(phase);

wavwrite(wav,Fs, '檔案名稱');

sound(wav, Fs);

%end

如此一來，就會生出一個「檔案名稱.wav」的檔案，請自行修改檔案名稱與參數，達到你想創造的WAV檔。
[用matlab生出的wav檔範例.wav](https://zh.wikipedia.org/wiki/File:用matlab生出的wav檔範例.wav "fig:用matlab生出的wav檔範例.wav")

## 參考資料

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink")

1.
2.