**JAPH**是**Just another Perl hacker**（中文：**另一个Perl黑客**）的缩写，指一个可以打印出“Just another Perl hacker,”的[Perl](../Page/Perl.md "wikilink")[程序](../Page/计算机程序.md "wikilink")。（结尾的逗号有时候也可以忽略。）

JAPH程序通常会使用一种极端[混淆的编写方式](../Page/代码混淆.md "wikilink")，在这一点上与[混乱C语言有着相同的精神](../Page/国际C语言混乱代码大赛.md "wikilink")。最早的JAPH是由发表在comp.lang.perl[新闻组](../Page/新闻组.md "wikilink")，他将一段可以打印出JAPH的Perl[代码](../Page/代码.md "wikilink")放在自己的[签名](../Page/签名.md "wikilink")档里。\[1\]此后，编写JAPH成为Perl社区的一种[网络文化](../Page/网络文化.md "wikilink")。\[2\]

## 例子

一段完全没有混淆的JAPH代码：

``` perl
print "Just another Perl hacker,";
```

一段嵌入JAPH的晦涩代码：

``` perl
$_='987;s/^(\d+)/$1-1/e;$1?eval:print"Just another Perl hacker,"';eval;
```

表面上看和打印JAPH完全没关系的代码：

``` perl
$_ = "wftedskaebjgdpjgidbsmnjgc";
tr/a-z/oh, turtleneck Phrase Jar!/; print;
```

一段不含任何标点，只使用了Perl[关键字的代码](https://zh.wikipedia.org/wiki/关键字 "wikilink")：\[3\]

``` perl
not exp log srand xor s qq qx xor
s x x length uc ord and print chr
ord for qw q join use sub tied qx
xor eval xor print qq q q xor int
eval lc q m cos and print chr ord
for qw y abs ne open tied hex exp
ref y m xor scalar srand print qq
q q xor int eval lc qq y sqrt cos
and print chr ord for qw x printf
each return local x y or print qq
s s and eval q s undef or oct xor
time xor ref print chr int ord lc
foreach qw y hex alarm chdir kill
exec return y s gt sin sort split
```

一段只含有标点，不含任何数字和字母的代码（由[Eric Roode](https://metacpan.org/author/ROODE)编写，只能在[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[Unix-like系统上运行](https://zh.wikipedia.org/wiki/Unix-like "wikilink")）：

``` perl
`$=`;$_=\%!;($_)=/(.)/;$==++$|;($.,$/,$,,$\,$",$;,$^,$#,$~,$*,$:,@%)=(
$!=~/(.)(.).(.)(.)(.)(.)..(.)(.)(.)..(.)......(.)/,$"),$=++;$.++;$.++;
$_++;$_++;($_,$\,$,)=($~.$"."$;$/$%[$?]$_$\$,$:$%[$?]",$"&$~,$#,);$,++
;$,++;$^|=$";`$_$\$,$/$:$;$~$*$%[$?]$.$~$*${#}$%[$?]$;$\$"$^$~$*.>&$=`
```

一个更短的纯标点代码，基于[CPAN上的](https://zh.wikipedia.org/wiki/CPAN "wikilink")\[<https://metacpan.org/module/Acme>::EyeDrops EyeDrops\]模块生成：

``` perl
''=~('(?{'.('-)@.)@_*([]@!@/)(@)@-@),@(@@+@)'
^'][)@]`}`]()`@.@]@%[`}%[@`@!#@%[').',"})')
```

一段形状像[单峰骆驼](https://zh.wikipedia.org/wiki/单峰骆驼 "wikilink")（Perl的标志）的[ASCII艺术](../Page/ASCII艺术.md "wikilink")代码，运行后也会输出JAPH和骆驼组成的动态的ASCII字符画：\[4\]

``` perl
                                                       #
                                                   sub j(\$){($
                     P,$V)=                      @_;while($$P=~s:^
                 ([()])::x){                    $V+=('('eq$1)?-32:31
           }$V+=ord(  substr(                 $$P,0,1,""))-74} sub a{
          my($I,$K,$  J,$L)=@_               ;$I=int($I*$M/$Z);$K=int(
         $K*$M/$Z);$J=int($J*$M             /$Z);$L=int($L*$M/$Z); $G=$
         J-$I;$F=$L-$K;$E=(abs($          G)>=abs($F))?$G:$F;($E<0) and($
          I,$K)=($J,$L);$E||=.01       ;for($i=0;$i<=abs$E;$i++ ){ $D->{$K
                  +int($i*$F/$E)      }->{$I+int($i*$G/$E)}=1}}sub p{$D={};$
                 Z=$z||.01;map{    $H=$_;$I=$N=j$H;$K=$O=j$H;while($H){$q=ord
                substr($H,0,1,"" );if(42==$q){$J=j$H;$L=j$H}else{$q-=43;$L =$q
              %9;$J=($q-$L)/9;$L=$q-9*$J-4;$J-=4}$J+=$I;$L+=$K;a($I,$K,$J,$ L);
              ($I,$K)=($J,$L)}a($I,$K,$N,$O)}@_;my$T;map{$y=$_;map{ $T.=$D->{$y}
              ->{$_}?$\:' '}(-59..59);$T.="\n"}(-23..23);print"\e[H$T"}$w= eval{
              require Win32::Console::ANSI};$b=$w?'1;7;':"";($j,$u,$s,$t,$a,$n,$o
              ,$h,$c,$k,$p,$e,$r,$l,$C)=split/}/,'Tw*JSK8IAg*PJ[*J@wR}*JR]*QJ[*J'.
               'BA*JQK8I*JC}KUz]BAIJT]*QJ[R?-R[e]\RI'.'}Tn*JQ]wRAI*JDnR8QAU}wT8KT'.
               ']n*JEI*EJR*QJ]*JR*DJ@IQ[}*JSe*JD[n]*JPe*'.'JBI/KI}T8@?PcdnfgVCBRcP'.
                '?ABKV]]}*JWe*JD[n]*JPe*JC?8B*JE};Vq*OJQ/IP['.'wQ}*JWeOe{n*EERk8;'.
                  'J*JC}/U*OJd[OI@*BJ*JXn*J>w]U}CWq*OJc8KJ?O[e]U/T*QJP?}*JSe*JCnTe'.
                   'QIAKJR}*JV]wRAI*J?}T]*RJcJI[\]3;U]Uq*PM[wV]W]WCT*DM*SJ'.  'ZP[Z'.
                      'PZa[\]UKVgogK9K*QJ[\]n[RI@*EH@IddR[Q[]T]T]T3o[dk*JE'.  '[Z\U'.
                        '{T]*JPKTKK]*OJ[QIO[PIQIO[[gUKU\k*JE+J+J5R5AI*EJ00'.  'BCB*'.
                             'DMKKJIR[Q+*EJ0*EK';sub h{$\ = qw(% & @ x)[int    rand
                              4];map{printf  "\e[$b;%dm",int(rand 6)+101-60*   ($w
                               ||0);system(  "cls")if$w ;($A,$S)=    ($_[1],   $
                                _[0]);($M,   @,)= split  '}';for(     $z=256
                                ;$z>0; $z   -=$S){$S*=   $A;p @,}      sleep$_
                                [2];while   ($_[3]&&($    z+=$ S)       <=256){
                                p@,}}("".   "32}7D$j"     ."}AG".       "$u}OG"
                                ."$s}WG"    ."$t",""      ."24}("        ."IJ$a"
                                ."}1G$n"    ."}CO$o"     ."}GG$t"        ."}QC"
                                 ."$h}"      ."^G$e"    ."})IG"          ."$r",
                                 "32}?"       ."H$p}FG$e}QG$r".          "}ZC"
                                 ."$l",          "28}(LC" .""            ."".
                                 "$h}:"           ."J$a}EG".             "$c"
                                 ."}M"             ."C$k}ZG".            "$e"
                                 ."}"             ."dG$r","18"          ."}("
                                ."D;"            ."$C"  )}{h(16         ,1,1,0
                               );h(8,          .98,0,0   );h(16         ,1,1,1)
                               ;h(8.0         ,0.98,0,     1);         redo}###
                             #written                                 060204 by
                           #liverpole                                  @@@@@@@
                        #@@@@@@@@@@@
```

## 参见

  - [国际C语言混乱代码大赛](../Page/国际C语言混乱代码大赛.md "wikilink")

## 参考资料

<references/>

## 外部链接

  - [Cultured Perl: The Elegance of JAPH](https://web.archive.org/web/20041209175230/http://www-106.ibm.com/developerworks/linux/library/l-japh.html)
  - [JAPH合集](http://www.cpan.org/misc/japh), 一个在[CPAN上整理的JAPH合集](https://zh.wikipedia.org/wiki/CPAN "wikilink")。
  - [Obfuscated code](http://perlmonks.org/?node=Obfuscated%20Code), [PerlMonks](../Page/PerlMonks.md "wikilink")中分享混乱代码的节点，其中有很多JAPH。

[Category:Perl](https://zh.wikipedia.org/wiki/Category:Perl "wikilink")

1.  Randal L. Schwartz in [Usenet](../Page/Usenet.md "wikilink") message M1HFPVH2JQ.FSF@HALFDOME.HOLDIT.COM explaining the origin of JAPH. Available through [Google.com](http://groups.google.com/group/comp.lang.perl.misc/msg/ecc405feeefc120c)
2.  [The Lighter Side of Perl Culture (Part II): JAPH](http://www.perlmonks.org/?node_id=412464)
3.  Originally posted at [perlmonks.org](http://www.perlmonks.org/?node_id=290607) by user blokhead
4.  Originally posted at [perlmonks.org](http://www.perlmonks.org/?node_id=528042) by user liverpole.