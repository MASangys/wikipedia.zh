**MetaPost**是一个[程序语言和它的](https://zh.wikipedia.org/wiki/程序语言 "wikilink")[编译器的名字](https://zh.wikipedia.org/wiki/编译器 "wikilink")，衍生于[高德纳](../Page/高德纳.md "wikilink")的[Metafont](https://zh.wikipedia.org/wiki/Metafont "wikilink")。MetaPost擅长通过数学描述制作矢量图，生成的图片为[PostScript](../Page/PostScript.md "wikilink")格式。它的语法来自[Metafont](https://zh.wikipedia.org/wiki/Metafont "wikilink")。

## 实例

这个文件`example.mp`通过MetaPost的编译器编译（在[Linux](../Page/Linux.md "wikilink")系统中使用`mpost`命令）之后产生了3个[EPS文件](https://zh.wikipedia.org/wiki/EPS文件 "wikilink")： `example.1`, `example.2`, `example.3`。这三个文件就是右边的三张图 [Metapost_ex.svg](https://zh.wikipedia.org/wiki/File:Metapost_ex.svg "fig:Metapost_ex.svg")

``` octave
 transform pagecoords;
 pagecoords:=identity scaled 10mm shifted (100mm,150mm);
 beginfig (1)
     fill ((0,0)--(2,0)--(2,1)--(1,1)--(1,2)--(0,2)--cycle)
         transformed pagecoords withcolor green;
     draw ((2,0)..(2,1)..(1,1)..(1,2)..(0,2))
         transformed pagecoords;
     drawarrow ((0,0)--(2,2)) transformed pagecoords;
 endfig;
 beginfig (2)
     draw (for i=0 up to 7: dir (135i)-- endfor cycle)
         transformed pagecoords;
 endfig;
 pagecoords:=identity scaled 15mm shifted (100mm,150mm);
 beginfig (3);
     % declare paths to be used
     path p[],p[]t;
     % set up points by defining relationships
     z1=(0,0);   z2=z1+2up;
     z3=z1+whatever*dir (60)=z2+whatever*dir (-50);
     z4=z3+(-1.5,-.5);
     z5=z1+dir (135);
     z0=whatever[z1,z2]=whatever[z3,z4];
     % set up paths
     p0=fullcircle yscaled .5 rotated 45 shifted z0 ;
     p1=z2—z4..z0..z3---z1;
     p2=p1 cutbefore p0 cutafter p0;
     p3=p0 cutbefore p1 cutafter p1;
     p4=p2—p3—cycle;
     % define transformed versions of paths and points
     for i=0 up to 4: p[i]t=p[i] transformed pagecoords; endfor
     for i=0 up to 5: z[i]t=z[i] transformed pagecoords; endfor
     % do some drawing
     fill p4t withcolor (1,1,0.2);
     draw z1t—z2t withcolor .5white;
     draw z3t—z4t withcolor .5white;
     pickup pencircle;
     draw p0t dashed withdots scaled .3;
     draw p1t dashed evenly;
     draw p2t withcolor blue;
     draw p3t withcolor red;
     label.lrt (btex $z_0$ etex, z0t);
     label.llft (btex $z_1$ etex, z1t);
     label.top (btex $z_2$ etex, z2t);
     label.rt (btex $z_3$ etex, z3t);
     label.llft (btex $z_4$ etex, z4t);
     for i=0 up to 4:
         drawdot z[i]t withpen pencircle scaled 2;
     endfor
 endfig;
 bye
```

产生的3个eps文件可以直接用在[TeX](../Page/TeX.md "wikilink")中（通过[LaTeX的](https://zh.wikipedia.org/wiki/LaTeX "wikilink")`\includegraphics`命令、[ConTeXt的](https://zh.wikipedia.org/wiki/ConTeXt "wikilink")`\externalfigure`命令、Plain TeX的`\epsfbox`命令，或者Plain pdftex中来自`supp-pdf.tex`的`\convertMPtoPDF`命令。为了看或者打印这三张图片，这些引用是必须的，因为TeX的字体([Metafont](https://zh.wikipedia.org/wiki/Metafont "wikilink"))并不包含在MetaPost产生的eps文件中。

## 参见

  - [PGF/TikZ](https://zh.wikipedia.org/wiki/PGF/TikZ "wikilink")

## 参考

  - MetaFun (modules for Metapost) by Hans Hagen, [1](http://wiki.contextgarden.net/MetaFun)
  - [Donald Knuth](https://zh.wikipedia.org/wiki/Donald_Knuth "wikilink"): *The [METAFONT](../Page/METAFONT.md "wikilink")book*, ([Computers and Typesetting](https://zh.wikipedia.org/wiki/Computers_and_Typesetting "wikilink") Volume C) [Addison-Wesley](https://zh.wikipedia.org/wiki/Addison-Wesley "wikilink") 1986. ISBN 0-201-13444-6
  - Comprehensive T<sub>E</sub>X Archive Network ([CTAN](https://zh.wikipedia.org/wiki/CTAN "wikilink")): <http://www.ctan.org/>. Repository of the T<sub>E</sub>X source and hundreds of add-ons and style files.
  - (La)TeX Navigator provides 305 simple MetaPost examples: <http://tex.loria.fr/prod-graph/zoonekynd/metapost/metapost.html>
  - Taco Hoekwater: [MetaPost developments—autumn 2006](http://www.tug.org/TUGboat/Articles/tb27-1/tb86hoekwater-metapost.pdf). *TUGboat* **27**:1 (2006).

## 外部链接

  - The TeX users group ([TUG](https://zh.wikipedia.org/wiki/TeX_Users_Group "wikilink")) <http://www.tug.org/> has a page devoted to MetaPost: <http://www.tug.org/metapost.html>
  - Active development of MetaPost continues at <https://web.archive.org/web/20070929092912/http://foundry.supelec.fr/projects/metapost/>
  - [Functional MetaPost](http://cryp.to/funcmp/) allows MetaPost to be used from the functional programming language [Haskell](https://zh.wikipedia.org/wiki/Haskell_\(programming_language\) "wikilink")
  - John D. Hobby has a homepage at <http://ect.bell-labs.com/who/hobby/index.shtml> and some other pages and publications devoted to MetaPost, though these are now a little dated
      - Historic MetaPost homepage: <https://web.archive.org/web/20081212090123/http://ect.bell-labs.com/who/hobby/MetaPost.shtml>
      - *A User's Manual for MetaPost* John D. Hobby. Available as a file mpman.ps distributed with MetaPost, or from the [Bell Labs web site](https://web.archive.org/web/20051217231314/http://cm.bell-labs.com/cm/cs/doc/92/2-21.ps.gz). Also available in [PDF format](http://www.tug.org/tutorials/mp/mpman.pdf) from [CTAN](https://zh.wikipedia.org/wiki/CTAN "wikilink").

[Category:领域特定语言](https://zh.wikipedia.org/wiki/Category:领域特定语言 "wikilink") [Category:矢量图形置标语言](https://zh.wikipedia.org/wiki/Category:矢量图形置标语言 "wikilink") [Category:TeX](https://zh.wikipedia.org/wiki/Category:TeX "wikilink") [Category:公有领域软件](https://zh.wikipedia.org/wiki/Category:公有领域软件 "wikilink")