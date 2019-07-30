**腦波分析**（[:en:EEG analysis](https://zh.wikipedia.org/wiki/:en:EEG_analysis "wikilink")） exploits mathematical signal analysis methods to extract information from Electroencephalography (EEG) signals with the assistance of computers. The targets of EEG analysis are to help researchers get better understanding of our brains, assist clinical doctors to make right decisions for treatment, and to boost brain-computer interface(BCI) technology. There are many ways to roughly categorize EEG analysis methods. If a mathematical model is exploited to fit the sampled EEG signals\[1\],  the method can be categorized as a parametric method. Otherwise, it is a non-parametric method. Traditionally, most EEG analysis methods fall into four categories: time domain method, frequency domain method, time-frequency domain method, and nonlinear method\[2\]. Note that there are also some brand new methods that have been recently introduced, including Deep Neural Networks(DNN) methods.

## Methods

### Frequency domain methods

Frequency domain analysis, also known as spectral analysis, is the most conventional yet one of the most powerful and standard methods for EEG analysis. It gives insight to information contained in the frequency domain of EEG waveforms by adopting statistical and Fourier Transform methods\[3\]. Among all the spectral methods, power spectral analysis is the most commonly used, since the power spectrum reflects the 'frequency content' of the signal or the distribution of signal power over frequency\[4\].

### Time domain methods

There are two important methods for time domain EEG analysis: Linear Prediction and Component Analysis. Generally, Linear Prediction gives the estimated value equal to a linear combination of the past output value with the present and past input value. And Component Analysis is an unsupervised method in which the data set is mapped to a feature set\[5\]. Notably, the parameters in time domain methods are entirely based on time, but they can also be extracted from statistical moments of the power spectrum. As a result, time domain method builds a bridge between physical time interpretation and conventional spectral analysis\[6\]. Besides, time domain methods offer a way to on-line measurement of basic signal properties by means of a time-based calculation, which requires less complex equipment compared to conventional frequency analysis\[7\].

### Time-frequency domain methods

Wavelet Transform, a typical time-frequency domain method, can extract and represent properties from transient biological signals. Specifically, through wavelet decomposition of the EEG records, transient features can be accurately captured and localized in both time and frequency context\[8\]. Thus Wavelet transform is like a mathematical microscope that can analyze different scales of neural rhythms and investigate small-scale oscillations of the brain signals while ignoring the contribution of other scales\[9\]\[10\]. Apart from Wavelet Transform, there is another prominent time-frequency method called Hilbert-Huang Transform, which can decompose EEG signals into a set of oscillatory components called Intrinsic Mode Function(IMF) in order to capture instantaneous frequency data\[11\]\[12\].

### Nonlinear methods

Many phenomena in nature are nonlinear and  non-stationary, and so are EEG signals. This attribute adds more complexity to the interpretation of EEG signals, rendering linear methods(methods mentioned above) limited.  Since 1985 when two pioneers in nonlinear EEG analysis, Rapp and Bobloyantz, published their first results, the theory of nonlinear dynamic systems, also called 'chaos theory', has been broadly applied to the field of EEG analysis\[8\]. To conduct nonlinear EEG analysis, researchers have adopted many useful nonlinear parameters such as Lyapunov Exponent, Correlation Dimension, and entropies like Approximate Entropy and Sample Entropy\[13\]\[14\].

## 参考资料

[Category:用条目向导创建的草稿](https://zh.wikipedia.org/wiki/Category:用条目向导创建的草稿 "wikilink")

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