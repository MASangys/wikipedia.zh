> 本文内容由[General MIDI](https://zh.wikipedia.org/wiki/General_MIDI)转换而来。


**General MIDI**，簡稱**GM**，是[MIDI](../Page/MIDI.md "wikilink")的統一規格。雖然MIDI自己本身提供了使不同儀器能夠在基礎水平上互用的協定，但General MIDI提供了更進一步的規範：它要求所有的GM相容儀器達到一些共同的特點，像是能夠同時演奏至少24個音符（複音），而且它包含了許多未在MIDI中規範，關於參數和控制訊息的解釋，像是定義儀器可以擁有128個發聲數。

General MIDI最初被標準化是在1991年，由[MIDI制造商协会](https://zh.wikipedia.org/wiki/MIDI制造商协会 "wikilink")（MMA）以及（JMSC）共同制定，此後就被採用作為MIDI標準的追加。他被要求至少能滿足以下條件：

  - 允許同時24個發聲數（包含16個旋律，和8個打擊樂的聲音）
  - 能對應音符力度
  - 能同時使用16個頻道（頻道10被預留為打擊樂用）
  - 每個頻道能夠演奏複音

## 概要

在GM被制定以前，MIDI的音色訊號以及控制訊息會因MIDI音源的製造商以及機種而不同。這使的不同的儀器之間並沒有互換性。由不同的MIDI儀器做出來的曲子，在其他的MIDI儀器上播放會導致與結果可能與作者原本想表達的不同的問題。為了解決這樣的問題，在1991年時，MIDI Manufacturers Association（MMA）與Japan MIDI Standards Committee（JMSC）共同制定了GM。

除了GM以外的規格，還有Roland推展的GS、YAMAHA推展的XG等。 這些幾乎都是為了擴張GM的衍生規格，對GM來說是能夠向上相容的。

現在有了[GM2](https://zh.wikipedia.org/wiki/GM2 "wikilink")（[General MIDI Level 2](../Page/General_MIDI_Level_2.md "wikilink")）規格，也是對GM的延伸。

## 參數

GM儀器必須遵循以下關於樂器音色（program）以及控制事件（controller events）的慣例：

### 音色轉換事件（Program change events）

以下的表單，列出各樂器音與與相應的音色編號（program change number）。

### 旋律音色（Melodic sounds）

<table>
<thead>
<tr class="header">
<th><p>No.</p></th>
<th><p>英語</p></th>
<th><p>中文</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Piano（鋼琴）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Acoustic Grand Piano</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/鋼琴" title="wikilink">平臺鋼琴</a></p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Bright Acoustic Piano</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/鋼琴" title="wikilink">亮音鋼琴</a></p></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Electric Grand Piano</p></td>
<td><p><a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a></p></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Honky-tonk Piano</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Electric Piano 1</p></td>
<td><p><a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a>1</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>Electric Piano 2</p></td>
<td><p><a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a>2</p></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>Harpsichord</p></td>
<td><p><a href="../Page/大鍵琴.md" title="wikilink">大鍵琴</a></p></td>
</tr>
<tr class="odd">
<td><p>8</p></td>
<td><p>Clavinet</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Chromatic Percussion（固定音高敲擊樂器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>Celesta</p></td>
<td><p><a href="../Page/鋼片琴.md" title="wikilink">鋼片琴</a></p></td>
</tr>
<tr class="even">
<td><p>10</p></td>
<td><p>Glockenspiel</p></td>
<td><p><a href="../Page/鐘琴.md" title="wikilink">鐘琴</a></p></td>
</tr>
<tr class="odd">
<td><p>11</p></td>
<td><p>Musical box</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/音樂盒" title="wikilink">音樂盒</a></p></td>
</tr>
<tr class="even">
<td><p>12</p></td>
<td><p>Vibraphone</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/顫音琴" title="wikilink">顫音琴</a></p></td>
</tr>
<tr class="odd">
<td><p>13</p></td>
<td><p>Marimba</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/馬林巴琴" title="wikilink">馬林巴琴</a></p></td>
</tr>
<tr class="even">
<td><p>14</p></td>
<td><p>Xylophone</p></td>
<td><p><a href="../Page/木琴.md" title="wikilink">木琴</a></p></td>
</tr>
<tr class="odd">
<td><p>15</p></td>
<td><p>Tubular Bell</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/管鐘" title="wikilink">管鐘</a></p></td>
</tr>
<tr class="even">
<td><p>16</p></td>
<td><p>Dulcimer</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/洋琴" title="wikilink">洋琴</a></p></td>
</tr>
<tr class="odd">
<td><p>Organ（風琴）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>17</p></td>
<td><p>Drawbar Organ</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>18</p></td>
<td><p>Percussive Organ</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>19</p></td>
<td><p>Rock Organ</p></td>
<td><p><a href="../Page/風琴.md" title="wikilink">搖滾風琴</a></p></td>
</tr>
<tr class="odd">
<td><p>20</p></td>
<td><p>Church organ</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/管風琴" title="wikilink">教堂管風琴</a></p></td>
</tr>
<tr class="even">
<td><p>21</p></td>
<td><p>Reed organ</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/簧風琴" title="wikilink">簧風琴</a></p></td>
</tr>
<tr class="odd">
<td><p>22</p></td>
<td><p>Accordion</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/手風琴" title="wikilink">手風琴</a></p></td>
</tr>
<tr class="even">
<td><p>23</p></td>
<td><p>Harmonica</p></td>
<td><p><a href="../Page/口琴.md" title="wikilink">口琴</a></p></td>
</tr>
<tr class="odd">
<td><p>24</p></td>
<td><p>Tango Accordion</p></td>
<td><p><a href="../Page/探戈.md" title="wikilink">探戈</a>手風琴</p></td>
</tr>
<tr class="even">
<td><p>Guitar（吉他）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>25</p></td>
<td><p>Acoustic Guitar(nylon)</p></td>
<td><p><a href="../Page/吉他.md" title="wikilink">木吉他（尼龍弦）</a></p></td>
</tr>
<tr class="even">
<td><p>26</p></td>
<td><p>Acoustic Guitar(steel)</p></td>
<td><p><a href="../Page/吉他.md" title="wikilink">木吉他（鋼弦）</a></p></td>
</tr>
<tr class="odd">
<td><p>27</p></td>
<td><p>Electric Guitar(jazz)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/電吉他" title="wikilink">電吉他（爵士）</a></p></td>
</tr>
<tr class="even">
<td><p>28</p></td>
<td><p>Electric Guitar(clean)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/電吉他" title="wikilink">電吉他（原音）</a></p></td>
</tr>
<tr class="odd">
<td><p>29</p></td>
<td><p>Electric Guitar(muted)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/電吉他" title="wikilink">電吉他（悶音）</a></p></td>
</tr>
<tr class="even">
<td><p>30</p></td>
<td><p>Overdriven Guitar</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/電吉他" title="wikilink">電吉他（破音）</a></p></td>
</tr>
<tr class="odd">
<td><p>31</p></td>
<td><p>Distortion Guitar</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/電吉他" title="wikilink">電吉他（失真）</a></p></td>
</tr>
<tr class="even">
<td><p>32</p></td>
<td><p>Guitar harmonics</p></td>
<td><p>吉他<a href="../Page/泛音.md" title="wikilink">泛音</a></p></td>
</tr>
<tr class="odd">
<td><p>Bass（貝斯）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>33</p></td>
<td><p>Acoustic Bass</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>34</p></td>
<td><p>Electric Bass(finger)</p></td>
<td><p><a href="../Page/電貝斯.md" title="wikilink">電貝斯</a>（指奏）</p></td>
</tr>
<tr class="even">
<td><p>35</p></td>
<td><p>Electric Bass(pick)</p></td>
<td><p><a href="../Page/電貝斯.md" title="wikilink">電貝斯</a>（撥奏）</p></td>
</tr>
<tr class="odd">
<td><p>36</p></td>
<td><p>Fretless Bass</p></td>
<td><p>無格貝斯</p></td>
</tr>
<tr class="even">
<td><p>37</p></td>
<td><p>Slap Bass 1</p></td>
<td><p>1</p></td>
</tr>
<tr class="odd">
<td><p>38</p></td>
<td><p>Slap Bass 2</p></td>
<td><p>2</p></td>
</tr>
<tr class="even">
<td><p>39</p></td>
<td><p>Synth Bass 1</p></td>
<td><p>合成貝斯1</p></td>
</tr>
<tr class="odd">
<td><p>40</p></td>
<td><p>Synth Bass 2</p></td>
<td><p>合成貝斯2</p></td>
</tr>
<tr class="even">
<td><p>Strings（弦樂 器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>41</p></td>
<td><p>Violin</p></td>
<td><p><a href="../Page/小提琴.md" title="wikilink">小提琴</a></p></td>
</tr>
<tr class="even">
<td><p>42</p></td>
<td><p>Viola</p></td>
<td><p><a href="../Page/中提琴.md" title="wikilink">中提琴</a></p></td>
</tr>
<tr class="odd">
<td><p>43</p></td>
<td><p>Cello</p></td>
<td><p><a href="../Page/大提琴.md" title="wikilink">大提琴</a></p></td>
</tr>
<tr class="even">
<td><p>44</p></td>
<td><p>Contrabass</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/低音大提琴" title="wikilink">低音大提琴</a></p></td>
</tr>
<tr class="odd">
<td><p>45</p></td>
<td><p>Tremolo Strings</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/顫弓" title="wikilink">顫弓弦樂</a></p></td>
</tr>
<tr class="even">
<td><p>46</p></td>
<td><p>Pizzicato Strings</p></td>
<td><p>彈撥弦樂</p></td>
</tr>
<tr class="odd">
<td><p>47</p></td>
<td><p>Orchestral Harp</p></td>
<td><p><a href="../Page/豎琴.md" title="wikilink">豎琴</a></p></td>
</tr>
<tr class="even">
<td><p>48</p></td>
<td><p>Timpani</p></td>
<td><p><a href="../Page/定音鼓.md" title="wikilink">定音鼓</a></p></td>
</tr>
<tr class="odd">
<td><p>Ensemble（合奏）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>49</p></td>
<td><p>String Ensemble 1</p></td>
<td><p>弦樂合奏1</p></td>
</tr>
<tr class="odd">
<td><p>50</p></td>
<td><p>String Ensemble 2</p></td>
<td><p>弦樂合奏2</p></td>
</tr>
<tr class="even">
<td><p>51</p></td>
<td><p>Synth Strings 1</p></td>
<td><p>合成弦樂1</p></td>
</tr>
<tr class="odd">
<td><p>52</p></td>
<td><p>Synth Strings 2</p></td>
<td><p>合成弦樂2</p></td>
</tr>
<tr class="even">
<td><p>53</p></td>
<td><p>Voice Aahs</p></td>
<td><p>人聲「啊」</p></td>
</tr>
<tr class="odd">
<td><p>54</p></td>
<td><p>Voice Oohs</p></td>
<td><p>人聲「喔」</p></td>
</tr>
<tr class="even">
<td><p>55</p></td>
<td><p>Synth Voice</p></td>
<td><p>合成人聲</p></td>
</tr>
<tr class="odd">
<td><p>56</p></td>
<td><p>Orchestra Hit</p></td>
<td><p>交響打擊樂</p></td>
</tr>
<tr class="even">
<td><p>Brass（銅管 樂器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>57</p></td>
<td><p>Trumpet</p></td>
<td><p><a href="../Page/小號.md" title="wikilink">小號</a></p></td>
</tr>
<tr class="even">
<td><p>58</p></td>
<td><p>Trombone</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/長號" title="wikilink">長號</a></p></td>
</tr>
<tr class="odd">
<td><p>59</p></td>
<td><p>Tuba</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/大號" title="wikilink">大號（吐巴號、低音號）</a></p></td>
</tr>
<tr class="even">
<td><p>60</p></td>
<td><p>Muted Trumpet</p></td>
<td><p>悶音<a href="../Page/小號.md" title="wikilink">小號</a></p></td>
</tr>
<tr class="odd">
<td><p>61</p></td>
<td><p>French horn</p></td>
<td><p><a href="../Page/法國號.md" title="wikilink">法國號</a>（圓號）</p></td>
</tr>
<tr class="even">
<td><p>62</p></td>
<td><p>Brass Section</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/銅管樂" title="wikilink">銅管樂</a></p></td>
</tr>
<tr class="odd">
<td><p>63</p></td>
<td><p>Synth Brass 1</p></td>
<td><p>合成<a href="https://zh.wikipedia.org/wiki/銅管" title="wikilink">銅管</a>1</p></td>
</tr>
<tr class="even">
<td><p>64</p></td>
<td><p>Synth Brass 2</p></td>
<td><p>合成<a href="https://zh.wikipedia.org/wiki/銅管" title="wikilink">銅管</a>2</p></td>
</tr>
<tr class="odd">
<td><p>Reed（簧樂 器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>65</p></td>
<td><p>Soprano Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">高音薩克斯風</a></p></td>
</tr>
<tr class="odd">
<td><p>66</p></td>
<td><p>Alto Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">中音薩克斯風</a></p></td>
</tr>
<tr class="even">
<td><p>67</p></td>
<td><p>Tenor Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">次中音薩克斯風</a></p></td>
</tr>
<tr class="odd">
<td><p>68</p></td>
<td><p>Baritone Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">上低音薩克斯風</a></p></td>
</tr>
<tr class="even">
<td><p>69</p></td>
<td><p>Oboe</p></td>
<td><p><a href="../Page/雙簧管.md" title="wikilink">雙簧管</a></p></td>
</tr>
<tr class="odd">
<td><p>70</p></td>
<td><p>English Horn</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/英國管" title="wikilink">英國管</a></p></td>
</tr>
<tr class="even">
<td><p>71</p></td>
<td><p>Bassoon</p></td>
<td><p><a href="../Page/低音管.md" title="wikilink">低音管</a>（巴頌管）</p></td>
</tr>
<tr class="odd">
<td><p>72</p></td>
<td><p>Clarinet</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/單簧管" title="wikilink">單簧管（黑管、豎笛）</a></p></td>
</tr>
<tr class="even">
<td><p>Pipe（吹管 樂器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>73</p></td>
<td><p>Piccolo</p></td>
<td><p><a href="../Page/短笛.md" title="wikilink">短笛</a></p></td>
</tr>
<tr class="even">
<td><p>74</p></td>
<td><p>Flute</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/長笛" title="wikilink">長笛</a></p></td>
</tr>
<tr class="odd">
<td><p>75</p></td>
<td><p>Recorder</p></td>
<td><p><a href="../Page/直笛.md" title="wikilink">直笛</a></p></td>
</tr>
<tr class="even">
<td><p>76</p></td>
<td><p>Pan Flute</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/排笛" title="wikilink">排笛</a></p></td>
</tr>
<tr class="odd">
<td><p>77</p></td>
<td><p>Blown Bottle</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/瓶笛" title="wikilink">瓶笛</a></p></td>
</tr>
<tr class="even">
<td><p>78</p></td>
<td><p>Shakuhachi</p></td>
<td><p><a href="../Page/尺八.md" title="wikilink">尺八</a></p></td>
</tr>
<tr class="odd">
<td><p>79</p></td>
<td><p>Whistle</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/哨子_(器物)" title="wikilink">哨子</a></p></td>
</tr>
<tr class="even">
<td><p>80</p></td>
<td><p>Ocarina</p></td>
<td><p><a href="../Page/陶笛.md" title="wikilink">陶笛</a></p></td>
</tr>
<tr class="odd">
<td><p>Synth Lead（合成音主旋律）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>81</p></td>
<td><p>Lead 1(square)</p></td>
<td><p><a href="../Page/方波.md" title="wikilink">方波</a></p></td>
</tr>
<tr class="odd">
<td><p>82</p></td>
<td><p>Lead 2(sawtooth)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/鋸齒波" title="wikilink">鋸齒波</a></p></td>
</tr>
<tr class="even">
<td><p>83</p></td>
<td><p>Lead 3(calliope)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/汽笛風琴" title="wikilink">汽笛風琴</a></p></td>
</tr>
<tr class="odd">
<td><p>84</p></td>
<td><p>Lead 4(chiff)</p></td>
<td><p>合成吹管</p></td>
</tr>
<tr class="even">
<td><p>85</p></td>
<td><p>Lead 5(charang)</p></td>
<td><p>合成電吉他</p></td>
</tr>
<tr class="odd">
<td><p>86</p></td>
<td><p>Lead 6(voice)</p></td>
<td><p>人聲鍵盤</p></td>
</tr>
<tr class="even">
<td><p>87</p></td>
<td><p>Lead 7(fifths)</p></td>
<td><p>五度音</p></td>
</tr>
<tr class="odd">
<td><p>88</p></td>
<td><p>Lead 8(bass + lead)</p></td>
<td><p>貝斯吉他合奏</p></td>
</tr>
<tr class="even">
<td><p>Synth Pad（合成音和弦襯底）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>89</p></td>
<td><p>Pad 1(new age)</p></td>
<td><p>新世紀</p></td>
</tr>
<tr class="even">
<td><p>90</p></td>
<td><p>Pad 2(warm)</p></td>
<td><p>溫暖</p></td>
</tr>
<tr class="odd">
<td><p>91</p></td>
<td><p>Pad 3(polysynth)</p></td>
<td><p>多重合音</p></td>
</tr>
<tr class="even">
<td><p>92</p></td>
<td><p>Pad 4(choir)</p></td>
<td><p>人聲合唱</p></td>
</tr>
<tr class="odd">
<td><p>93</p></td>
<td><p>Pad 5(bowed)</p></td>
<td><p>玻璃</p></td>
</tr>
<tr class="even">
<td><p>94</p></td>
<td><p>Pad 6(metallic)</p></td>
<td><p>金屬</p></td>
</tr>
<tr class="odd">
<td><p>95</p></td>
<td><p>Pad 7(halo)</p></td>
<td><p>光華</p></td>
</tr>
<tr class="even">
<td><p>96</p></td>
<td><p>Pad 8(sweep)</p></td>
<td><p>掃掠</p></td>
</tr>
<tr class="odd">
<td><p>Synth Effects（合成音效果）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>97</p></td>
<td><p>FX 1(rain)</p></td>
<td><p>雨</p></td>
</tr>
<tr class="odd">
<td><p>98</p></td>
<td><p>FX 2(soundtrack)</p></td>
<td><p>電影音效</p></td>
</tr>
<tr class="even">
<td><p>99</p></td>
<td><p>FX 3(crystal)</p></td>
<td><p>水晶</p></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>FX 4(atmosphere)</p></td>
<td><p>氣氛</p></td>
</tr>
<tr class="even">
<td><p>101</p></td>
<td><p>FX 5(brightness)</p></td>
<td><p>明亮</p></td>
</tr>
<tr class="odd">
<td><p>102</p></td>
<td><p>FX 6(goblins)</p></td>
<td><p>魅影</p></td>
</tr>
<tr class="even">
<td><p>103</p></td>
<td><p>FX 7(echoes)</p></td>
<td><p>回音</p></td>
</tr>
<tr class="odd">
<td><p>104</p></td>
<td><p>FX 8(sci-fi)</p></td>
<td><p>科幻</p></td>
</tr>
<tr class="even">
<td><p>Ethnic（民族 樂器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>105</p></td>
<td><p>Sitar</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/西塔琴" title="wikilink">西塔琴</a></p></td>
</tr>
<tr class="even">
<td><p>106</p></td>
<td><p>Banjo</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/斑鳩琴" title="wikilink">五絃琴（斑鳩琴）</a></p></td>
</tr>
<tr class="odd">
<td><p>107</p></td>
<td><p>Shamisen</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/三味線" title="wikilink">三味線</a></p></td>
</tr>
<tr class="even">
<td><p>108</p></td>
<td><p>Koto</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古箏" title="wikilink">十三絃琴（古箏）</a></p></td>
</tr>
<tr class="odd">
<td><p>109</p></td>
<td><p>Kalimba</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>110</p></td>
<td><p>Bagpipe</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/風笛" title="wikilink">蘇格蘭風笛</a></p></td>
</tr>
<tr class="odd">
<td><p>111</p></td>
<td><p>Fiddle</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/古提琴" title="wikilink">古提琴</a></p></td>
</tr>
<tr class="even">
<td><p>112</p></td>
<td><p>Shanai</p></td>
<td><p>，發聲機制類似<a href="https://zh.wikipedia.org/wiki/嗩吶" title="wikilink">嗩吶</a></p></td>
</tr>
<tr class="odd">
<td><p>Percussive（打擊 樂器）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>113</p></td>
<td><p>Tinkle Bell</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/叮噹鈴" title="wikilink">叮噹鈴</a></p></td>
</tr>
<tr class="odd">
<td><p>114</p></td>
<td><p>Agogo</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/阿哥哥鼓" title="wikilink">阿哥哥鼓</a></p></td>
</tr>
<tr class="even">
<td><p>115</p></td>
<td><p>Steel Drums</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/鋼鼓" title="wikilink">鋼鼓</a></p></td>
</tr>
<tr class="odd">
<td><p>116</p></td>
<td><p>Woodblock</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/木魚" title="wikilink">木魚</a></p></td>
</tr>
<tr class="even">
<td><p>117</p></td>
<td><p>Taiko Drum</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/太鼓" title="wikilink">太鼓</a></p></td>
</tr>
<tr class="odd">
<td><p>118</p></td>
<td><p>Melodic Tom</p></td>
<td><p><a href="../Page/筒鼓.md" title="wikilink">定音筒鼓</a></p></td>
</tr>
<tr class="even">
<td><p>119</p></td>
<td><p>Synth Drum</p></td>
<td><p>合成鼓</p></td>
</tr>
<tr class="odd">
<td><p>120</p></td>
<td><p>Reverse Cymbal</p></td>
<td><p>逆轉鈸聲</p></td>
</tr>
<tr class="even">
<td><p>Sound effects（特殊 音效）</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>121</p></td>
<td><p>Guitar Fret Noise</p></td>
<td><p>吉他滑弦雜音</p></td>
</tr>
<tr class="even">
<td><p>122</p></td>
<td><p>Breath Noise</p></td>
<td><p>呼吸雜音</p></td>
</tr>
<tr class="odd">
<td><p>123</p></td>
<td><p>Seashore</p></td>
<td><p>海岸</p></td>
</tr>
<tr class="even">
<td><p>124</p></td>
<td><p>Bird Tweet</p></td>
<td><p>鳥鳴</p></td>
</tr>
<tr class="odd">
<td><p>125</p></td>
<td><p>Telephone Ring</p></td>
<td><p>電話鈴聲</p></td>
</tr>
<tr class="even">
<td><p>126</p></td>
<td><p>Helicopter</p></td>
<td><p>直升機</p></td>
</tr>
<tr class="odd">
<td><p>127</p></td>
<td><p>Applause</p></td>
<td><p>拍手</p></td>
</tr>
<tr class="even">
<td><p>128</p></td>
<td><p>Gunshot</p></td>
<td><p>槍聲</p></td>
</tr>
</tbody>
</table>

### 打擊樂音符（Percussion notes）

在General MIDI中，頻道10被保留作為打擊樂器使用，不論音色編號為何。不同的音符對應到不同的打擊樂器。見下表：

| No. | English         | 中文                                                    |
| --- | --------------- | ----------------------------------------------------- |
| 35  | Bass Drum 2     | [大鼓](../Page/大鼓.md "wikilink")2                       |
| 36  | Bass Drum 1     | [大鼓](../Page/大鼓.md "wikilink")1                       |
| 37  | Side Stick      | 小鼓鼓邊                                                  |
| 38  | Snare Drum 1    | [小鼓](../Page/小鼓.md "wikilink")1                       |
| 39  | Hand Clap       | 拍手                                                    |
| 40  | Snare Drum 2    | [小鼓](../Page/小鼓.md "wikilink")2                       |
| 41  | Low Tom 2       | [低音筒鼓](../Page/筒鼓.md "wikilink")2                     |
| 42  | Closed Hi-hat   | 閉合[開合鈸](https://zh.wikipedia.org/wiki/開合鈸 "wikilink") |
| 43  | Low Tom 1       | [低音筒鼓](../Page/筒鼓.md "wikilink")1                     |
| 44  | Pedal Hi-hat    | 腳踏[開合鈸](https://zh.wikipedia.org/wiki/開合鈸 "wikilink") |
| 45  | Mid Tom 2       | [中音筒鼓](../Page/筒鼓.md "wikilink")2                     |
| 46  | Open Hi-hat     | 開放[開合鈸](https://zh.wikipedia.org/wiki/開合鈸 "wikilink") |
| 47  | Mid Tom 1       | [中音筒鼓](../Page/筒鼓.md "wikilink")1                     |
| 48  | High Tom 2      | [高音筒鼓](../Page/筒鼓.md "wikilink")2                     |
| 49  | Crash Cymbal 1  | [強音鈸](https://zh.wikipedia.org/wiki/強音鈸 "wikilink")1  |
| 50  | High Tom 1      | [高音筒鼓](../Page/筒鼓.md "wikilink")1                     |
| 51  | Ride Cymbal 1   | [打點鈸](https://zh.wikipedia.org/wiki/打點鈸 "wikilink")1  |
| 52  | Chinese Cymbal  | [鈸](https://zh.wikipedia.org/wiki/鈸 "wikilink")       |
| 53  | Ride Bell       | 響鈴                                                    |
| 54  | Tambourine      | [鈴鼓](../Page/鈴鼓.md "wikilink")                        |
| 55  | Splash Cymbal   | [小鈸銅鈸](https://zh.wikipedia.org/wiki/小鈸銅鈸 "wikilink") |
| 56  | Cowbell         | [牛鈴](https://zh.wikipedia.org/wiki/牛鈴 "wikilink")     |
| 57  | Crash Cymbal 2  | [強音鈸](https://zh.wikipedia.org/wiki/強音鈸 "wikilink")2  |
| 58  | Vibra Slap      | [噪音器](https://zh.wikipedia.org/wiki/噪音器 "wikilink")   |
| 59  | Ride Cymbal 2   | [打點鈸](https://zh.wikipedia.org/wiki/打點鈸 "wikilink")2  |
| 60  | High Bongo      | 高音[邦加鼓](https://zh.wikipedia.org/wiki/邦加鼓 "wikilink") |
| 61  | Low Bongo       | 低音[邦加鼓](https://zh.wikipedia.org/wiki/邦加鼓 "wikilink") |
| 62  | Mute High Conga | 悶音高音[康加鼓](../Page/康加鼓.md "wikilink")                  |
| 63  | Open High Conga | 開放高音[康加鼓](../Page/康加鼓.md "wikilink")                  |
| 64  | Low Conga       | 低音[康加鼓](../Page/康加鼓.md "wikilink")                    |
| 65  | High Timbale    | 高音                                                    |
| 66  | Low Timbale     | 低音                                                    |
| 67  | High Agogo      | 高音                                                    |
| 68  | Low Agogo       | 低音                                                    |
| 69  | Cabasa          | [鐵沙鈴](../Page/鐵沙鈴.md "wikilink")                      |
| 70  | Maracas         | [沙槌](https://zh.wikipedia.org/wiki/沙槌 "wikilink")     |
| 71  | Short Whistle   | 短[口哨](https://zh.wikipedia.org/wiki/口哨 "wikilink")    |
| 72  | Long Whistle    | 長[口哨](https://zh.wikipedia.org/wiki/口哨 "wikilink")    |
| 73  | Short Guiro     | 短[刮瓜](https://zh.wikipedia.org/wiki/刮瓜 "wikilink")    |
| 74  | Long Guiro      | 長[刮瓜](https://zh.wikipedia.org/wiki/刮瓜 "wikilink")    |
| 75  | Claves          | [擊木](../Page/擊木.md "wikilink")                        |
| 76  | High Wood Block | 高音[木魚](https://zh.wikipedia.org/wiki/木魚 "wikilink")   |
| 77  | Low Wood Block  | 低音[木魚](https://zh.wikipedia.org/wiki/木魚 "wikilink")   |
| 78  | Mute            |                                                       |
| 79  | Open            |                                                       |
| 80  | Mute Triangle   | 悶音[三角鐵](https://zh.wikipedia.org/wiki/三角鐵 "wikilink") |
| 81  | Open Triangle   | 開放[三角鐵](https://zh.wikipedia.org/wiki/三角鐵 "wikilink") |

### 控制器事件（Controller events）

GM也同時規範了數個控制器的工作\[1\]

| No. | 功能                                                             |
| --- | -------------------------------------------------------------- |
| 1   | Modulation（[顫音](https://zh.wikipedia.org/wiki/顫音 "wikilink")）  |
| 6   | Data Entry [MSB](https://zh.wikipedia.org/wiki/MSB "wikilink") |
| 7   | Volume（音量）                                                     |
| 10  | Pan（相位）                                                        |
| 11  | Expression（表情踏板）                                               |
| 38  | Data Entry [LSB](https://zh.wikipedia.org/wiki/LSB "wikilink") |
| 64  | Sustain（[延音踏板](../Page/延音踏板.md "wikilink")）                    |
| 100 | RPN LSB                                                        |
| 101 | RPN MSB                                                        |
| 121 | Reset all controllers（重設所有控制器）                                 |
| 123 | All notes off（消音）                                              |

### RPN（Registered Parameter Number登錄參數）

「登錄參數」是一系列參數，可以提供改變滑音輪的滑音範圍、顫音輪的顫音範圍、進入第二層音色庫……等較高階的功能。

設定「登錄參數」，需要以固定的格式傳送訊號（訊號的數字是十進位）：

1.  啟動登錄參數功能（Control Change messages），必須先同時使用「控制碼」（CC）101和100，以選擇想要控制的參數（如下表）
2.  接下來輸入數字資料（Data Entry messages，MSB = 控制器\#6, LSB = 控制器\#38）
3.  最後若是「End of RPN」（CC 38）訊息，即表示結束訊息

以下的全球Registered Parameter Numbers (RPNs)是經過標準化\[2\]的（參數由RPN LSB/MSB對規範，值則由Data Entry LSB/MSB對設定）：

<table>
<thead>
<tr class="header">
<th><p>MSB</p></th>
<th><p>LSB</p></th>
<th><p>意義</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>0</p></td>
<td><p>1</p></td>
<td><p>Channel Fine tuning（頻道細調）</p></td>
</tr>
<tr class="odd">
<td><p>0</p></td>
<td><p>2</p></td>
<td><p>Channel Coarse tuning（頻道粗調）</p></td>
</tr>
<tr class="even">
<td><p>0</p></td>
<td><p>3</p></td>
<td><p>Tuning Program Change（轉換調節音色）</p></td>
</tr>
<tr class="odd">
<td><p>0</p></td>
<td><p>4</p></td>
<td><p>Tuning Bank Select（轉換調節群組）</p></td>
</tr>
<tr class="even">
<td><p>0</p></td>
<td><p>5</p></td>
<td><p>Modulation Depth Range（顫音深度範圍）</p></td>
</tr>
<tr class="odd">
<td><p>127</p></td>
<td><p>127</p></td>
<td><p>RPN Null</p></td>
</tr>
</tbody>
</table>

例：用RPN控制串設定彎音輪（Pitch Bend）為八度（參數6，值12）

    101:0, 100:0, 6:12, 38:0

例：用RPN控制串設定粗調（coarse tuning）至A440（參數2，值64）

    101:0, 100:2, 6:64, 101:127, 100:127

### 系統排除訊息（System Exclusive messages）

兩個系統排除（System Exclusive，"SysEx"）訊息被定義：一個是決定使不使用General MIDI在同樣允許非GM相容模式之設備上的相容性；另一個用來修正樂器的整體音量。

## 參照

## 關聯項目

  - [General MIDI Level 2](../Page/General_MIDI_Level_2.md "wikilink")

[Category:MIDI](https://zh.wikipedia.org/wiki/Category:MIDI "wikilink") [Category:樂譜檔案格式](https://zh.wikipedia.org/wiki/Category:樂譜檔案格式 "wikilink")

1.  [1](http://www.indiana.edu/~emusic/cntrlnumb.html)
2.  [MIDI Messages Table 3](http://www.midi.org/about-midi/table3.shtml)