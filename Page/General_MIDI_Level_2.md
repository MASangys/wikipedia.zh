**General MIDI Level
2**，簡稱**GM2**，是[MIDI的標準規格](../Page/MIDI.md "wikilink")。它的基礎是[General
MIDI以及](../Page/General_MIDI.md "wikilink")[GS
extensions](../Page/GS_extensions.md "wikilink")。在1999年被[MIDI制造商协会](../Page/MIDI制造商协会.md "wikilink")(MMA)所採用。

## 最低需求條件

  - 同時發聲數：32
  - MIDI頻道：16
  - 同時演奏旋律樂器達16個（所有頻道）
  - 同時演奏打擊樂器組達2組（頻道10/11）

## 參數

### 音色及群組轉換事件（Program and bank change events）

General MIDI 2相容的合成器透過設定cc\#0 (Bank Select MSB)至121並使用cc\#32 (Bank
Select LSB)在音色轉換之前去選定各個群組。群組0包含了原本[GM中所有的聲音組](../Page/GM.md "wikilink")。

### 旋律音色

<table style="width:90%;">
<colgroup>
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 31%" />
<col style="width: 31%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Patch Number</p></th>
<th><p>Bank Number</p></th>
<th><p>English</p></th>
<th><p>中文</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Piano（鋼 琴）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>0</p></td>
<td><p>Acoustic Grand Piano</p></td>
<td><p><a href="../Page/鋼琴.md" title="wikilink">平臺鋼琴</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Wet Acoustic Grand</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Dry Acoustic Grand</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>0</p></td>
<td><p>Bright Acoustic Piano</p></td>
<td><p><a href="../Page/鋼琴.md" title="wikilink">亮音鋼琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Wet Bright Acoustic</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>0</p></td>
<td><p>Electric Grand Piano</p></td>
<td><p><a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Wet Electric Grand</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>0</p></td>
<td><p>Honky-tonk Piano</p></td>
<td><p><a href="../Page/叮噹琴.md" title="wikilink">叮噹琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Wet Honky-tonk</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5</p></td>
<td><p>0</p></td>
<td><p>Rhodes Piano</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Detuned Electric Piano 1</p></td>
<td><p>失諧<a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a>1</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Electric Piano 1 Variation</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>60's Electric Piano</p></td>
<td><p>60年代<a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>0</p></td>
<td><p>Chorused Electric Piano</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Detuned Electric Piano 2</p></td>
<td><p>失諧<a href="../Page/電鋼琴.md" title="wikilink">電鋼琴</a>2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Electric Piano 2 Variation</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Electric Piano Legend</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Electric Piano Phase</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>0</p></td>
<td><p>Harpsichord</p></td>
<td><p><a href="../Page/大鍵琴.md" title="wikilink">大鍵琴</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Coupled Harpsichord</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Wet Harpsichord</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Open Harpsichord</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>8</p></td>
<td><p>0</p></td>
<td><p>Clavinet</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Pulse Clavinet</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Chromatic Percussion（固定音高打擊樂器）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>0</p></td>
<td><p>Celesta</p></td>
<td><p><a href="../Page/鋼片琴.md" title="wikilink">鋼片琴</a></p></td>
</tr>
<tr class="even">
<td><p>10</p></td>
<td><p>0</p></td>
<td><p>Glockenspiel</p></td>
<td><p><a href="../Page/鐘琴.md" title="wikilink">鐘琴</a></p></td>
</tr>
<tr class="odd">
<td><p>11</p></td>
<td><p>0</p></td>
<td><p>Music Box</p></td>
<td><p><a href="../Page/音樂盒.md" title="wikilink">音樂盒</a></p></td>
</tr>
<tr class="even">
<td><p>12</p></td>
<td><p>0</p></td>
<td><p>Vibraphone</p></td>
<td><p><a href="../Page/顫音琴.md" title="wikilink">顫音琴</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Wet Vibraphone</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>13</p></td>
<td><p>0</p></td>
<td><p>Marimba</p></td>
<td><p><a href="../Page/馬林巴琴.md" title="wikilink">馬林巴琴</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Wet Marimba</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>14</p></td>
<td><p>0</p></td>
<td><p>Xylophone</p></td>
<td><p><a href="../Page/木琴.md" title="wikilink">木琴</a></p></td>
</tr>
<tr class="odd">
<td><p>15</p></td>
<td><p>0</p></td>
<td><p>Tubular Bell</p></td>
<td><p><a href="../Page/管鐘.md" title="wikilink">管鐘</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Church Bell</p></td>
<td><p><a href="../Page/教堂.md" title="wikilink">教堂大鐘</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Carillon</p></td>
<td><p>鐘樓編鐘</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>16</p></td>
<td><p>0</p></td>
<td><p>Dulcimer</p></td>
<td><p><a href="../Page/洋琴.md" title="wikilink">洋琴</a></p></td>
</tr>
<tr class="odd">
<td><p>Organ（風 琴）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>17</p></td>
<td><p>0</p></td>
<td><p>Hammond Organ</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Detuned Organ 1</p></td>
<td><p>失諧<a href="../Page/風琴.md" title="wikilink">風琴</a>1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>60's Organ 1</p></td>
<td><p>60年代<a href="../Page/風琴.md" title="wikilink">風琴</a>1</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Organ 4</p></td>
<td><p><a href="../Page/風琴.md" title="wikilink">風琴</a>4</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>18</p></td>
<td><p>0</p></td>
<td><p>Percussive Organ</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Detuned Organ 2</p></td>
<td><p>失諧<a href="../Page/風琴.md" title="wikilink">風琴</a>2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Organ 5</p></td>
<td><p><a href="../Page/風琴.md" title="wikilink">風琴</a>5</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>19</p></td>
<td><p>0</p></td>
<td><p>Rock Organ</p></td>
<td><p><a href="../Page/風琴.md" title="wikilink">搖滾風琴</a></p></td>
</tr>
<tr class="even">
<td><p>20</p></td>
<td><p>0</p></td>
<td><p>Church Organ 1</p></td>
<td><p><a href="../Page/管風琴.md" title="wikilink">教堂管風琴</a>1</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Church Organ 2</p></td>
<td><p><a href="../Page/管風琴.md" title="wikilink">教堂管風琴</a>2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Church Organ 3</p></td>
<td><p><a href="../Page/管風琴.md" title="wikilink">教堂管風琴</a>3</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>21</p></td>
<td><p>0</p></td>
<td><p>Reed Organ</p></td>
<td><p><a href="../Page/簧風琴.md" title="wikilink">簧風琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Puff Organ</p></td>
<td><p><a href="../Page/吹氣風琴.md" title="wikilink">吹氣風琴</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>22</p></td>
<td><p>0</p></td>
<td><p>French Accordion</p></td>
<td><p>法國<a href="../Page/手風琴.md" title="wikilink">手風琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Italian Accordion</p></td>
<td><p>義大利<a href="../Page/手風琴.md" title="wikilink">手風琴</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>23</p></td>
<td><p>0</p></td>
<td><p>Harmonica</p></td>
<td><p><a href="../Page/口琴.md" title="wikilink">口琴</a></p></td>
</tr>
<tr class="even">
<td><p>24</p></td>
<td><p>0</p></td>
<td><p>Bandoneón</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Guitar（吉 他）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>25</p></td>
<td><p>0</p></td>
<td><p>Nylon-String Guitar</p></td>
<td><p>尼龍弦<a href="../Page/吉他.md" title="wikilink">吉他</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Ukulele</p></td>
<td><p><a href="../Page/烏克麗麗.md" title="wikilink">烏克麗麗</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Open Nylon Guitar</p></td>
<td><p>開放尼龍弦<a href="../Page/吉他.md" title="wikilink">吉他</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Nylon Guitar 2</p></td>
<td><p>尼龍弦<a href="../Page/吉他.md" title="wikilink">吉他</a>2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>26</p></td>
<td><p>0</p></td>
<td><p>Steel-String Guitar</p></td>
<td><p>鋼弦<a href="../Page/吉他.md" title="wikilink">吉他</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>12-String Guitar</p></td>
<td><p>12弦<a href="../Page/吉他.md" title="wikilink">吉他</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Mandolin</p></td>
<td><p><a href="../Page/曼陀林.md" title="wikilink">曼陀林</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Steel + Body</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>27</p></td>
<td><p>0</p></td>
<td><p>Jazz Guitar</p></td>
<td><p>爵士吉他</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Hawaiian Guitar</p></td>
<td><p>夏威夷吉他</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>28</p></td>
<td><p>0</p></td>
<td><p>Clean Electric Guitar</p></td>
<td><p>原音電吉他</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Chorus Guitar</p></td>
<td><p>合音吉他</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Mid Tone Guitar</p></td>
<td><p>中音吉他</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>29</p></td>
<td><p>0</p></td>
<td><p>Muted Electric Guitar</p></td>
<td><p>悶音電吉他</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Funk Guitar</p></td>
<td><p><a href="../Page/放克.md" title="wikilink">放克吉他</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Funk Guitar 2</p></td>
<td><p><a href="../Page/放克.md" title="wikilink">放克吉他</a>2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Jazz Man</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>30</p></td>
<td><p>0</p></td>
<td><p>Overdriven Guitar</p></td>
<td><p>破音吉他</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Guitar Pinch</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>31</p></td>
<td><p>0</p></td>
<td><p>Distortion Guitar</p></td>
<td><p>失真吉他</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Feedback Guitar</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Distortion Rtm Guitar</p></td>
<td><p>失真節奏吉他</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>32</p></td>
<td><p>0</p></td>
<td><p>Guitar Harmonics</p></td>
<td><p>吉他合聲</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Guitar Feedback</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Bass（貝 斯）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>33</p></td>
<td><p>0</p></td>
<td><p>Acoustic Bass</p></td>
<td><p><a href="../Page/貝斯.md" title="wikilink">貝斯</a></p></td>
</tr>
<tr class="even">
<td><p>34</p></td>
<td><p>0</p></td>
<td><p>Fingered Bass</p></td>
<td><p>指奏<a href="../Page/電貝斯.md" title="wikilink">電貝斯</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Finger Slap</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>35</p></td>
<td><p>0</p></td>
<td><p>Picked Bass</p></td>
<td><p>撥奏<a href="../Page/電貝斯.md" title="wikilink">電貝斯</a></p></td>
</tr>
<tr class="odd">
<td><p>36</p></td>
<td><p>0</p></td>
<td><p>Fretless Bass</p></td>
<td><p>無格貝斯</p></td>
</tr>
<tr class="even">
<td><p>37</p></td>
<td><p>0</p></td>
<td><p>Slap Bass 1</p></td>
<td><p>重貝斯1</p></td>
</tr>
<tr class="odd">
<td><p>38</p></td>
<td><p>0</p></td>
<td><p>Slap Bass 2</p></td>
<td><p>重貝斯2</p></td>
</tr>
<tr class="even">
<td><p>39</p></td>
<td><p>0</p></td>
<td><p>Synth Bass 1</p></td>
<td><p>合成貝斯1</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Synth Bass 101</p></td>
<td><p>合成貝斯101</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Synth Bass 3</p></td>
<td><p>合成貝斯3</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Clavi Bass</p></td>
<td><p><a href="../Page/翼琴.md" title="wikilink">翼琴貝斯</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>Hammer</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>40</p></td>
<td><p>0</p></td>
<td><p>Synth Bass 2</p></td>
<td><p>合成貝斯2</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Synth Bass 4</p></td>
<td><p>合成貝斯4</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Rubber Bass</p></td>
<td><p>橡膠貝斯</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Attack Pulse</p></td>
<td><p>音頭脈衝</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Orchestra Solo（交響樂獨奏）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>41</p></td>
<td><p>0</p></td>
<td><p>Violin</p></td>
<td><p><a href="../Page/小提琴.md" title="wikilink">小提琴</a></p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Slow Violin</p></td>
<td><p>獨奏<a href="../Page/小提琴.md" title="wikilink">小提琴</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>42</p></td>
<td><p>0</p></td>
<td><p>Viola</p></td>
<td><p><a href="../Page/中提琴.md" title="wikilink">中提琴</a></p></td>
</tr>
<tr class="odd">
<td><p>43</p></td>
<td><p>0</p></td>
<td><p>Cello</p></td>
<td><p><a href="../Page/大提琴.md" title="wikilink">大提琴</a></p></td>
</tr>
<tr class="even">
<td><p>44</p></td>
<td><p>0</p></td>
<td><p>Contrabass</p></td>
<td><p><a href="../Page/低音提琴.md" title="wikilink">低音提琴</a></p></td>
</tr>
<tr class="odd">
<td><p>45</p></td>
<td><p>0</p></td>
<td><p>Tremolo Strings</p></td>
<td><p>顫弓弦樂</p></td>
</tr>
<tr class="even">
<td><p>46</p></td>
<td><p>0</p></td>
<td><p>Pizzicato Strings</p></td>
<td><p>彈撥弦樂</p></td>
</tr>
<tr class="odd">
<td><p>47</p></td>
<td><p>0</p></td>
<td><p>Harp</p></td>
<td><p><a href="../Page/豎琴.md" title="wikilink">豎琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Yang Qin</p></td>
<td><p><a href="../Page/揚琴.md" title="wikilink">揚琴</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>48</p></td>
<td><p>0</p></td>
<td><p>Timpani</p></td>
<td><p><a href="../Page/定音鼓.md" title="wikilink">定音鼓</a></p></td>
</tr>
<tr class="even">
<td><p>Orchestra Ensemble（交響樂合奏）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>49</p></td>
<td><p>0</p></td>
<td><p>String Ensemble</p></td>
<td><p>弦樂合奏</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Orchestra Strings</p></td>
<td><p>交響弦樂</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>60's Strings</p></td>
<td><p>60年代弦樂</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>50</p></td>
<td><p>0</p></td>
<td><p>Slow String Ensemble</p></td>
<td><p>“慢半拍”弦樂合奏</p></td>
</tr>
<tr class="odd">
<td><p>51</p></td>
<td><p>0</p></td>
<td><p>Synth Strings 1</p></td>
<td><p>合成弦樂1</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Synth Strings 3</p></td>
<td><p>合成弦樂3</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>52</p></td>
<td><p>0</p></td>
<td><p>Synth Strings 2</p></td>
<td><p>合成弦樂2</p></td>
</tr>
<tr class="even">
<td><p>53</p></td>
<td><p>0</p></td>
<td><p>Choir Aahs</p></td>
<td><p>合聲「啊」</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Choir Aahs 2</p></td>
<td><p>合聲「啊」2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>54</p></td>
<td><p>0</p></td>
<td><p>Voice Oohs</p></td>
<td><p>「喔」音</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Humming</p></td>
<td><p>哼鳴</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>55</p></td>
<td><p>0</p></td>
<td><p>Synth Voice</p></td>
<td><p>合成人聲</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Analog Voice</p></td>
<td><p>類比人聲</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>56</p></td>
<td><p>0</p></td>
<td><p>Orchestra Hit</p></td>
<td><p>交響打擊樂</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Bass Hit</p></td>
<td><p>低音打擊</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>6th Hit</p></td>
<td><p>六度音打擊</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Euro Hit</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Brass（銅 管 樂 器）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>57</p></td>
<td><p>0</p></td>
<td><p>Trumpet</p></td>
<td><p><a href="../Page/小號.md" title="wikilink">小號</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Dark Trumpet</p></td>
<td><p>暗音<a href="../Page/小號.md" title="wikilink">小號</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>58</p></td>
<td><p>0</p></td>
<td><p>Trombone</p></td>
<td><p><a href="../Page/長號.md" title="wikilink">長號</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Trombone 2</p></td>
<td><p><a href="../Page/長號.md" title="wikilink">長號</a>2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Bright Trombone</p></td>
<td><p>亮音<a href="../Page/長號.md" title="wikilink">長號</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>59</p></td>
<td><p>0</p></td>
<td><p>Tuba</p></td>
<td><p><a href="../Page/大號.md" title="wikilink">大號</a></p></td>
</tr>
<tr class="odd">
<td><p>60</p></td>
<td><p>0</p></td>
<td><p>Muted Trumpet</p></td>
<td><p>悶音<a href="../Page/小號.md" title="wikilink">小號</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Muted Trumpet 2</p></td>
<td><p>悶音<a href="../Page/小號.md" title="wikilink">小號</a>2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>61</p></td>
<td><p>0</p></td>
<td><p>French Horns</p></td>
<td><p><a href="../Page/法國號.md" title="wikilink">法國號</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>French Horn 2</p></td>
<td><p><a href="../Page/法國號.md" title="wikilink">法國號</a>2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>62</p></td>
<td><p>0</p></td>
<td><p>Brass Section 1</p></td>
<td><p><a href="../Page/銅管樂.md" title="wikilink">銅管樂</a>1</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Brass Section 2</p></td>
<td><p><a href="../Page/銅管樂.md" title="wikilink">銅管樂</a>2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>63</p></td>
<td><p>0</p></td>
<td><p>Synth Brass 1</p></td>
<td><p>合成<a href="../Page/銅管.md" title="wikilink">銅管</a>1</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Synth Brass 3</p></td>
<td><p>合成<a href="../Page/銅管.md" title="wikilink">銅管</a>3</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Analog Brass 1</p></td>
<td><p>類比<a href="../Page/銅管.md" title="wikilink">銅管</a>1</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Jump Brass</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>64</p></td>
<td><p>0</p></td>
<td><p>Synth Brass 2</p></td>
<td><p>合成<a href="../Page/銅管.md" title="wikilink">銅管</a>2</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Synth Brass 4</p></td>
<td><p>合成<a href="../Page/銅管.md" title="wikilink">銅管</a>4</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Analog Brass 2</p></td>
<td><p>類比<a href="../Page/銅管.md" title="wikilink">銅管</a>2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Reed（簧 樂 器）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>65</p></td>
<td><p>0</p></td>
<td><p>Soprano Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">高音薩克斯風</a></p></td>
</tr>
<tr class="even">
<td><p>66</p></td>
<td><p>0</p></td>
<td><p>Alto Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">中音薩克斯風</a></p></td>
</tr>
<tr class="odd">
<td><p>67</p></td>
<td><p>0</p></td>
<td><p>Tenor Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">次中音薩克斯風</a></p></td>
</tr>
<tr class="even">
<td><p>68</p></td>
<td><p>0</p></td>
<td><p>Baritone Sax</p></td>
<td><p><a href="../Page/薩克斯風.md" title="wikilink">上低音薩克斯風</a></p></td>
</tr>
<tr class="odd">
<td><p>69</p></td>
<td><p>0</p></td>
<td><p>Oboe</p></td>
<td><p><a href="../Page/雙簧管.md" title="wikilink">雙簧管</a></p></td>
</tr>
<tr class="even">
<td><p>70</p></td>
<td><p>0</p></td>
<td><p>English Horn</p></td>
<td><p><a href="../Page/英國管.md" title="wikilink">英國管</a></p></td>
</tr>
<tr class="odd">
<td><p>71</p></td>
<td><p>0</p></td>
<td><p>Bassoon</p></td>
<td><p><a href="../Page/低音簧.md" title="wikilink">低音簧</a></p></td>
</tr>
<tr class="even">
<td><p>72</p></td>
<td><p>0</p></td>
<td><p>Clarinet</p></td>
<td><p><a href="../Page/單簧管.md" title="wikilink">單簧管</a></p></td>
</tr>
<tr class="odd">
<td><p>Wind（管 樂 器）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>73</p></td>
<td><p>0</p></td>
<td><p>Piccolo</p></td>
<td><p><a href="../Page/短笛.md" title="wikilink">短笛</a></p></td>
</tr>
<tr class="odd">
<td><p>74</p></td>
<td><p>0</p></td>
<td><p>Flute</p></td>
<td><p><a href="../Page/長笛.md" title="wikilink">長笛</a></p></td>
</tr>
<tr class="even">
<td><p>75</p></td>
<td><p>0</p></td>
<td><p>Recorder</p></td>
<td><p><a href="../Page/直笛.md" title="wikilink">直笛</a></p></td>
</tr>
<tr class="odd">
<td><p>76</p></td>
<td><p>0</p></td>
<td><p>Pan Flute</p></td>
<td><p><a href="../Page/排笛.md" title="wikilink">排笛</a></p></td>
</tr>
<tr class="even">
<td><p>77</p></td>
<td><p>0</p></td>
<td><p>Bottle Blow</p></td>
<td><p><a href="../Page/瓶笛.md" title="wikilink">瓶笛</a></p></td>
</tr>
<tr class="odd">
<td><p>78</p></td>
<td><p>0</p></td>
<td><p>Shakuhachi</p></td>
<td><p><a href="../Page/尺八.md" title="wikilink">尺八</a></p></td>
</tr>
<tr class="even">
<td><p>79</p></td>
<td><p>0</p></td>
<td><p>Whistle</p></td>
<td><p><a href="../Page/哨子_(器物).md" title="wikilink">哨子</a></p></td>
</tr>
<tr class="odd">
<td><p>80</p></td>
<td><p>0</p></td>
<td><p>Ocarina</p></td>
<td><p><a href="../Page/陶笛.md" title="wikilink">陶笛</a></p></td>
</tr>
<tr class="even">
<td><p>Synth Lead（合成音 主旋律）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>81</p></td>
<td><p>0</p></td>
<td><p>Square Lead</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Square Wave</p></td>
<td><p><a href="../Page/方波.md" title="wikilink">方波</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Sine Wave</p></td>
<td><p><a href="../Page/正弦波.md" title="wikilink">正弦波</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>82</p></td>
<td><p>0</p></td>
<td><p>Saw Lead</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Saw Wave</p></td>
<td><p><a href="../Page/鋸齒波.md" title="wikilink">鋸齒波</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Doctor Solo</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Natural Lead</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>Sequenced Saw</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>83</p></td>
<td><p>0</p></td>
<td><p>Synth Calliope</p></td>
<td><p>合成<a href="../Page/汽笛風琴.md" title="wikilink">汽笛風琴</a></p></td>
</tr>
<tr class="even">
<td><p>84</p></td>
<td><p>0</p></td>
<td><p>Chiffer Lead</p></td>
<td><p>合成吹管</p></td>
</tr>
<tr class="odd">
<td><p>85</p></td>
<td><p>0</p></td>
<td><p>Charang</p></td>
<td><p>合成<a href="../Page/電吉他.md" title="wikilink">電吉他</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Wire Lead</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>86</p></td>
<td><p>0</p></td>
<td><p>Solo Synth Vox</p></td>
<td><p>人聲鍵盤</p></td>
</tr>
<tr class="even">
<td><p>87</p></td>
<td><p>0</p></td>
<td><p>5th Saw Wave</p></td>
<td><p>五度音鋸齒波</p></td>
</tr>
<tr class="odd">
<td><p>88</p></td>
<td><p>0</p></td>
<td><p>Bass &amp; Lead</p></td>
<td><p>八度音</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Delayed Lead</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Synth Pad（合成音 和弦襯底）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>89</p></td>
<td><p>0</p></td>
<td><p>Fantasia Pad</p></td>
<td><p>幻想</p></td>
</tr>
<tr class="odd">
<td><p>90</p></td>
<td><p>0</p></td>
<td><p>Warm Pad</p></td>
<td><p>溫暖</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Sine Pad</p></td>
<td><p>正弦</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>91</p></td>
<td><p>0</p></td>
<td><p>Polysynth Pad</p></td>
<td><p>多重合音</p></td>
</tr>
<tr class="even">
<td><p>92</p></td>
<td><p>0</p></td>
<td><p>Space Voice Pad</p></td>
<td><p>空間人聲</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Itopia</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>93</p></td>
<td><p>0</p></td>
<td><p>Bowed Glass Pad</p></td>
<td><p>玻璃</p></td>
</tr>
<tr class="odd">
<td><p>94</p></td>
<td><p>0</p></td>
<td><p>Metal Pad</p></td>
<td><p>金屬</p></td>
</tr>
<tr class="even">
<td><p>95</p></td>
<td><p>0</p></td>
<td><p>Halo Pad</p></td>
<td><p>光華</p></td>
</tr>
<tr class="odd">
<td><p>96</p></td>
<td><p>0</p></td>
<td><p>Sweep Pad</p></td>
<td><p>掃掠</p></td>
</tr>
<tr class="even">
<td><p>Synth Sound FX（合成音 效果）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>97</p></td>
<td><p>0</p></td>
<td><p>Ice Rain</p></td>
<td><p>冰雨</p></td>
</tr>
<tr class="even">
<td><p>98</p></td>
<td><p>0</p></td>
<td><p>Soundtrack</p></td>
<td><p>電影音效</p></td>
</tr>
<tr class="odd">
<td><p>99</p></td>
<td><p>0</p></td>
<td><p>Crystal</p></td>
<td><p>水晶</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Synth Mallet</p></td>
<td><p>合成<a href="../Page/音槌.md" title="wikilink">音槌</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>100</p></td>
<td><p>0</p></td>
<td><p>Atmosphere</p></td>
<td><p>氣氛</p></td>
</tr>
<tr class="even">
<td><p>101</p></td>
<td><p>0</p></td>
<td><p>Brightness</p></td>
<td><p>明亮</p></td>
</tr>
<tr class="odd">
<td><p>102</p></td>
<td><p>0</p></td>
<td><p>Goblin</p></td>
<td><p>魅影</p></td>
</tr>
<tr class="even">
<td><p>103</p></td>
<td><p>0</p></td>
<td><p>Echo Drops</p></td>
<td><p>回音</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Echo Bell</p></td>
<td><p>回音鈴</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Echo Pan</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>104</p></td>
<td><p>0</p></td>
<td><p>Star Theme</p></td>
<td><p>星際主題</p></td>
</tr>
<tr class="even">
<td><p>Ethnic（民 族 樂 器）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>105</p></td>
<td><p>0</p></td>
<td><p>Sitar</p></td>
<td><p><a href="../Page/西塔琴.md" title="wikilink">西塔琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Sitar 2</p></td>
<td><p><a href="../Page/西塔琴.md" title="wikilink">西塔琴</a>2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>106</p></td>
<td><p>0</p></td>
<td><p>Banjo</p></td>
<td><p><a href="../Page/五絃琴.md" title="wikilink">五絃琴</a></p></td>
</tr>
<tr class="even">
<td><p>107</p></td>
<td><p>0</p></td>
<td><p>Shamisen</p></td>
<td><p><a href="../Page/三味線.md" title="wikilink">三味線</a></p></td>
</tr>
<tr class="odd">
<td><p>108</p></td>
<td><p>0</p></td>
<td><p>Koto</p></td>
<td><p><a href="../Page/十三絃琴.md" title="wikilink">十三絃琴</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Taisho Koto</p></td>
<td><p><a href="../Page/大正琴.md" title="wikilink">大正琴</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>109</p></td>
<td><p>0</p></td>
<td><p>Kalimba</p></td>
<td><p><a href="../Page/卡利瑪鐘琴.md" title="wikilink">卡利瑪鐘琴</a></p></td>
</tr>
<tr class="even">
<td><p>110</p></td>
<td><p>0</p></td>
<td><p>Bagpipe</p></td>
<td><p><a href="../Page/蘇格蘭風笛.md" title="wikilink">蘇格蘭風笛</a></p></td>
</tr>
<tr class="odd">
<td><p>111</p></td>
<td><p>0</p></td>
<td><p>Fiddle</p></td>
<td><p><a href="../Page/古提琴.md" title="wikilink">古提琴</a></p></td>
</tr>
<tr class="even">
<td><p>112</p></td>
<td><p>0</p></td>
<td><p>Shanai</p></td>
<td><p><a href="../Page/嗩吶.md" title="wikilink">嗩吶</a></p></td>
</tr>
<tr class="odd">
<td><p>Percussive（打 擊 樂 器）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>113</p></td>
<td><p>0</p></td>
<td><p>Tinkle Bell</p></td>
<td><p><a href="../Page/叮噹鈴.md" title="wikilink">叮噹鈴</a></p></td>
</tr>
<tr class="odd">
<td><p>114</p></td>
<td><p>0</p></td>
<td><p>Agogo</p></td>
<td><p><a href="../Page/阿哥哥鼓.md" title="wikilink">阿哥哥鼓</a></p></td>
</tr>
<tr class="even">
<td><p>115</p></td>
<td><p>0</p></td>
<td><p>Steel Drums</p></td>
<td><p><a href="../Page/鋼鼓.md" title="wikilink">鋼鼓</a></p></td>
</tr>
<tr class="odd">
<td><p>116</p></td>
<td><p>0</p></td>
<td><p>Woodblock</p></td>
<td><p><a href="../Page/木魚.md" title="wikilink">木魚</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Castanets</p></td>
<td><p><a href="../Page/響板.md" title="wikilink">響板</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>117</p></td>
<td><p>0</p></td>
<td><p>Taiko</p></td>
<td><p><a href="../Page/太鼓.md" title="wikilink">太鼓</a></p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Concert Bass Drum</p></td>
<td><p>音樂會大鼓</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>118</p></td>
<td><p>0</p></td>
<td><p>Melodic Tom 1</p></td>
<td><p>古式高音鼓1</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Melodic Tom 2</p></td>
<td><p>古式高音鼓2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>119</p></td>
<td><p>0</p></td>
<td><p>Synth Drum</p></td>
<td><p>合成鼓</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>808 Tom</p></td>
<td><p>808高音鼓</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Electric Percussion</p></td>
<td><p>電子打擊樂</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>120</p></td>
<td><p>0</p></td>
<td><p>Reverse Cymbal</p></td>
<td><p>逆轉鈸聲</p></td>
</tr>
<tr class="odd">
<td><p>Sound Effect（特 殊 音 效）</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>121</p></td>
<td><p>0</p></td>
<td><p>Guitar Fret Noise</p></td>
<td><p>吉他品格雜音</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>Guitar Cut Noise</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>String Slap</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>122</p></td>
<td><p>0</p></td>
<td><p>Breath Noise</p></td>
<td><p>呼吸雜音</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Flute Key Click</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>123</p></td>
<td><p>0</p></td>
<td><p>Seashore</p></td>
<td><p>海岸</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Rain</p></td>
<td><p>雨聲</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Thunder</p></td>
<td><p>雷聲</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Wind</p></td>
<td><p>風聲</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Stream</p></td>
<td><p>水流</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Bubble</p></td>
<td><p>泡泡</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>124</p></td>
<td><p>0</p></td>
<td><p>Bird</p></td>
<td><p>鳥鳴</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Dog</p></td>
<td><p>狗吠</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Horse-Gallop</p></td>
<td><p>馬馳</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Bird 2</p></td>
<td><p>鳥鳴2</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>125</p></td>
<td><p>0</p></td>
<td><p>Telephone 1</p></td>
<td><p>電話鈴1</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Telephone 2</p></td>
<td><p>電話鈴1</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Door Creaking</p></td>
<td><p>門嘎吱聲</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Door Closing</p></td>
<td><p>關門聲</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Scratch</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Wind Chimes</p></td>
<td><p><a href="../Page/風鈴.md" title="wikilink">風鈴</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>126</p></td>
<td><p>0</p></td>
<td><p>Helicopter</p></td>
<td><p>直升機</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Car-Engine</p></td>
<td><p>汽車引擎</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Car-Stop</p></td>
<td><p>汽車煞車</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Car-Pass</p></td>
<td><p>汽車馳走</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Car-Crash</p></td>
<td><p>撞車</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Siren</p></td>
<td><p>警報汽笛</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>Train</p></td>
<td><p>火車</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>Jetplane</p></td>
<td><p>噴射機</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>8</p></td>
<td><p>Starship</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>9</p></td>
<td><p>Burst Noise</p></td>
<td><p>燃燒雜音</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>127</p></td>
<td><p>0</p></td>
<td><p>Applause</p></td>
<td><p>拍手</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Laughing</p></td>
<td><p>笑聲</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Screaming</p></td>
<td><p>尖叫</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Punch</p></td>
<td><p>拳頭打擊聲</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Heart Beat</p></td>
<td><p>心臟脈動</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Footsteps</p></td>
<td><p>腳步聲</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>128</p></td>
<td><p>0</p></td>
<td><p>Gun Shot</p></td>
<td><p>槍聲</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Machine Gun</p></td>
<td><p>機關槍</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Lasergun</p></td>
<td><p>雷射槍</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Explosion</p></td>
<td><p>爆破</p></td>
<td></td>
</tr>
</tbody>
</table>

### 鼓組

這些音色編號和GS是一樣的。藉由設定cc\#0 (Bank Select MSB)至120、cc\#32 (Bank Select
LSB)至0，還有音色轉換（Program Change）去選擇鼓組。

  - 1 Standard Kit－唯一在[General MIDI Level
    1中被規定的鼓組](../Page/General_MIDI.md "wikilink")
  - 9 Room Kit－較為環繞的鼓組音色
  - 17 Power Kit－較有力道的鼓組
  - 25 Electronic Kit－各種電子鼓機的模擬
  - 26 TR-808 Kit－與Roland TR-808類似的類比鼓組
  - 33 Jazz Kit－與Standard kit相近的爵士鼓組
  - 41 Brush Kit－添加了許多鼓刷的聲音
  - 49 Orchestra Kit－蒐集了音樂會的鼓以及定音鼓
  - 57 Sound FX Kit－聲音特效
  - 128 CM-64/CM-32L－標準的MT-32鼓組

### 新增的打擊樂器

與GS的鼓譜相同，涵蓋以上1到49的鼓組

|                                                                                                       |                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `27 High Q` `28 Slap` `29 Scratch` `30 Scratch` `31 Sticks` `32 Square` `33 Metronome` `34 Metronome` | `82 Shaker` `83 Jingle Bell` `84 Belltree` `85 Castanets` `86 Mute Surdo` `87 Open Surdo` |

### 支援的控制轉換訊息

（某些為選擇性）

  - Bank Select (cc\#0/32)－群組選擇
  - Modulation Depth (cc\#1)－顫音深度
  - Portamento Time (cc\#5)－滑音時間
  - Channel Volume (cc\#7)－頻道音量
  - Pan (cc\#10)－相位
  - Expression (cc\#11)－表情
  - Hold1 (Damper) (cc\#64)－制音器
  - Portamento ON/OFF (cc\#65)－滑音開關
  - Sostenuto (cc\#66)－延音
  - Soft (cc\#67)－柔軟
  - Filter Resonance (Timbre/Harmonic Intensity) (cc\#71)－共鳴
  - Release Time (cc\#72)－釋音時間
  - Brightness (cc\#74)－聲音亮度
  - Decay Time (cc\#75)（新訊息）－衰退時間
  - Vibrato Rate (cc\#76)（新訊息）－顫音率
  - Vibrato Depth (cc\#77)（新訊息）－顫音深度
  - Vibrato Delay (cc\#78)（新訊息）－顫音延遲
  - Reverb Send Level (cc\#91)－回響等級
  - Chorus Send Level (cc\#93)－合音等級
  - Data Entry (cc\#6/38)
  - RPN LSB/MSB (cc\#100/101)

### 支援的RPNs

  - Pitch Bend Sensitivity－滑音桿敏感度
  - Channel Fine Tune－頻道細調
  - Channel Coarse Tune－頻道粗調
  - Modulation Depth Range (Vibrato Depth Range)－顫音深度範圍
  - RPN NULL

### 支持的系统专有（SysEx）消息

  - Master Volume－主控音量
  - Master Fine Tuning－主控細調音
  - Master Coarse Tuning－主控粗調音
  - Reverb Type－回響類別
  - Reverb Time－回響時間
  - Chorus Type－合音類別
  - Chorus Mod Rate－合音時間
  - Chorus Mod Depth－合音顫音深度
  - Chorus Feedback－合音反饋
  - Chorus Send to Reverb
  - Controller Destination Setting－控制器目標設定
  - Scale/Octave Tuning Adjust
  - Key-Based Instrument Controllers
  - GM2 System On

## 關聯項目

[General MIDI](../Page/General_MIDI.md "wikilink")

## 外部链接

  - [更多圖、文、音樂的GM128介紹](http://www.yusmusic.com.tw/www.yusmusic.com/index495a.html?act=product&CategoryID=93)

[Category:MIDI](https://zh.wikipedia.org/wiki/Category:MIDI "wikilink")