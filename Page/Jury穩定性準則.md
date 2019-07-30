**Jury穩定性準則**（Jury stability criterion）是在[信号处理及](https://zh.wikipedia.org/wiki/信号处理 "wikilink")[控制理论](../Page/控制理论.md "wikilink")中，判斷線性離散系統穩定性的方式，是利用分析[特徵多項式](../Page/特徵多項式.md "wikilink")來進行分析。Jury穩定性準則是[劳斯–赫尔维茨稳定性判据的離散時間版本](https://zh.wikipedia.org/wiki/劳斯–赫尔维茨稳定性判据 "wikilink")。Jury[稳定性判据要求系統的極點都要位在以原點為圓心的](https://zh.wikipedia.org/wiki/稳定性判据 "wikilink")[單位圓內](https://zh.wikipedia.org/wiki/單位圓 "wikilink")，劳斯–赫尔维茨稳定性判据要求系統的極點在複數平面的左半邊。Jury穩定性準則得名自伊拉克裔美藉工程師。

## 方法

系統的特徵多項式如下

  -
    \(f(z)=a_n+a_{n-1}z^1+a_{n-2}z^2+\cdots+a_1z^{n-1} + a_0z^n\)

用以下的方式來建構表格\[1\]：

| row  | z<sup>n</sup>   | z<sup>n-1</sup> | z<sup>n-2</sup> | z<sup>....</sup> | z<sup>1</sup>   | z<sup>0</sup> |
| ---- | --------------- | --------------- | --------------- | ---------------- | --------------- | ------------- |
| 1    | a<sub>0</sub>   | a<sub>1</sub>   | a<sub>2</sub>   | ...              | a<sub>n-1</sub> | a<sub>n</sub> |
| 2    | a<sub>n</sub>   | a<sub>n-1</sub> | a<sub>n-2</sub> | ...              | a<sub>1</sub>   | a<sub>0</sub> |
| 3    | b<sub>0</sub>   | b<sub>1</sub>   | ...             | b<sub>n-2</sub>  | b<sub>n-1</sub> |               |
| 4    | b<sub>n-1</sub> | b<sub>n-2</sub> | ...             | b<sub>1</sub>    | b<sub>0</sub>   |               |
| 5    | c<sub>0</sub>   | c<sub>1</sub>   | ...             | c<sub>n-2</sub>  |                 |               |
| 6    | c<sub>n-2</sub> | c<sub>n-3</sub> | ...             | c<sub>0</sub>    |                 |               |
| ...  | ...             | ...             | ...             | ...              | ...             | ...           |
| 2n-5 | p<sub>3</sub>   | p<sub>2</sub>   | p<sub>1</sub>   | p0               |                 |               |
| 2n-4 | p<sub>0</sub>   | p<sub>1</sub>   | p<sub>2</sub>   | p3               |                 |               |
| 2n-3 | q<sub>2</sub>   | q<sub>1</sub>   | q<sub>0</sub>   |                  |                 |               |

因此，第一行是多項式的係數，從常數項次而高次項次排列，第二行則是第一行的反序。

第三行是將第一行減去第二行乘以\(\frac{a_n}{a_0}\)，而第四行是第三行的反序（並且維持最後一個元素為零）。

  -
    <math>

\\begin{align} a_0 \\;\\; & a_1 \\;\\; & \\dots \\;\\; & a_{n-1} \\;\\;& a_n\\\\ a_n \\;\\; & a_{n-1} \\;\\; & \\dots \\;\\; & a_1 \\;\\;& a_0\\\\ \\left(a_0-a_n \\frac{a_n}{a_0}\\right)\\;\\;& \\left(a_{1} - a_{n-1} \\frac{a_n}{a_0}\\right) \\;\\; &\\dots\\;\\; & \\left(a_{n-1} - a_{1} \\frac{a_n}{a_0}\\right) \\;\\;& 0 \\\\ \\left(a_{n-1} - a_{1} \\frac{a_n}{a_0}\\right)\\;\\; & \\dots \\;\\;& \\left(a_{1} - a_{n-1} \\frac{a_n}{a_0}\\right) \\;\\;& \\left(a_0-a_n \\frac{a_n}{a_0}\\right)\\;\\;&0\\\\ \\end{align} </math>

表格繼續往下延伸，直到有一行只有一個非零元素為止。

針對頭兩行相減的係數是\(\frac{a_n}{a_0}\)，針對第三行及第四行相減的係數就變成\(\frac{b_{n-1}}{b_{0}}\)，因此所得的多項式會少一項。

## 穩定性測試

若\({a_0}>0\)，而\({a_0}\),\({b_0}\),\({c_0}\)...都是正值，表示系統的根都在單位圓內，系統穩定。只要上述有任何一個小於零，表示系統至少有一個根都在單位圓外，系統不穩定。

若Jury穩定性準則發現\({a_0}\),\({b_0}\),\({c_0}\)...中有一個為負值，即可結束測試，因為至少有一個根都在單位圓外，系統不穩定。

## 程式實現

此方式用電腦的動態陣列很容易實現。也可以確認系統所有的根（實根或是複數根）都在單位圓內。向量v是原多項式的係數，從最高項次到常數項。

``` cpp
        /* vvd is the jury array */
        vvd.push_back(v); // Store the first row
        reverse(v.begin(),v.end());
        vvd.push_back(v); // Store the second row

        for(i=2;;i+=2)
        {
            v.clear();
            double mult=vvd[i-2][vvd[i-2].size()-1]/vvd[i-2][0]; // This is an/a0 as mentioned in the article.

            for( j=0;j<vvd[i-2].size()-1;j++) // Take the last 2 rows and compute the next row
                   v.push_back(vvd[i-2][j] - vvd[i-1][j]*mult);

            vvd.push_back(v);
            reverse(v.begin(),v.end()); // reverse the next row
            vvd.push_back(v);
            if(v.size()==1) break;
         }

         // Check is done using
         for(i=0;i<vvd.size();i+=2)
         {
              if(vvd[i][0]<=0) break;
         }

         if(i==vvd.size())
              "All roots lie inside unit disc "
         else
              "no"
```

## 相關條目

  - [林纳德–奇帕特判据](../Page/林纳德–奇帕特判据.md "wikilink")：由[劳斯–赫尔维茨稳定性判据產生的另一個連續系統稳定性判据](https://zh.wikipedia.org/wiki/劳斯–赫尔维茨稳定性判据 "wikilink")。

## 參考資料

若需要更多細節，可以參考以下連結：

  - [A note on the reduced Schur–Cohn criterion](http://libra.msra.cn/Publication/1578446/a-note-on-the-reduced-schur-cohn-criterion)
  - [Wikibooks on Control Systems - Jury's Test](https://en.wikibooks.org/wiki/Control_Systems/Jurys_Test)

進階參考資料：

  -
  -
  - <http://www.laas.fr/~henrion/Papers/lyap.ps.gz>

有關實現的資料：

  - <http://www.ticalc.org/archives/files/fileinfo/426/42696.html> (TI-83+/84+ graphing calculators)

[Category:稳定性理论](https://zh.wikipedia.org/wiki/Category:稳定性理论 "wikilink")

1.  Discrete-time control systems (2nd ed.), pg. 185. Prentice-Hall, Inc. Upper Saddle River, NJ, USA ©1995