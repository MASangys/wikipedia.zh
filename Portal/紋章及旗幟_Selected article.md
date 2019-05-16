{{\#switch: |new={{\#ifexpr: ({{\#time: Y}} \<= 2012 and {{\#time: d}}
\< 29 and {{\#time: m}} \<= 1)

` |{{#switch: {{#time: m}}`
`   |1=`
` }}`
` |{{#switch:{{#expr:({{#time:s|``}}) mod 3}}`
`   |0=`
`   |1=`
`   |2=`
`  }} }}  `

|flag= |hera={{\#switch:{{\#expr:({{\#time:s|}}+1) mod 3}}

` |0=`
` |1=`
` |2=`
` }}`

|={{\#switch:{{\#expr:({{\#time:s|}}+1) mod 2}}

` |0=`
` |1={{#switch:{{#expr:({{#time:s|``}}+2) mod 3}}`
`   |0=`
`   |1=`
`   |2=`

}} }} }}