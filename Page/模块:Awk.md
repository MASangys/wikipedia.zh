> 本文内容由[模块:Awk](https://zh.wikipedia.org/wiki/模块:Awk)转换而来。


local p = {}

function p.help( frame )

`   return "Usage: awk [POSIX or GNU style options] -f progfile [--] file ...`
`Usage: awk [POSIX or GNU style options] [--] 'program' file ...`
`POSIX options: GNU long options:`
` -f progfile --file=progfile`
` -F fs --field-separator=fs`
` -v var=val --assign=var=val`
` -m[fr] val`
` -O --optimize`
` -W compat --compat`
` -W copyleft --copyleft`
` -W copyright --copyright`
` -W dump-variables[=file] --dump-variables[=file]`
` -W exec=file --exec=file`
` -W gen-po --gen-po`
` -W help --help`
` -W lint[=fatal] --lint[=fatal]`
` -W lint-old --lint-old`
` -W non-decimal-data --non-decimal-data`
` -W profile[=file] --profile[=file]`
` -W posix --posix`
` -W re-interval --re-interval`
` -W source=program-text --source=program-text`
` -W traditional --traditional`
` -W usage --usage`
` -W use-lc-numeric --use-lc-numeric`
` -W version --version`

``To report bugs, see node `Bugs' in `gawk.info', which is``
``section `Reporting Problems and Bugs' in the printed version.``

`gawk is a pattern scanning and processing language.`
`By default it reads standard input and writes standard output.`

`Examples:`
` gawk '{ sum += $1 }; END { print sum }' file`
` gawk -F: '{ print $1 }' /etc/passwd"`

end

return p