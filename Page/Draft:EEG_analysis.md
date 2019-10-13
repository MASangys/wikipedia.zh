**腦波分析**（[:en:EEG analysis](https://zh.wikipedia.org/wiki/:en:EEG_analysis "wikilink")）是用數學的[信号处理以及電腦科技](https://zh.wikipedia.org/wiki/信号处理 "wikilink")，從[腦電圖](../Page/腦電圖.md "wikilink")（EEG）信號中提取相關資訊。腦波分析的目的是幫助研究者對[人腦](../Page/人腦.md "wikilink")有進一步的瞭解，輔助[医生](../Page/医生.md "wikilink")的[诊断](../Page/诊断.md "wikilink")以及[疗法的選擇](https://zh.wikipedia.org/wiki/疗法 "wikilink")，並且提昇[脑机接口](../Page/脑机接口.md "wikilink")（BCI）的技術。腦波分析的技術有許多分類的方式，若是要從腦電圖信號中找到大致符合腦電圖信號的[数学模型](../Page/数学模型.md "wikilink")\[1\]，此方法可以分類為，否則，就是非參數型的方式。傳統上，大部份的腦波分析方法可以分為四類[時域](https://zh.wikipedia.org/wiki/時域 "wikilink")、[頻域](../Page/頻域.md "wikilink")、[時頻分析](../Page/時頻分析.md "wikilink")及[非線性方法](../Page/非線性系統.md "wikilink")\[2\]，也有一些較新的方法，包括使用[深度学习](../Page/深度学习.md "wikilink")（DNN）的方法。

## 方法

### 頻域法

頻域分析也稱為譜分析（spectral analysis），是腦波分析的標準作法中，最有功效也方便的方式之一。頻域分析會用統計及[傅里叶变换](../Page/傅里叶变换.md "wikilink")找在腦波波形中的頻域資訊\[3\]。譜分析方式有許多種，最常用的是功率譜，因為[功率譜密度反映信號的頻率成份](../Page/谱密度.md "wikilink")，也反映了信號功率在各頻率上的分佈\[4\]。

### Time domain methods

There are two important methods for time domain EEG analysis: [线性预测](../Page/线性预测.md "wikilink") and . Generally, [线性预测](../Page/线性预测.md "wikilink") gives the estimated value equal to a linear combination of the past output value with the present and past input value. And  is an unsupervised method in which the data set is mapped to a feature set.\[5\] Notably, the parameters in time domain methods are entirely based on time, but they can also be extracted from statistical moments of the power spectrum. As a result, time domain method builds a bridge between physical time interpretation and conventional spectral analysis.\[6\] Besides, time domain methods offer a way to on-line measurement of basic signal properties by means of a time-based calculation, which requires less complex equipment compared to conventional frequency analysis.\[7\]

### Time-frequency domain methods

, a typical time-frequency domain method, can extract and represent properties from transient biological signals. Specifically, through wavelet decomposition of the EEG records, transient features can be accurately captured and localized in both time and frequency context.\[8\] Thus  is like a mathematical microscope that can analyze different scales of neural rhythms and investigate small-scale oscillations of the brain signals while ignoring the contribution of other scales.\[9\]\[10\] Apart from , there is another prominent time-frequency method called [希爾伯特-黃轉換](../Page/希爾伯特-黃轉換.md "wikilink"), which can decompose EEG signals into a set of oscillatory components called Intrinsic Mode Function(IMF) in order to capture instantaneous frequency data.\[11\]\[12\]

### Nonlinear methods

Many phenomena in nature are nonlinear and non-stationary, and so are EEG signals. This attribute adds more complexity to the interpretation of EEG signals, rendering linear methods(methods mentioned above) limited. Since 1985 when two pioneers in nonlinear EEG analysis, Rapp and Bobloyantz, published their first results, the theory of nonlinear dynamic systems, also called ' [混沌理论](../Page/混沌理论.md "wikilink")', has been broadly applied to the field of EEG analysis.\[13\] To conduct nonlinear EEG analysis, researchers have adopted many useful nonlinear parameters such as [李亚普诺夫指数](../Page/李亚普诺夫指数.md "wikilink"), , and entropies like  and .\[14\]\[15\]

### ANN methods

The implementation of [人工神经网络](../Page/人工神经网络.md "wikilink")(ANN) is presented for classification of electroencephalogram (EEG) signals. In most cases, EEG data involves a preprocess of wavelet transform before putting into the neural networks.\[16\]\[17\] RNN( [递归神经网络](../Page/递归神经网络.md "wikilink")s) was once considerably applied in studies of ANN implementations in EEG analysis.\[18\]\[19\] Until the boom of deep leaning and CNN( [卷积神经网络](../Page/卷积神经网络.md "wikilink")), CNN method becomes a new favorite in recent studies of EEG analysis employing deep leaning. With cropped training for the deep CNN to reach competitive accuracies on the dataset, deep CNN has presented a superior decoding performance.\[20\] Moreover, the big EEG data, as the input of ANN, calls for the need for safe storage and high computational resources for real-time processing. To address these challenges, a cloud-based deep learning has been proposed and presented for real-time analysis of big EEG data.\[21\]

## Applications

### Clinical

EEG analysis is wildly used in brain diseases diagnosis and prediction. In the domain of [癲癇發作](../Page/癲癇發作.md "wikilink")s, the detection of epileptiform discharges in the EEG is an important component in the diagnosis of epilepsy. Careful analyses of the EEG records can provide valuable insight and improved understanding of the mechanisms causing epileptic disorders.\[22\] Besides, EEG analysis also helps much with the detection of [阿茲海默症](../Page/阿茲海默症.md "wikilink"),\[23\] [顫抖](../Page/顫抖.md "wikilink"), etc.

### BCI (Brain-computer Interface)

EEG recordings during right and left motor imagery allow one to establish a new com-munication channel.\[24\] Based on real-time EEG analysis with subject-specific spatial patterns, a [脑机接口](../Page/脑机接口.md "wikilink") (BCI) can be used to develop a simple binary response for the control of a device. Such an EEG-based BCI can help, e.g., patients with amyotrophic lateral sclerosis, with some daily activities.

### Analysis tool

Brainstorm is a collaborative, open-source application dedicated to the analysis of brain recordings including , EEG, , , depth electrodes and animal invasive neurophysiology.\[25\] The objective of Brainstorm is to share a comprehensive set of user-friendly tools with the scientific community using MEG/EEG as an experimental technique. Brainstorm offers rich and intuitive graphic interface for physicians and researchers, which does not require any programming knowledge. Some other relative open source analysis softwares include FieldTrip, etc.

### Others

Combined with facial expressions analysis, EEG analysis offers the function of continuous emotion detection, which can be used to find the emotional traces of videos.\[26\] Some other applications include EEG-based brain mapping, personalized EEG-based encryptor, EEG-Based image annotation system, etc.

## 相關條目

  - [谱密度](../Page/谱密度.md "wikilink")

  - [傅里叶变换](../Page/傅里叶变换.md "wikilink")

  -
  - [希爾伯特-黃轉換](../Page/希爾伯特-黃轉換.md "wikilink")

  - [动力系统](../Page/动力系统.md "wikilink")

  - [混沌理论](../Page/混沌理论.md "wikilink")

  - [人工神经网络](../Page/人工神经网络.md "wikilink")

  - [深度学习](../Page/深度学习.md "wikilink")

  - [卷积神经网络](../Page/卷积神经网络.md "wikilink")

  - [递归神经网络](../Page/递归神经网络.md "wikilink")

  - [机器学习](../Page/机器学习.md "wikilink")

  - [人工智能](../Page/人工智能.md "wikilink")

  - [癫痫](../Page/癫痫.md "wikilink")

  - [阿茲海默症](../Page/阿茲海默症.md "wikilink")

  - [顫抖](../Page/顫抖.md "wikilink")

  - [癲癇發作](../Page/癲癇發作.md "wikilink")

## 參考資料

[:Category:脑电图学](https://zh.wikipedia.org/wiki/Category:脑电图学 "wikilink") [:Category:神经技术](https://zh.wikipedia.org/wiki/Category:神经技术 "wikilink") [:Category:信号处理](https://zh.wikipedia.org/wiki/Category:信号处理 "wikilink") [:Category:醫用數學](https://zh.wikipedia.org/wiki/Category:醫用數學 "wikilink")

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