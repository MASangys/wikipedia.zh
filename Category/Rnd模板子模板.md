The following is a list of the \[ subtemplates\] of . This list excludes the main template and its .

## Code

The main page takes two parameters: a number & the precision to which it is to be rounded.

  -
<!-- end list -->

    <includeonly>{{#iferror:{{#expr:{{{2}}}}}|{{rndnear|{{{1}}}|1E{{#expr:{{order of magnitude|{{{1}}}}}-1}}}}|{{formatnum:
       {{#ifexpr:({{{1|0}}})round({{{2|0}}})>=0.0001
         |{{#ifexpr:({{{1}}})round({{{2}}})<1E9
            |{{#ifexpr:<!--
    -->{{#expr:(({{{1}}})round({{{2}}})/1E5round0)E5}}={{#expr:({{{1}}})round({{{2}}})}}
               |{{#ifexpr:{{{2}}}<=0
                  |{{#expr:({{{1}}})round({{{2}}})E-5}}00000
                  |{{#expr:({{{1}}})round({{{2}}})E-5}}0000{{rnd/-|0|{{{2}}}}}
                }}
               |{{#ifexpr:{{{2}}}<=0
                  |{{#expr:({{{1}}})round({{{2}}})}}
                  |{{rnd/-|{{#expr:({{{1}}})round({{{2}}})}}|{{{2}}}}}
                }}
             }}
            |{{rnd/e+
               |{{#expr:({{{1}}})round({{{2}}})}}
               |{{{2}}}
               |{{Order of magnitude|{{#expr:({{{1}}})round({{{2}}})}}}}}}
          }}
         |{{#ifexpr:({{{1|0}}})round({{{2|0}}})<=-0.0001
            |{{#ifexpr:({{{1}}})round({{{2}}})>-1E9
               |{{#ifexpr:<!--
    -->{{#expr:(({{{1}}})round({{{2}}})/1E5round0)E5}}={{#expr:({{{1}}})round({{{2}}})}}
                  |{{#ifexpr:{{{2}}}<=0
                     |−{{#expr:-({{{1}}})round({{{2}}})E-5}}00000
                     |−{{#expr:-({{{1}}})round({{{2}}})E-5}}0000{{rnd/-|0|{{{2}}}}}
                   }}
                  |{{#ifexpr:{{{2}}}<=0
                     |−{{#expr:-({{{1}}})round({{{2}}})}}
                     |−{{rnd/-|-{{#expr:({{{1}}})round({{{2}}})}}|{{{2}}}}}
                   }}
                }}
               |−{{rnd/e+
                  |-{{#expr:({{{1}}})round({{{2}}})}}
                  |{{{2}}}
                  |{{Order of magnitude|{{#expr:({{{1}}})round({{{2}}})}}}}}}
             }}
            |{{#ifexpr:({{{1|0}}})round({{{2|0}}})=0
               |{{#ifexpr:{{{2|0}}}<=0
                  |0
                  |{{rnd/-|0|{{{2}}}}}
                }}
               |{{#ifexpr:({{{1}}})round({{{2}}})>0
                  |{{rnd/e−
                     |{{#expr:({{{1}}})round({{{2}}})}}
                     |{{{2}}}
                     |{{Order of magnitude|({{{1}}})round({{{2}}})}}
                   }}
                  |−{{rnd/e−
                     |-{{#expr:({{{1}}})round({{{2}}})}}
                     |{{{2}}}
                     |{{Order of magnitude|{{#expr:({{{1}}})round({{{2}}})}}}}
                   }}
                }}
             }}
          }}
       }}
    }}}}

  -
<!-- end list -->

    {{rnd/-|{{{1}}}E-{{{3}}}|{{#expr:{{{2}}}+{{{3}}}}}}}<span style="margin-left:0.2em">×<span style="margin-left:0.1em">10</span></span><sup>{{{3}}}</sup>

  -
<!-- end list -->

    {{rnd/-|{{{1}}}E-{{{3}}}|{{#expr:{{{2}}}+{{{3}}}}}}}<span style="margin-left:0.2em">×<span style="margin-left:0.1em">10</span></span><sup>−{{#expr:-{{{3}}}}}</sup>

  -
<!-- end list -->

    {{#expr:{{{1}}}}}<!--
    -->{{#ifexpr: {{{2}}}>0  and {{{1}}}={{{1}}}round0 |.0}}<!--
    -->{{#ifexpr: {{{2}}}>1  and {{{1}}}={{{1}}}round1  |0}}<!--
    -->{{#ifexpr: {{{2}}}>2  and {{{1}}}={{{1}}}round2  |0}}<!--
    -->{{#ifexpr: {{{2}}}>3  and {{{1}}}={{{1}}}round3  |0}}<!--
    -->{{#ifexpr: {{{2}}}>4  and {{{1}}}={{{1}}}round4  |0}}<!--
    -->{{#ifexpr: {{{2}}}>5  and {{{1}}}={{{1}}}round5  |0}}<!--
    -->{{#ifexpr: {{{2}}}>6  and {{{1}}}={{{1}}}round6  |0}}<!--
    -->{{#ifexpr: {{{2}}}>7  and {{{1}}}={{{1}}}round7  |0}}<!--
    -->{{#ifexpr: {{{2}}}>8  and {{{1}}}={{{1}}}round8  |0}}<!--
    -->{{#ifexpr: {{{2}}}>9  and {{{1}}}={{{1}}}round9  |0}}<!--
    -->{{#ifexpr: {{{2}}}>10 and {{{1}}}={{{1}}}round10 |0}}<!--
    -->{{#ifexpr: {{{2}}}>11 and {{{1}}}={{{1}}}round11 |0}}<!--
    -->{{#ifexpr: {{{2}}}>12 and {{{1}}}={{{1}}}round12 |0}}<!--
    -->

## Testing

  -
  -
  -
## See also

  -
  -
  -
[Category:數學函數模板子模板](https://zh.wikipedia.org/wiki/Category:數學函數模板子模板 "wikilink")