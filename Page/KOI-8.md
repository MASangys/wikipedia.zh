**KOI-8**（<span lang="ru">КОИ-8</span>）是一系列[斯拉夫文字的](../Page/斯拉夫语族.md "wikilink")8位元编码，在[俄罗斯](../Page/俄罗斯.md "wikilink")、[乌克兰等斯拉夫语族地区的网络社群中被广泛采用](../Page/乌克兰.md "wikilink")，使用率比起[ISO/IEC
8859-5更高](../Page/ISO/IEC_8859-5.md "wikilink")。

## 简介

“KOI-8”俄语原名 <span lang="ru">**Код Обмена Информацией, 8 бит**</span>，音译
*"Kod Obmena Informatsiey 8 bit"*，意译*“信息交换码，8位元”*。

KOI-8
不是以[西里尔字母的次序排列](../Page/西里尔字母.md "wikilink")，而是以“伪拉丁字母次序”（即把西里尔字母改用拉丁字母[转写出来](../Page/转写.md "wikilink")）排列。这能使以
KOI-8 编码的文字，纵使在网络传输时丢掉了最高（第8）位元，仍能够变成可以解读的拉丁字母。例如 "Русский Текст"
在丢掉了最高位元后，变成 "rUSSKIJ tEKST"（即 "Russian
Text"，KOI-8把它大小写颠倒以兹识别）。

KOI-8 有以下几个版本：

  - [KOI8-R](../Page/KOI8-R.md "wikilink")（[俄语](../Page/俄语.md "wikilink")）
  - [KOI8-U](../Page/KOI8-U.md "wikilink")（[乌克兰语](../Page/乌克兰语.md "wikilink")）
  - KOI8-RU（俄语、[白俄罗斯语](../Page/白俄罗斯语.md "wikilink")、乌克兰语）
  - KOI8-C（[高加索语系](../Page/高加索语系.md "wikilink")）
  - KOI8-T（[塔吉克语](../Page/塔吉克语.md "wikilink")）

每个 KOI-8 版本之中，头半部分 (0x00-0x7F)
与[ASCII相同](../Page/ASCII.md "wikilink")，西里尔字母主要放在 0xC0-0xFF
之中，标点及框线符号主要放在 0x80-0xBF 之中。

## KOI8-R 编码

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>8.</p></td>
<td><p>─<br />
2500</p></td>
<td><p>│<br />
2502</p></td>
<td><p>┌<br />
250C</p></td>
<td><p>┐<br />
2510</p></td>
<td><p>└<br />
2514</p></td>
<td><p>┘<br />
2518</p></td>
<td><p>├<br />
251C</p></td>
<td><p>┤<br />
2524</p></td>
<td><p>┬<br />
252C</p></td>
<td><p>┴<br />
2534</p></td>
<td><p>┼<br />
253C</p></td>
<td><p>▀<br />
2580</p></td>
<td><p>▄<br />
2584</p></td>
<td><p>█<br />
2588</p></td>
<td><p>▌<br />
258C</p></td>
<td><p>▐<br />
2590</p></td>
</tr>
<tr class="odd">
<td><p>9.</p></td>
<td><p>░<br />
2591</p></td>
<td><p>▒<br />
2592</p></td>
<td><p>▓<br />
2593</p></td>
<td><p>⌠<br />
2320</p></td>
<td><p>■<br />
25A0</p></td>
<td><p>∙<br />
2219</p></td>
<td><p>√<br />
221A</p></td>
<td><p>≈<br />
2248</p></td>
<td><p>≤<br />
2264</p></td>
<td><p>≥<br />
2265</p></td>
<td><p> <br />
A0</p></td>
<td><p>⌡<br />
2321</p></td>
<td><p>°<br />
B0</p></td>
<td><p>²<br />
B2</p></td>
<td><p>·<br />
B7</p></td>
<td><p>÷<br />
F7</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p>═<br />
2550</p></td>
<td><p>║<br />
2551</p></td>
<td><p>╒<br />
2552</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p>╓<br />
2553</p></td>
<td><p>╔<br />
2554</p></td>
<td><p>╕<br />
2555</p></td>
<td><p>╖<br />
2556</p></td>
<td><p>╗<br />
2557</p></td>
<td><p>╘<br />
2558</p></td>
<td><p>╙<br />
2559</p></td>
<td><p>╚<br />
255A</p></td>
<td><p>╛<br />
255B</p></td>
<td><p>╜<br />
255C</p></td>
<td><p>╝<br />
255D</p></td>
<td><p>╞<br />
255E</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>╟<br />
255F</p></td>
<td><p>╠<br />
2560</p></td>
<td><p>╡<br />
2561</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p>╢<br />
2562</p></td>
<td><p>╣<br />
2563</p></td>
<td><p>╤<br />
2564</p></td>
<td><p>╥<br />
2565</p></td>
<td><p>╦<br />
2566</p></td>
<td><p>╧<br />
2567</p></td>
<td><p>╨<br />
2568</p></td>
<td><p>╩<br />
2569</p></td>
<td><p>╪<br />
256A</p></td>
<td><p>╫<br />
256B</p></td>
<td><p>╬<br />
256C</p></td>
<td><p>©<br />
A9</p></td>
</tr>
<tr class="even">
<td><p>C.</p></td>
<td><p><a href="../Page/ю.md" title="wikilink">ю</a><br />
44E</p></td>
<td><p><a href="../Page/а.md" title="wikilink">а</a><br />
430</p></td>
<td><p><a href="../Page/б.md" title="wikilink">б</a><br />
431</p></td>
<td><p><a href="../Page/ц.md" title="wikilink">ц</a><br />
446</p></td>
<td><p><a href="../Page/д.md" title="wikilink">д</a><br />
434</p></td>
<td><p><a href="../Page/е.md" title="wikilink">е</a><br />
435</p></td>
<td><p><a href="../Page/ф.md" title="wikilink">ф</a><br />
444</p></td>
<td><p><a href="../Page/г.md" title="wikilink">г</a><br />
433</p></td>
<td><p><a href="../Page/х.md" title="wikilink">х</a><br />
445</p></td>
<td><p><a href="../Page/и.md" title="wikilink">и</a><br />
438</p></td>
<td><p><a href="../Page/й.md" title="wikilink">й</a><br />
439</p></td>
<td><p><a href="../Page/к.md" title="wikilink">к</a><br />
43A</p></td>
<td><p><a href="../Page/л.md" title="wikilink">л</a><br />
43B</p></td>
<td><p><a href="../Page/м.md" title="wikilink">м</a><br />
43C</p></td>
<td><p><a href="../Page/н.md" title="wikilink">н</a><br />
43D</p></td>
<td><p><a href="../Page/о.md" title="wikilink">о</a><br />
43E</p></td>
</tr>
<tr class="odd">
<td><p>D.</p></td>
<td><p><a href="../Page/п.md" title="wikilink">п</a><br />
43F</p></td>
<td><p><a href="../Page/я.md" title="wikilink">я</a><br />
44F</p></td>
<td><p><a href="../Page/р.md" title="wikilink">р</a><br />
440</p></td>
<td><p><a href="../Page/с.md" title="wikilink">с</a><br />
441</p></td>
<td><p><a href="../Page/т.md" title="wikilink">т</a><br />
442</p></td>
<td><p><a href="../Page/у.md" title="wikilink">у</a><br />
443</p></td>
<td><p><a href="../Page/ж.md" title="wikilink">ж</a><br />
436</p></td>
<td><p><a href="../Page/в.md" title="wikilink">в</a><br />
432</p></td>
<td><p><a href="../Page/ь.md" title="wikilink">ь</a><br />
44C</p></td>
<td><p><a href="../Page/ы.md" title="wikilink">ы</a><br />
44B</p></td>
<td><p><a href="../Page/з.md" title="wikilink">з</a><br />
437</p></td>
<td><p><a href="../Page/ш.md" title="wikilink">ш</a><br />
448</p></td>
<td><p><a href="../Page/э.md" title="wikilink">э</a><br />
44D</p></td>
<td><p><a href="../Page/щ.md" title="wikilink">щ</a><br />
449</p></td>
<td><p><a href="../Page/ч.md" title="wikilink">ч</a><br />
447</p></td>
<td><p><a href="../Page/ъ.md" title="wikilink">ъ</a><br />
44A</p></td>
</tr>
<tr class="even">
<td><p>E.</p></td>
<td><p><a href="../Page/Ю.md" title="wikilink">Ю</a><br />
42E</p></td>
<td><p><a href="../Page/А.md" title="wikilink">А</a><br />
410</p></td>
<td><p><a href="../Page/Б.md" title="wikilink">Б</a><br />
411</p></td>
<td><p><a href="../Page/Ц.md" title="wikilink">Ц</a><br />
426</p></td>
<td><p><a href="../Page/Д.md" title="wikilink">Д</a><br />
414</p></td>
<td><p><a href="../Page/Е.md" title="wikilink">Е</a><br />
415</p></td>
<td><p><a href="../Page/Ф.md" title="wikilink">Ф</a><br />
424</p></td>
<td><p><a href="../Page/Г.md" title="wikilink">Г</a><br />
413</p></td>
<td><p><a href="../Page/Х.md" title="wikilink">Х</a><br />
425</p></td>
<td><p><a href="../Page/И.md" title="wikilink">И</a><br />
418</p></td>
<td><p><a href="../Page/Й.md" title="wikilink">Й</a><br />
419</p></td>
<td><p><a href="../Page/К.md" title="wikilink">К</a><br />
41A</p></td>
<td><p><a href="../Page/Л.md" title="wikilink">Л</a><br />
41B</p></td>
<td><p><a href="../Page/М.md" title="wikilink">М</a><br />
41C</p></td>
<td><p><a href="../Page/Н.md" title="wikilink">Н</a><br />
41D</p></td>
<td><p><a href="../Page/О.md" title="wikilink">О</a><br />
41E</p></td>
</tr>
<tr class="odd">
<td><p>F.</p></td>
<td><p><a href="../Page/П.md" title="wikilink">П</a><br />
41F</p></td>
<td><p><a href="../Page/Я.md" title="wikilink">Я</a><br />
42F</p></td>
<td><p><a href="../Page/Р.md" title="wikilink">Р</a><br />
420</p></td>
<td><p><a href="../Page/С.md" title="wikilink">С</a><br />
421</p></td>
<td><p><a href="../Page/Т.md" title="wikilink">Т</a><br />
422</p></td>
<td><p><a href="../Page/У.md" title="wikilink">У</a><br />
423</p></td>
<td><p><a href="../Page/Ж.md" title="wikilink">Ж</a><br />
416</p></td>
<td><p><a href="../Page/В.md" title="wikilink">В</a><br />
412</p></td>
<td><p><a href="../Page/Ь.md" title="wikilink">Ь</a><br />
42C</p></td>
<td><p><a href="../Page/Ы.md" title="wikilink">Ы</a><br />
42B</p></td>
<td><p><a href="../Page/З.md" title="wikilink">З</a><br />
417</p></td>
<td><p><a href="../Page/Ш.md" title="wikilink">Ш</a><br />
428</p></td>
<td><p><a href="../Page/Э.md" title="wikilink">Э</a><br />
42D</p></td>
<td><p><a href="../Page/Щ.md" title="wikilink">Щ</a><br />
429</p></td>
<td><p><a href="../Page/Ч.md" title="wikilink">Ч</a><br />
427</p></td>
<td><p><a href="../Page/Ъ.md" title="wikilink">Ъ</a><br />
42A</p></td>
</tr>
</tbody>
</table>

## KOI8-U 编码

  -
    只列出与 KOI8-R 不同的区段

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p>═<br />
2550</p></td>
<td><p>║<br />
2551</p></td>
<td><p>╒<br />
2552</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p><a href="../Page/є.md" title="wikilink">є</a><br />
454</p></td>
<td><p>╔<br />
2554</p></td>
<td><p><a href="../Page/і.md" title="wikilink">і</a><br />
456</p></td>
<td><p><a href="../Page/ї.md" title="wikilink">ї</a><br />
457</p></td>
<td><p>╗<br />
2557</p></td>
<td><p>╘<br />
2558</p></td>
<td><p>╙<br />
2559</p></td>
<td><p>╚<br />
255A</p></td>
<td><p>╛<br />
255B</p></td>
<td><p><a href="../Page/ґ.md" title="wikilink">ґ</a><br />
491</p></td>
<td><p>╝<br />
255D</p></td>
<td><p>╞<br />
255E</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>╟<br />
255F</p></td>
<td><p>╠<br />
2560</p></td>
<td><p>╡<br />
2561</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p><a href="../Page/Є.md" title="wikilink">Є</a><br />
404</p></td>
<td><p>╣<br />
2563</p></td>
<td><p><a href="../Page/І.md" title="wikilink">І</a><br />
406</p></td>
<td><p><a href="../Page/Ї.md" title="wikilink">Ї</a><br />
407</p></td>
<td><p>╦<br />
2566</p></td>
<td><p>╧<br />
2567</p></td>
<td><p>╨<br />
2568</p></td>
<td><p>╩<br />
2569</p></td>
<td><p>╪<br />
256A</p></td>
<td><p><a href="../Page/Ґ.md" title="wikilink">Ґ</a><br />
490</p></td>
<td><p>╬<br />
256C</p></td>
<td><p>©<br />
A9</p></td>
</tr>
</tbody>
</table>

## KOI8-RU 编码

  -
    只列出与 KOI8-R 不同的区段

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p>═<br />
2550</p></td>
<td><p>║<br />
2551</p></td>
<td><p>╒<br />
2552</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p><a href="../Page/є.md" title="wikilink">є</a><br />
454</p></td>
<td><p>╔<br />
2554</p></td>
<td><p><a href="../Page/і.md" title="wikilink">і</a><br />
456</p></td>
<td><p><a href="../Page/ї.md" title="wikilink">ї</a><br />
457</p></td>
<td><p>╗<br />
2557</p></td>
<td><p>╘<br />
2558</p></td>
<td><p>╙<br />
2559</p></td>
<td><p>╚<br />
255A</p></td>
<td><p>╛<br />
255B</p></td>
<td><p><a href="../Page/ґ.md" title="wikilink">ґ</a><br />
491</p></td>
<td><p><a href="../Page/ў.md" title="wikilink">ў</a><br />
45E</p></td>
<td><p>╞<br />
255E</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>╟<br />
255F</p></td>
<td><p>╠<br />
2560</p></td>
<td><p>╡<br />
2561</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p><a href="../Page/Є.md" title="wikilink">Є</a><br />
404</p></td>
<td><p>╣<br />
2563</p></td>
<td><p><a href="../Page/І.md" title="wikilink">І</a><br />
406</p></td>
<td><p><a href="../Page/Ї.md" title="wikilink">Ї</a><br />
407</p></td>
<td><p>╦<br />
2566</p></td>
<td><p>╧<br />
2567</p></td>
<td><p>╨<br />
2568</p></td>
<td><p>╩<br />
2569</p></td>
<td><p>╪<br />
256A</p></td>
<td><p><a href="../Page/Ґ.md" title="wikilink">Ґ</a><br />
490</p></td>
<td><p><a href="../Page/Ў.md" title="wikilink">Ў</a><br />
40E</p></td>
<td><p>©<br />
A9</p></td>
</tr>
</tbody>
</table>

## KOI8-C 编码

  -
    只列出与 KOI8-R 不同的区段

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>8.</p></td>
<td><p><a href="../Page/ғ.md" title="wikilink">ғ</a><br />
493</p></td>
<td><p><a href="../Page/җ.md" title="wikilink">җ</a><br />
497</p></td>
<td><p><a href="../Page/қ.md" title="wikilink">қ</a><br />
49B</p></td>
<td><p><a href="../Page/ҝ.md" title="wikilink">ҝ</a><br />
49D</p></td>
<td><p><a href="../Page/ң.md" title="wikilink">ң</a><br />
4A3</p></td>
<td><p><a href="../Page/ү.md" title="wikilink">ү</a><br />
4AF</p></td>
<td><p><a href="../Page/ұ.md" title="wikilink">ұ</a><br />
4B1</p></td>
<td><p><a href="../Page/ҳ.md" title="wikilink">ҳ</a><br />
4B3</p></td>
<td><p><a href="../Page/ҷ.md" title="wikilink">ҷ</a><br />
4B7</p></td>
<td><p><a href="../Page/ҹ.md" title="wikilink">ҹ</a><br />
4B9</p></td>
<td><p><a href="../Page/һ.md" title="wikilink">һ</a><br />
4BB</p></td>
<td><p>▀<br />
2580</p></td>
<td><p><a href="../Page/ҝ.md" title="wikilink">ҝ</a><br />
49D</p></td>
<td><p><a href="../Page/ӣ.md" title="wikilink">ӣ</a><br />
4E3</p></td>
<td><p><a href="../Page/ө.md" title="wikilink">ө</a><br />
4E9</p></td>
<td><p><a href="../Page/ӯ.md" title="wikilink">ӯ</a><br />
4EF</p></td>
</tr>
<tr class="odd">
<td><p>9.</p></td>
<td><p><a href="../Page/Ғ.md" title="wikilink">Ғ</a><br />
492</p></td>
<td><p><a href="../Page/Җ.md" title="wikilink">Җ</a><br />
496</p></td>
<td><p><a href="../Page/Қ.md" title="wikilink">Қ</a><br />
49A</p></td>
<td><p><a href="../Page/Ҝ.md" title="wikilink">Ҝ</a><br />
49C</p></td>
<td><p><a href="../Page/Ң.md" title="wikilink">Ң</a><br />
4A2</p></td>
<td><p><a href="../Page/Ү.md" title="wikilink">Ү</a><br />
4AE</p></td>
<td><p><a href="../Page/Ұ.md" title="wikilink">Ұ</a><br />
4B0</p></td>
<td><p><a href="../Page/Ҳ.md" title="wikilink">Ҳ</a><br />
4B2</p></td>
<td><p><a href="../Page/Ҷ.md" title="wikilink">Ҷ</a><br />
4B6</p></td>
<td><p><a href="../Page/Ҹ.md" title="wikilink">Ҹ</a><br />
4B8</p></td>
<td><p><a href="../Page/Һ.md" title="wikilink">Һ</a><br />
4BA</p></td>
<td><p>⌡<br />
2321</p></td>
<td><p><a href="../Page/Ә.md" title="wikilink">Ә</a><br />
4D8</p></td>
<td><p><a href="../Page/Ӣ.md" title="wikilink">Ӣ</a><br />
4E2</p></td>
<td><p><a href="../Page/Ө.md" title="wikilink">Ө</a><br />
4E8</p></td>
<td><p><a href="../Page/Ӯ.md" title="wikilink">Ӯ</a><br />
4EE</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p> <br />
A0</p></td>
<td><p><a href="../Page/ђ.md" title="wikilink">ђ</a><br />
452</p></td>
<td><p><a href="../Page/ѓ.md" title="wikilink">ѓ</a><br />
453</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p><a href="../Page/є.md" title="wikilink">є</a><br />
454</p></td>
<td><p><a href="../Page/ѕ.md" title="wikilink">ѕ</a><br />
455</p></td>
<td><p><a href="../Page/і.md" title="wikilink">і</a><br />
456</p></td>
<td><p><a href="../Page/ї.md" title="wikilink">ї</a><br />
457</p></td>
<td><p><a href="../Page/ј.md" title="wikilink">ј</a><br />
458</p></td>
<td><p><a href="../Page/љ.md" title="wikilink">љ</a><br />
459</p></td>
<td><p><a href="../Page/њ.md" title="wikilink">њ</a><br />
45A</p></td>
<td><p><a href="../Page/ћ.md" title="wikilink">ћ</a><br />
45B</p></td>
<td><p><a href="../Page/ќ.md" title="wikilink">ќ</a><br />
45C</p></td>
<td><p><a href="../Page/ґ.md" title="wikilink">ґ</a><br />
491</p></td>
<td><p><a href="../Page/ў.md" title="wikilink">ў</a><br />
45E</p></td>
<td><p><a href="../Page/џ.md" title="wikilink">џ</a><br />
45F</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>№<br />
2116</p></td>
<td><p><a href="../Page/Ђ.md" title="wikilink">Ђ</a><br />
402</p></td>
<td><p><a href="../Page/Ѓ.md" title="wikilink">Ѓ</a><br />
403</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p><a href="../Page/Є.md" title="wikilink">Є</a><br />
404</p></td>
<td><p><a href="../Page/Ѕ.md" title="wikilink">Ѕ</a><br />
405</p></td>
<td><p><a href="../Page/І.md" title="wikilink">І</a><br />
406</p></td>
<td><p><a href="../Page/Ї.md" title="wikilink">Ї</a><br />
407</p></td>
<td><p><a href="../Page/Ј.md" title="wikilink">Ј</a><br />
408</p></td>
<td><p><a href="../Page/Љ.md" title="wikilink">Љ</a><br />
409</p></td>
<td><p><a href="../Page/Њ.md" title="wikilink">Њ</a><br />
40A</p></td>
<td><p><a href="../Page/Ћ.md" title="wikilink">Ћ</a><br />
40B</p></td>
<td><p><a href="../Page/Ќ.md" title="wikilink">Ќ</a><br />
40C</p></td>
<td><p><a href="../Page/Ґ.md" title="wikilink">Ґ</a><br />
490</p></td>
<td><p><a href="../Page/Ў.md" title="wikilink">Ў</a><br />
40E</p></td>
<td><p><a href="../Page/Џ.md" title="wikilink">Џ</a><br />
40F</p></td>
</tr>
</tbody>
</table>

## KOI8-T 编码

  -
    只列出与 KOI8-R 不同的区段

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>8.</p></td>
<td><p><a href="../Page/қ.md" title="wikilink">қ</a><br />
49B</p></td>
<td><p><a href="../Page/ғ.md" title="wikilink">ғ</a><br />
493</p></td>
<td><p>‚<br />
201A</p></td>
<td><p><a href="../Page/Ғ.md" title="wikilink">Ғ</a><br />
492</p></td>
<td><p>„<br />
201E</p></td>
<td><p>…<br />
2026</p></td>
<td><p>†<br />
2020</p></td>
<td><p>‡<br />
2021</p></td>
<td><p> </p></td>
<td><p>‰<br />
2030</p></td>
<td><p><a href="../Page/ҳ.md" title="wikilink">ҳ</a><br />
4B3</p></td>
<td><p>‹<br />
2039</p></td>
<td><p><a href="../Page/Ҳ.md" title="wikilink">Ҳ</a><br />
4B2</p></td>
<td><p><a href="../Page/ҷ.md" title="wikilink">ҷ</a><br />
4B7</p></td>
<td><p><a href="../Page/Ҷ.md" title="wikilink">Ҷ</a><br />
4B6</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>9.</p></td>
<td><p><a href="../Page/Қ.md" title="wikilink">Қ</a><br />
49A</p></td>
<td><p>‘<br />
2018</p></td>
<td><p>’<br />
2019</p></td>
<td><p>“<br />
201C</p></td>
<td><p>”<br />
201D</p></td>
<td><p>·<br />
2022</p></td>
<td><p>–<br />
2013</p></td>
<td><p>—<br />
2014</p></td>
<td><p> </p></td>
<td><p>™<br />
2122</p></td>
<td><p> </p></td>
<td><p>›<br />
203A</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p> </p></td>
<td><p><a href="../Page/ӯ.md" title="wikilink">ӯ</a><br />
4EF</p></td>
<td><p><a href="../Page/Ӯ.md" title="wikilink">Ӯ</a><br />
4EE</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p>¤<br />
A4</p></td>
<td><p><a href="../Page/ӣ.md" title="wikilink">ӣ</a><br />
4E3</p></td>
<td><p>¦<br />
A6</p></td>
<td><p>§<br />
A7</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>«<br />
AB</p></td>
<td><p>¬<br />
AC</p></td>
<td><p>­<br />
AD</p></td>
<td><p>®<br />
AE</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>°<br />
B0</p></td>
<td><p>±<br />
B1</p></td>
<td><p>²<br />
B2</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p> </p></td>
<td><p><a href="../Page/Ӣ.md" title="wikilink">Ӣ</a><br />
4E2</p></td>
<td><p>¶<br />
B6</p></td>
<td><p>·<br />
B7</p></td>
<td><p> </p></td>
<td><p>№<br />
2116</p></td>
<td><p> </p></td>
<td><p>»<br />
BB</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>©<br />
A9</p></td>
</tr>
</tbody>
</table>

## KOI8-O, KOI8-C (the Slav, old orthography)

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>8.</p></td>
<td><p><a href="../Page/Ђ.md" title="wikilink">Ђ</a><br />
402</p></td>
<td><p><a href="../Page/Ѓ.md" title="wikilink">Ѓ</a><br />
403</p></td>
<td><p>¸<br />
B8</p></td>
<td><p><a href="../Page/ѓ.md" title="wikilink">ѓ</a><br />
453</p></td>
<td><p>„<br />
201E</p></td>
<td><p>…<br />
2026</p></td>
<td><p>†<br />
2020</p></td>
<td><p>§<br />
A7</p></td>
<td><p>€<br />
20AC</p></td>
<td><p>¨<br />
A8</p></td>
<td><p><a href="../Page/Љ.md" title="wikilink">Љ</a><br />
409</p></td>
<td><p>‹<br />
2039</p></td>
<td><p><a href="../Page/Њ.md" title="wikilink">Њ</a><br />
40A</p></td>
<td><p><a href="../Page/Ќ.md" title="wikilink">Ќ</a><br />
40C</p></td>
<td><p><a href="../Page/Ћ.md" title="wikilink">Ћ</a><br />
40B</p></td>
<td><p><a href="../Page/Џ.md" title="wikilink">Џ</a><br />
40F</p></td>
</tr>
<tr class="odd">
<td><p>9.</p></td>
<td><p><a href="../Page/ђ.md" title="wikilink">ђ</a><br />
452</p></td>
<td><p>‘<br />
2018</p></td>
<td><p>’<br />
2019</p></td>
<td><p>“<br />
201C</p></td>
<td><p>”<br />
201D</p></td>
<td><p>·<br />
2022</p></td>
<td><p>–<br />
2013</p></td>
<td><p>—<br />
2014</p></td>
<td><p>£<br />
A3</p></td>
<td><p>·<br />
B7</p></td>
<td><p><a href="../Page/љ.md" title="wikilink">љ</a><br />
459</p></td>
<td><p>›<br />
203A</p></td>
<td><p><a href="../Page/њ.md" title="wikilink">њ</a><br />
45A</p></td>
<td><p><a href="../Page/ќ.md" title="wikilink">ќ</a><br />
45C</p></td>
<td><p><a href="../Page/ћ.md" title="wikilink">ћ</a><br />
45B</p></td>
<td><p><a href="../Page/џ.md" title="wikilink">џ</a><br />
45F</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p> <br />
A0</p></td>
<td><p><a href="../Page/ѵ.md" title="wikilink">ѵ</a><br />
475</p></td>
<td><p><a href="../Page/ѣ.md" title="wikilink">ѣ</a><br />
463</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p><a href="../Page/є.md" title="wikilink">є</a><br />
454</p></td>
<td><p><a href="../Page/ѕ.md" title="wikilink">ѕ</a><br />
455</p></td>
<td><p><a href="../Page/і.md" title="wikilink">і</a><br />
456</p></td>
<td><p><a href="../Page/ї.md" title="wikilink">ї</a><br />
457</p></td>
<td><p><a href="../Page/ј.md" title="wikilink">ј</a><br />
458</p></td>
<td><p>®<br />
AE</p></td>
<td><p>™<br />
2122</p></td>
<td><p>«<br />
AB</p></td>
<td><p><a href="../Page/ѳ.md" title="wikilink">ѳ</a><br />
473</p></td>
<td><p><a href="../Page/ґ.md" title="wikilink">ґ</a><br />
491</p></td>
<td><p><a href="../Page/ў.md" title="wikilink">ў</a><br />
45E</p></td>
<td><p>´<br />
B4</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>°<br />
B0</p></td>
<td><p><a href="../Page/Ѵ.md" title="wikilink">Ѵ</a><br />
474</p></td>
<td><p><a href="../Page/Ѣ.md" title="wikilink">Ѣ</a><br />
462</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p><a href="../Page/Є.md" title="wikilink">Є</a><br />
404</p></td>
<td><p><a href="../Page/Ѕ.md" title="wikilink">Ѕ</a><br />
405</p></td>
<td><p><a href="../Page/І.md" title="wikilink">І</a><br />
406</p></td>
<td><p><a href="../Page/Ї.md" title="wikilink">Ї</a><br />
407</p></td>
<td><p><a href="../Page/Ј.md" title="wikilink">Ј</a><br />
408</p></td>
<td><p>№<br />
2116</p></td>
<td><p>¢<br />
A2</p></td>
<td><p>»<br />
BB</p></td>
<td><p><a href="../Page/Ѳ.md" title="wikilink">Ѳ</a><br />
472</p></td>
<td><p><a href="../Page/Ґ.md" title="wikilink">Ґ</a><br />
490</p></td>
<td><p><a href="../Page/Ў.md" title="wikilink">Ў</a><br />
40E</p></td>
<td><p>©<br />
A9</p></td>
</tr>
</tbody>
</table>

## ISO-IR-111, koi8-e 编码

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p> <br />
A0</p></td>
<td><p><a href="../Page/ђ.md" title="wikilink">ђ</a><br />
452</p></td>
<td><p><a href="../Page/ѓ.md" title="wikilink">ѓ</a><br />
453</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p><a href="../Page/є.md" title="wikilink">є</a><br />
454</p></td>
<td><p><a href="../Page/ѕ.md" title="wikilink">ѕ</a><br />
455</p></td>
<td><p><a href="../Page/і.md" title="wikilink">і</a><br />
456</p></td>
<td><p><a href="../Page/ї.md" title="wikilink">ї</a><br />
457</p></td>
<td><p><a href="../Page/ј.md" title="wikilink">ј</a><br />
458</p></td>
<td><p><a href="../Page/љ.md" title="wikilink">љ</a><br />
459</p></td>
<td><p><a href="../Page/њ.md" title="wikilink">њ</a><br />
45A</p></td>
<td><p><a href="../Page/ћ.md" title="wikilink">ћ</a><br />
45B</p></td>
<td><p><a href="../Page/ќ.md" title="wikilink">ќ</a><br />
45C</p></td>
<td><p>­<br />
AD</p></td>
<td><p><a href="../Page/ў.md" title="wikilink">ў</a><br />
45E</p></td>
<td><p><a href="../Page/џ.md" title="wikilink">џ</a><br />
45F</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>№<br />
2116</p></td>
<td><p><a href="../Page/Ђ.md" title="wikilink">Ђ</a><br />
402</p></td>
<td><p><a href="../Page/Ѓ.md" title="wikilink">Ѓ</a><br />
403</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p><a href="../Page/Є.md" title="wikilink">Є</a><br />
404</p></td>
<td><p><a href="../Page/Ѕ.md" title="wikilink">Ѕ</a><br />
405</p></td>
<td><p><a href="../Page/І.md" title="wikilink">І</a><br />
406</p></td>
<td><p><a href="../Page/Ї.md" title="wikilink">Ї</a><br />
407</p></td>
<td><p><a href="../Page/Ј.md" title="wikilink">Ј</a><br />
408</p></td>
<td><p><a href="../Page/Љ.md" title="wikilink">Љ</a><br />
409</p></td>
<td><p><a href="../Page/Њ.md" title="wikilink">Њ</a><br />
40A</p></td>
<td><p><a href="../Page/Ћ.md" title="wikilink">Ћ</a><br />
40B</p></td>
<td><p><a href="../Page/Ќ.md" title="wikilink">Ќ</a><br />
40C</p></td>
<td><p>¤<br />
A4</p></td>
<td><p><a href="../Page/Ў.md" title="wikilink">Ў</a><br />
40E</p></td>
<td><p><a href="../Page/Џ.md" title="wikilink">Џ</a><br />
40F</p></td>
</tr>
</tbody>
</table>

## KOI8-Unified, koi8-f 编码

<table style="width:100%;">
<colgroup>
<col style="width: 4%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
<col style="width: 6%" />
</colgroup>
<tbody>
<tr class="odd">
<td></td>
<td><p>.0</p></td>
<td><p>.1</p></td>
<td><p>.2</p></td>
<td><p>.3</p></td>
<td><p>.4</p></td>
<td><p>.5</p></td>
<td><p>.6</p></td>
<td><p>.7</p></td>
<td><p>.8</p></td>
<td><p>.9</p></td>
<td><p>.A</p></td>
<td><p>.B</p></td>
<td><p>.C</p></td>
<td><p>.D</p></td>
<td><p>.E</p></td>
<td><p>.F</p></td>
</tr>
<tr class="even">
<td><p>8.</p></td>
<td><p>─<br />
2500</p></td>
<td><p>│<br />
2502</p></td>
<td><p>┌<br />
250C</p></td>
<td><p>┐<br />
2510</p></td>
<td><p>└<br />
2514</p></td>
<td><p>┘<br />
2518</p></td>
<td><p>├<br />
251C</p></td>
<td><p>┤<br />
2524</p></td>
<td><p>┬<br />
252C</p></td>
<td><p>┴<br />
2534</p></td>
<td><p>┼<br />
253C</p></td>
<td><p>▀<br />
2580</p></td>
<td><p>▄<br />
2584</p></td>
<td><p>█<br />
2588</p></td>
<td><p>▌<br />
258C</p></td>
<td><p>▐<br />
2590</p></td>
</tr>
<tr class="odd">
<td><p>9.</p></td>
<td><p>░<br />
2591</p></td>
<td><p>‘<br />
2018</p></td>
<td><p>’<br />
2019</p></td>
<td><p>“<br />
201C</p></td>
<td><p>”<br />
201D</p></td>
<td><p>·<br />
2022</p></td>
<td><p>–<br />
2013</p></td>
<td><p>—<br />
2014</p></td>
<td><p>©<br />
A9</p></td>
<td><p>™<br />
2122</p></td>
<td><p> <br />
A0</p></td>
<td><p>»<br />
BB</p></td>
<td><p>®<br />
AE</p></td>
<td><p>«<br />
AB</p></td>
<td><p>·<br />
B7</p></td>
<td><p>¤<br />
A4</p></td>
</tr>
<tr class="even">
<td><p>A.</p></td>
<td><p> <br />
A0</p></td>
<td><p><a href="../Page/ђ.md" title="wikilink">ђ</a><br />
452</p></td>
<td><p><a href="../Page/ѓ.md" title="wikilink">ѓ</a><br />
453</p></td>
<td><p><a href="../Page/ё.md" title="wikilink">ё</a><br />
451</p></td>
<td><p><a href="../Page/є.md" title="wikilink">є</a><br />
454</p></td>
<td><p><a href="../Page/ѕ.md" title="wikilink">ѕ</a><br />
455</p></td>
<td><p><a href="../Page/і.md" title="wikilink">і</a><br />
456</p></td>
<td><p><a href="../Page/ї.md" title="wikilink">ї</a><br />
457</p></td>
<td><p><a href="../Page/ј.md" title="wikilink">ј</a><br />
458</p></td>
<td><p><a href="../Page/љ.md" title="wikilink">љ</a><br />
459</p></td>
<td><p><a href="../Page/њ.md" title="wikilink">њ</a><br />
45A</p></td>
<td><p><a href="../Page/ћ.md" title="wikilink">ћ</a><br />
45B</p></td>
<td><p><a href="../Page/ќ.md" title="wikilink">ќ</a><br />
45C</p></td>
<td><p><a href="../Page/ґ.md" title="wikilink">ґ</a><br />
491</p></td>
<td><p><a href="../Page/ў.md" title="wikilink">ў</a><br />
45E</p></td>
<td><p><a href="../Page/џ.md" title="wikilink">џ</a><br />
45F</p></td>
</tr>
<tr class="odd">
<td><p>B.</p></td>
<td><p>№<br />
2116</p></td>
<td><p><a href="../Page/Ђ.md" title="wikilink">Ђ</a><br />
402</p></td>
<td><p><a href="../Page/Ѓ.md" title="wikilink">Ѓ</a><br />
403</p></td>
<td><p><a href="../Page/Ё.md" title="wikilink">Ё</a><br />
401</p></td>
<td><p><a href="../Page/Є.md" title="wikilink">Є</a><br />
404</p></td>
<td><p><a href="../Page/Ѕ.md" title="wikilink">Ѕ</a><br />
405</p></td>
<td><p><a href="../Page/І.md" title="wikilink">І</a><br />
406</p></td>
<td><p><a href="../Page/Ї.md" title="wikilink">Ї</a><br />
407</p></td>
<td><p><a href="../Page/Ј.md" title="wikilink">Ј</a><br />
408</p></td>
<td><p><a href="../Page/Љ.md" title="wikilink">Љ</a><br />
409</p></td>
<td><p><a href="../Page/Њ.md" title="wikilink">Њ</a><br />
40A</p></td>
<td><p><a href="../Page/Ћ.md" title="wikilink">Ћ</a><br />
40B</p></td>
<td><p><a href="../Page/Ќ.md" title="wikilink">Ќ</a><br />
40C</p></td>
<td><p><a href="../Page/Ґ.md" title="wikilink">Ґ</a><br />
490</p></td>
<td><p><a href="../Page/Ў.md" title="wikilink">Ў</a><br />
40E</p></td>
<td><p><a href="../Page/Џ.md" title="wikilink">Џ</a><br />
40F</p></td>
</tr>
</tbody>
</table>

## 参看

  - [西里尔字母](../Page/西里尔字母.md "wikilink")

## 外部链接

  - RFC 1489 *KOI8-R*
  - RFC 2319 *KOI8-U*
  - [KOI8-U Working
    Group](https://web.archive.org/web/20050206230944/http://www.net.ua/KOI8-U/)
  - [KOI8-U - Ukrainian Character
    Set](http://cad.ntu-kpi.kiev.ua/multiling/koi8-u/index.html)
  - [KOI8-RU - Ukrainian Net Character
    Set](http://cad.ntu-kpi.kiev.ua/multiling/koi8-ru/index.html)
  - [The Home of KOI8-R](http://koi8.pp.ru/main.html)
  - [The Cyrillic Character
    Soup](http://czyborra.com/charsets/cyrillic.html)

[Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink")
[Category:西里尔字母](https://zh.wikipedia.org/wiki/Category:西里尔字母 "wikilink")