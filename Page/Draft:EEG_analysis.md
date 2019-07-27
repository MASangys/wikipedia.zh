**腦波分析**（[:en:EEG
analysis](https://zh.wikipedia.org/wiki/:en:EEG_analysis "wikilink")）
exploits mathematical signal analysis methods to extract information
from Electroencephalography (EEG) signals with the assistance of
computers. The targets of EEG analysis are to help researchers get
better understanding of our brains, assist clinical doctors to make
right decisions for treatment, and to boost brain-computer
interface(BCI) technology. There are many ways to roughly categorize EEG
analysis methods. If a mathematical model is exploited to fit the
sampled EEG signals\[1\],  the method can be categorized as a parametric
method. Otherwise, it is a non-parametric method. Traditionally, most
EEG analysis methods fall into four categories: time domain method,
frequency domain method, time-frequency domain method, and nonlinear
method\[2\]. Note that there are also some brand new methods that have
been recently introduced, including Deep Neural Networks(DNN) methods.

## Methods

### Frequency domain methods

Frequency domain analysis, also known as spectral analysis, is the most
conventional yet one of the most powerful and standard methods for EEG
analysis. It gives insight to information contained in the frequency
domain of EEG waveforms by adopting statistical and Fourier Transform
methods\[3\]. Among all the spectral methods, power spectral analysis is
the most commonly used, since the power spectrum reflects the 'frequency
content' of the signal or the distribution of signal power over
frequency\[4\].

### Time domain methods

There are two important methods for time domain EEG analysis: Linear
Prediction and Component Analysis. Generally, Linear Prediction gives
the estimated value equal to a linear combination of the past output
value with the present and past input value. And Component Analysis is
an unsupervised method in which the data set is mapped to a feature
set\[5\]. Notably, the parameters in time domain methods are entirely
based on time, but they can also be extracted from statistical moments
of the power spectrum. As a result, time domain method builds a bridge
between physical time interpretation and conventional spectral
analysis\[6\]. Besides, time domain methods offer a way to on-line
measurement of basic signal properties by means of a time-based
calculation, which requires less complex equipment compared to
conventional frequency analysis\[7\].

### Time-frequency domain methods

Wavelet Transform, a typical time-frequency domain method, can extract
and represent properties from transient biological signals.
Specifically, through wavelet decomposition of the EEG records,
transient features can

1.

2.

3.
4.

5.
6.

7.