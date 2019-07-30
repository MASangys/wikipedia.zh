local p = {} local origArgs local lib_arg = {} local error = require( 'Module:Error' ) local element_data = require( 'Module:Element/data' ) local series_name_data = {{"錒系元素", "锕系元素", "錒系金屬", "锕系金属", "actinide"},{"鹼金屬", "碱金属", "alkali metal"},{"鹼金屬（預測）", "碱金属（预测）", "alkali metal (predicted)"},{"鹼土金屬", "碱土金属", "alkaline earth metal"},{"鹼土金屬（預測）", "碱土金属（预测）", "alkaline earth metal (predicted)"},{"雙原子非金屬", "双原子非金属", "diatomic nonmetal"},{"雙原子非金屬（預測）", "双原子非金属（预测）", "diatomic nonmetal (predicted)"},{"多原子非金屬", "多原子非金属", "polyatomic nonmetal"},{"多原子非金屬（預測）", "多原子非金属（预测）", "polyatomic nonmetal (predicted)"},{"eka-超錒系元素", "eka-超锕系元素", "下超錒系元素", "eka-superactinide"},{"eka-超錒系元素（預測）", "eka-超锕系元素（预测）", "eka-superactinide (predicted)"},{"惰性氣體", "惰性气体", "稀有氣體", "稀有气体", "noble gas"},{"惰性氣體（預測）", "惰性气体（预测）", "稀有氣體（預測）", "稀有气体（预测）", "noble gas (predicted)"},{"鹵素", "卤素", "halogen"},{"鹵素（預測）", "卤素（预测）", "halogen (predicted)"},{"金屬", "金属", "metal"},{"類金屬", "类金属", "metalloid"},{"類金屬（預測）", "类金属（预测）", "metalloid (predicted)"},{"鑭系元素", "镧系元素", "鑭系金屬", "镧系金属", "lanthanide"},{"其他非金屬", "其他非金属", "非金属", "非金屬", "other non-metal"},{"其他非金屬（預測）", "其他非金属（预测）", "非金屬（預測）", "other non-metal (predicted)"},{"貧金屬", "贫金属", "主族金屬", "主族金属", "post-transition metal"},{"貧金屬（預測）", "贫金属（预测）", "主族金屬（預測）", "主族金属（预测）", "post-transition metal (predicted)"},{"超錒系元素", "超锕系元素", "superactinide"},{"超錒系元素（預測）", "超锕系元素（预测）", "superactinide (predicted)"},{"過渡金屬", "过渡金属", "过渡元素", "過渡元素", "transition metal"},{"過渡金屬（預測）", "过渡金属（预测）", "过渡元素（预测）", "過渡元素（預測）", "transition metal (predicted)"},{"超臨界原子", "離子態", "超临界原子", "离子态", "supercritical atoms", "supercritical atoms (predicted)"},{"無電子", "无电子", "no electron"},{"可能不存在", "maybe not exist"},{"s區元素", "s区元素", "s區", "s区", "s block"},{"s區元素（預測）", "s区元素（预测）", "s區（預測）", "s区（预测）", "s block (predicted)"},{"p區元素", "p区元素", "p區", "p区", "p block"},{"p區元素（預測）", "p区元素（预测）", "p區（預測）", "p区（预测）", "p block (predicted)"},{"d區元素", "d区元素", "d區", "d区", "d block"},{"d區元素（預測）", "d区元素（预测）", "d區（預測）", "d区（预测）", "d block (predicted)"},{"ds區元素", "ds区元素", "ds區", "ds区", "ds block"},{"ds區元素（預測）", "ds区元素（预测）", "ds區（預測）", "ds区（预测）", "ds block (predicted)"},{"f區元素", "f区元素", "f區", "f区", "f block"},{"f區元素（預測）", "f区元素（预测）", "f區（預測）", "f区（预测）", "f block (predicted)"},{"g區元素", "g区元素", "g區", "g区", "g block"},{"g區元素（預測）", "g区元素（预测）", "f區（預測）", "g区（预测）", "g block (predicted)"},{"h區元素", "h区元素", "h區", "h区", "h block"},{"h區元素（預測）", "h区元素（预测）", "h區（預測）", "h区（预测）", "h block (predicted)"},{"未知特性", "未知", "化學性質未知", "化学性质未知", "unknown", "unknown chemical properties"}}

function p.symbol(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._symbol(args)`

end

function p.getAtomicWeight(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._getAtomicWeight(args)`

end

function p.getName(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._getName(args)`

end

function p.getPhase(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._getPhase(args)`

end

function p.link(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._link(args)`

end

function p.check(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._check(args)`

end

function p.neutron(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._neutron(args)`

end

function p._neutron(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       return ''`
`   end`
`   if (ele1.N and ele1.N ~= '') then`
`       return ele1.N`
`   end`
`   return ''`

end

function p.compare_series(frame)

`   -- For calling from #invoke.`
`   local load_args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       load_args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       load_args = frame`
`   end`
`   args = {}`
`   for k, v in pairs( load_args ) do`
`       args[k] = v;       `
`   end`
`   arg1='' if (args[1] and args[1] ~= '') then arg1 = string.gsub(args[1] , "%s$", "") end`
`   arg2='' if (args[2] and args[2] ~= '') then arg2 = string.gsub(args[2] , "%s$", "") end`
`   return p.compareSeries(arg1, arg2)`

end

function p.compareSeries(series1, series2)

`   checked = false`
`   for v, x in ipairs(series_name_data) do`
`       for v1, x1 in ipairs(x) do`
`           if (x1 == series1) then `
`               series_left = {x[1]}`
`               checked = true`
`               break`
`           end`
`       end`
`       if checked then break end`
`   end`
`   if not checked then`
`       eleSeries = p.getSeries({series1})`
`       eleSeries = mw.text.split( table.concat(eleSeries, ',') .. ',' .. series1 , ',' ) `
`       for index, it in ipairs(eleSeries) do`
`           checked = false`
`           for v, x in ipairs(series_name_data) do`
`               for v1, x1 in ipairs(x) do`
`                   if (x1 == it) then `
`                       eleSeries[index] = x[1]`
`                       checked = true`
`                       break`
`                   end`
`               end`
`               if checked then break end`
`           end`
`       end`
`       series_left = eleSeries`
`   end`
`   `
`   checked = false`
`   for v, x in ipairs(series_name_data) do`
`       for v1, x1 in ipairs(x) do`
`           if (x1 == series2) then `
`               series_right = {x[1]}`
`               checked = true`
`               break`
`           end`
`       end`
`       if checked then break end`
`   end`
`   if not checked then`
`       eleSeries = p.getSeries({series2})`
`       eleSeries = mw.text.split( table.concat(eleSeries, ',') .. ',' .. series2 , ','  ) `
`       for index, it in ipairs(eleSeries) do`
`           checked = false`
`           for v, x in ipairs(series_name_data) do`
`               for v1, x1 in ipairs(x) do`
`                   if (x1 == it) then `
`                       eleSeries[index] = x[1]`
`                       checked = true`
`                       break`
`                   end`
`               end`
`               if checked then break end`
`           end`
`       end`
`       series_right = eleSeries`
`   end`
`   if series_left.predicted then series_left.predicted = nil end`
`   if series_right.predicted then series_right.predicted = nil end`
`   for v_left, x_left in ipairs(series_left) do`
`       for v_right, x_right in ipairs(series_right) do`
`           if mw.text.trim(x_left) == mw.text.trim(x_right) then return 'yes' end`
`       end`
`   end`
`   if series_left == series_right then return 'yes' end`
`   return ''`

end

function p.series(frame)

`   -- For calling from #invoke.`
`   local load_args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       load_args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   args = {}`
`   for k, v in pairs( load_args ) do`
`       args[k] = v;       `
`   end`
`   `
`   eleSeries = p.getSeries(args)`
`   if (eleSeries.predicted) then return eleSeries[1] .. '（預測）' end`
`   return eleSeries[1]`

end

function p.getSeries(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return {'錯誤'} end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then return {'未知'} end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       eleid = p.getListID(ele1.correct)`
`       ele1 = element_data[eleid]`
`       if (eleid==-1) then return {'未知'} end`
`   end`
`   if (ele1.series and ele1.series ~= '') then`
`       if (ele1.predictedSeries and ele1.predictedSeries ~= '') then ele1.series.predicted=1 end`
`       return ele1.series`
`   end`
`   return {'錯誤'}`

end

function p.protons(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._protons(args)`

end

function p._protons(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       return ''`
`   end`
`   if (ele1.Z and ele1.Z ~= '') then`
`       return ele1.Z`
`   end`
`   return ''`

end

function p.wikidataID(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   local result = p._wikidataID(args)`
`   if result ~= '' then result = 'Q' .. result end`
`   return result`

end

function p._wikidataID(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   if (ele1.wikidata and ele1.wikidata ~= '') then`
`       return ele1.wikidata`
`   end`
`   return ''`

end

function p.meltingPoint(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._meltingPoint(args)`

end

function p._meltingPoint(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   if (ele1.Melting and ele1.Melting ~= '') then`
`       return ele1.Melting`
`   end`
`   return ''`

end

function p._getName(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return error.error{ '未輸入元素' } end`

`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return error.error{ '未知的元素“' .. args[1] .. '”' } .. ''`
`   end`
`   return ele1.name`

end

function p._check(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return error.error{ '未輸入元素' } end`
`   linkString='' if (args['link'] and args['link'] ~= '') then linkString = string.gsub(args['link'] , "%s$", "") end`
`   if (linkString and linkString  ~= '') then`
`       if (linkString == 'yes') then`
`           pagetest=true`
`       end`
`   end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return error.error{ '未知的元素“' .. args[1] .. '”' } .. ''`
`   end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       return error.error{ '“' .. args[1] .. '”不是“'.. ele1.correct .. '”的正確拼法。' }`
`   end`
`   if (ele1.page and ele1.page ~= '') then`
`       return ''`
`   end`
`   if(pagetest)then`
`       return error.error{ '元素“' .. args[1] .. '”' .. '沒有對應的頁面。'}`
`   else`
`       return ''`
`   end`

end

function p._symbol(args)

`   if not(args[1] and args[1] ~= '') then return error.error{ '未輸入元素' } end`
`   myString = string.gsub(args[1] , "%s$", "") --去除模板引用時可能產生的空格`
`   eleid = p.getListID(myString)`
`   if (eleid==-1) then`
`       if(tonumber(myString) or -1 > 0)then`
`           local ele_tmp = p.getElementByZ(tonumber(myString))`
`           if(ele_tmp and ele_tmp.Symbol)then return ele_tmp.Symbol end`
`       end`
`       return error.error{ '未知的元素“' .. args[1] .. '”' } .. ''`
`   end`
`   ele1 = element_data[eleid]`
`   if(ele1.NotElement)then`
`       return ele1.Symbol`
`   end`
`   if (ele1.Z == nil) then return ele1.Symbol end`
`   num = ele1.Z + (ele1.N or 0) --計算質量數`
`   n = (ele1.N or 0)`
`   number=tonumber(args[2])`
`   if (number and number  ~= '') then`
`       num = number`
`       n = num - ele1.Z`
`       if (n > 0) then --讀到有效的原子量才會進來這裡執行`
`           if (ele1.Isotope) then`
`               for v, x in ipairs(ele1.Isotope) do`
`                   if (x.N == n) then`
`                       if (x.Symbol and x.Symbol  ~= '') then`
`                           return x.Symbol`
`                       end`
`                   end`
`               end`
`           end`
`       end`
`   end`
`   return ele1.Symbol `

end

function p._link(args)

`   --去除模板引用時可能產生的空格`
`   arg1='' if (args[1] and args[1] ~= '') then arg1 = string.gsub(args[1] , "%s$", "") else return error.error{ '未輸入元素' } end`
`   arg2='' if (args[2] and args[2] ~= '') then arg2 = string.gsub(args[2] , "%s$", "") end`
`   arg3='' if (args[3] and args[3] ~= '') then arg3 = string.gsub(args[3] , "%s$", "") end`
`   eleid = p.getListID(arg1)`
`   has_m=''`
`   if (arg3 and arg3  ~= '') then`
`       has_m=arg3`
`   end`
`   if (eleid == -1) then`
`       return error.error{ '未知的元素“' .. arg1 .. '”' } .. ''`
`   end`
`   ele1 = element_data[eleid]`
`   if(ele1.NotElement)then`
`       return ele1.page`
`   end`
`   if (ele1.page and ele1.page  ~= '') then`
`       num = ele1.Z + (ele1.N or 0) --計算質量數`
`       n = ele1.N`
`       hasmass=false`
`       number=tonumber(arg2)`
`       if (number and number  ~= '') then`
`           num = number`
`           n = num - ele1.Z`
`           hasmass=true`
`           if (n < 0) then`
`               return error.error{ '中子數不得為“' .. n .. '”' }`
`           end`
`       else`
`           if (args2 and args2 ~= '') then`
`               return error.error{ '未知的質量數“' .. args2 .. '”' }`
`           end`
`       end`
`       if (hasmass == true) then`
`           if (ele1.Isotope) then`
`               for v, x in ipairs(ele1.Isotope) do`
`                   if (x.N == n) then`
`                       if (x.page and x.page  ~= '') then`
`                           return  x.page`
`                       else`
`                           return error.error{ '元素“' .. args[1] .. '”' .. '質量數為“'.. num  ..'”的同位素沒有對應的頁面。'}`
`                       end`
`                   end`
`               end`
`               return ele1.page .. '-' .. num .. has_m`
`           end`
`       end`
`       return ele1.page `
`   end`
`   return error.error{ '元素“' .. args[1] .. '”' .. '沒有對應的頁面。'}`

end

\--This notation states that the various sources on Earth have substantially different isotopic constitutions, and uncertainties are incorporated in the two numbers. For these elements, there is not an 'Earth average' constitution, and the 'right' value is not its middle p.conventional_atomic_weight={H=1.008,Li=6.941,B=10.81,C=12.011,N=14.007,O=15.999,Mg=24.305,Si=28.085,S=32.04,Cl=35.45,Ar=39.948,Br=79.904,Tl=204.38} function p._get_atomic_weight(element)

`   if (element) then`
`       if(type(element.stdAtomicWeight) == type(0))then return element.stdAtomicWeight , true`
`       else`
`           if(p.conventional_atomic_weight[element.Symbol or ''])then return p.conventional_atomic_weight[element.Symbol or ''] , true end`
`           if(type(element.stdAtomicWeight) == type({0,0}))then return element.stdAtomicWeight[1] , true end`
`       end`
`       if (element.Z and element.N) then return (element.Z + element.N) , false end`
`   end`
`   return nil`

end

function p._getAtomicWeight(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   local Weight, is_natural = p._get_atomic_weight(ele1)`
`   if Weight then`
`       if is_natural ~= true then`
`           return '[' .. Weight ..']'`
`       end`
`       return Weight`
`   end`
`   return ''`

end

function p._get_phase(element, temperature)

`   local test_temperature = temperature or 298.15 --STP`
`   if (element) then`
`       if element.Melting then`
`           if element.Melting > test_temperature then --STP`
`               return "solid"`
`           end`
`       end`
`       if element.Boiling then`
`           if element.Boiling > test_temperature then --STP`
`               return "liquid"`
`           else`
`               return "gas"`
`           end`
`       end`
`   end`
`   return nil`

end

function p._getPhase(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   temperature = 298.15 if (args[2] and args[2] ~= '') then temperature = tonumber( string.gsub(args[1] , "%s$", "") ) or 298.15 end`
`   eleid = p.getListID(eleString)`
`   ele1 = element_data[eleid]`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   return p._get_phase(ele1) or 'unknown'`

end

function p.getListID(names)

`   local body ='' `
`   if tonumber(names) or type(names) == type(0) then`
`       local index = tonumber(names)`
`       for v, x in ipairs(element_data) do                                `
`           if (x.Z == index) then`
`               return  v`
`           end`
`       end`
`   end`
`   i=1`
`   for v, x in ipairs(element_data) do                                `
`       if ((x.name == names) or (x.page == names)) then`
`           return  i`
`       end`
`       for v1, x1 in ipairs(x.othername) do`
`           if (x1 == names) then`
`               return  i`
`           end`
`       end`
`       i=i+1`
`   end`
`   return -1 `

end

function p.decaylink(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`   end`
`   return p._decaylink(args)`

end

function p.elementlink(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`   end`
`   return p._elementlink(args)`

end

function p._elementlink(args)

`   arg1='' if (args[1] and args[1] ~= '') then arg1 = string.gsub(args[1] , "%s$", "") else return '' end`
`   arg2='' if (args[2] and args[2] ~= '') then arg2 = string.gsub(args[2] , "%s$", "") end`
`   eleid = p.getListID(arg1)`
`   if (eleid==-1) then`
`       return error.error{ '未知的元素“' .. arg1 .. '”' } .. ''`
`   end`
`   ele1 = element_data[eleid]`
`   symbol1=ele1.Symbol`
`   if(arg2 and arg2 ~= '')then if(arg2 ~= '1' )then`
`       if (ele1.compound)then symbol1 ='(' .. symbol1 .. ')' end`
`       symbol1 = symbol1 .. '`<sub>`'``   ``..``   ``arg2``   ``..``   ``'`</sub>`'`
`   end end`
`   if (ele1.compound)then`
`       return '`[`'``   ``..``   ``symbol1``   ``..``   ``'`](https://zh.wikipedia.org/wiki/'_.._ele1.page_.._' "wikilink")`'`
`   end`
`   if (ele1.NotElement)then`
`       return error.error{ '“' .. args[1] .. '”不是元素。'}`
`   end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       return error.error{ '“' .. args[1] .. '”不是“'.. ele1.correct .. '”的正確拼法。' }`
`   end`
`   if (ele1.page and ele1.page  ~= '') then`
`       return '`[`'``   ``..``   ``symbol1``   ``..``   ``'`](https://zh.wikipedia.org/wiki/'_.._ele1.page_.._' "wikilink")`'`
`   else`
`       return error.error{ '元素“' .. args[1] .. '”沒有對應的頁面。'}`
`   end`
`   return ''`

end

function p._element_symbol(args)

`   arg1='' if (args[1] and args[1] ~= '') then arg1 = string.gsub(args[1] , "%s$", "") else return '' end`
`   arg2='' if (args[2] and args[2] ~= '') then arg2 = string.gsub(args[2] , "%s$", "") end`
`   eleid = p.getListID(arg1)`
`   if (eleid==-1) then`
`       return error.error{ '未知的元素“' .. arg1 .. '”' } .. ''`
`   end`
`   ele1 = element_data[eleid]`
`   symbol1=ele1.Symbol`
`   if(arg2 and arg2 ~= '')then if(arg2 ~= '1' )then`
`       if (ele1.compound)then symbol1 ='(' .. symbol1 .. ')' end`
`       symbol1 = symbol1 .. '`<sub>`'``   ``..``   ``arg2``   ``..``   ``'`</sub>`'`
`   end end`
`   if (ele1.compound)then`
`       return symbol1`
`   end`
`   if (ele1.NotElement)then`
`       return error.error{ '“' .. args[1] .. '”不是元素。'}`
`   end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       return error.error{ '“' .. args[1] .. '”不是“'.. ele1.correct .. '”的正確拼法。' }`
`   end`
`   if (ele1.page and ele1.page  ~= '') then`
`       return symbol1`
`   else`
`       return error.error{ '元素“' .. args[1] .. '”沒有對應的頁面。'}`
`   end`
`   return ''`

end

function p._decaylink(args)

`   arg1='' if (args[1] and args[1] ~= '') then arg1 = string.gsub(args[1] , "%s$", "") else return '' end`
`   if(arg1=='p') then arg1='p+'end if(arg1=='n') then arg1='n0'end`
`   decayid = p.getListID(arg1)`
`   if (decayid==-1) then`
`       return ''`
`   end`
`   decay1 = element_data[decayid]`
`   if (decay1.decay)then`
`       return '`[`'``   ``..``   ``decay1.Symbol``   ``..``   ``'`](https://zh.wikipedia.org/wiki/'_.._decay1.page_.._' "wikilink")`'`
`   end`
`   return ''`

end

p.IUPAC = { \[0\] = 'n', \[1\] = 'u', \[2\] = 'b', \[3\] = 't', \[4\] = 'q', \[5\] = 'p', \[6\] = 'h', \[7\] = 's', \[8\] = 'o', \[9\] = 'e' } p.IUPAC_name = { \[0\] = 'nil', \[1\] = 'un', \[2\] = 'bi', \[3\] = 'tri', \[4\] = 'quad', \[5\] = 'pent',

`                   [6] = 'hex', [7] = 'sept', [8] = 'oct', [9] = 'enn', [10] = 'ium', [11] = 'um' }`

function p.DecodeByIUPAC_rules(symbol_data)

`   symbol = mw.ustring.lower(symbol_data)`
`   symbol_len = mw.ustring.len(symbol)`
`   Z_data = ''`
`   for i = 1, symbol_len do`
`       get_id = nil`
`       for j = 0, 9 do if mw.ustring.sub(symbol ,i, i) == p.IUPAC[j] then get_id = j end end`
`       if get_id == nil then return nil end`
`       Z_data = Z_data .. get_id`
`   end`
`   return tonumber(Z_data)`

end

function p.outputLuaListTemplate()

`   local body=''`
`   for _, ele in ipairs(element_data) do`
`       body = body .. "\t[\"" .. ele.name .. "\"] = {  },\n"`
`   end`
`   return "{\n" .. body .. '}'`

end

function p.getElementByIUPAC_rules(index_input)

`   result = ''`
`   result_name = ''`
`   index = tonumber(index_input)`
`   if index ~= nil then index = math.floor(index) else index = 0 end`
`   index_str = '' .. index`
`   index_len = mw.ustring.len(index_str)`
`   if index > 100 then`
`       for i = 1, index_len do`
`           data = p.IUPAC[tonumber('' .. mw.ustring.sub(index_str ,i, i)) or 0]`
`           name = p.IUPAC_name[tonumber('' .. mw.ustring.sub(index_str ,i, i)) or 0]`
`           if i == 1 then `
`               result = result .. mw.ustring.upper(data)`
`               result_name = result_name .. mw.ustring.upper(mw.ustring.sub(name,1,1)) .. mw.ustring.sub(name,2,-1)`
`           else`
`               result = result .. data`
`               result_name = result_name .. name`
`           end`
`       end`
`   end`
`   if result == '' then`
`       return nil`
`   end`
`   result_name_index = 11 if mw.ustring.sub(result_name,-1,-1) ~= 'i' then result_name_index = result_name_index - 1 end`
`   return { name=result_name .. p.IUPAC_name[result_name_index] , page=result, Symbol=result, Z=index }`

end

function p.getElementByZ(index)

`   local body =''         `
`   for v, x in ipairs(element_data) do                                `
`       if (x.Z == index) then`
`           return  x`
`       end`
`   end`
`   if index > 0 then`
`       return p.getElementByIUPAC_rules(index)`
`   end`
`   return nil `

end

function p.next_element(symbol)

`   eleid = p.getListID(symbol)`
`   ele1 = element_data[eleid]`
`   `
`   if ele1 == nil then ele_z = p.DecodeByIUPAC_rules(symbol) else if ele1.Z == nil then`
`       ele_z = p.DecodeByIUPAC_rules(symbol) else ele_z = ele1.Z end`
`   end`

`   if ele_z ~= nil then`
`       return p.getElementByZ(ele_z + 1)`
`   end`
`   return nil`

end

function p.last_element(symbol)

`   eleid = p.getListID(symbol)`
`   ele1 = element_data[eleid]`
`   `
`   if ele1 == nil then ele_z = p.DecodeByIUPAC_rules(symbol) else if ele1.Z == nil then`
`       ele_z = p.DecodeByIUPAC_rules(symbol) else ele_z = ele1.Z end`
`   end`

`   if ele_z ~= nil then`
`       return p.getElementByZ(ele_z - 1)`
`   end`
`   return nil`

end

\--本模塊的沙盒(測試)函數 function p.sandbox(frame)

`   -- For calling from #invoke.`
`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`   end`
`   return p._elementlink(args)`

end function p._copytable(input_table)

`   local output_table`
`   if type(input_table) == type({}) then`
`       output_table = {}`
`       for k,v in pairs(input_table) do`
`           local temp`
`           if type(input_table) == type({}) then`
`               temp = mw.clone(p._copytable(v))`
`           elseif type(input_table) == type(tonumber) then`
`           else`
`               temp = mw.copy(v)`
`           end`
`           output_table[k]=temp`
`       end`
`   elseif type(input_table) == type(tonumber) then`
`       --do nothing`
`   else`
`       output_table = mw.clone(input_table)`
`   end`
`   return output_table`

end local eleconfdata = {'s','p','d','f','g','h','i','k','l'} function p.ElectronConfiguration(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   return p._ElectronConfiguration(args)`

end

local yesno = nil

function p._ElectronConfiguration(args)

`   --去除模板引用時可能產生的空格`
`   eleString='' if (args[1] and args[1] ~= '') then eleString = string.gsub(args[1] , "%s$", "") else return '' end`
`   eleid = p.getListID(eleString)`
`   ele1 = p._copytable(element_data[eleid])`
`   if (eleid==-1) then`
`       return ''`
`   end`
`   if (ele1.correct and ele1.correct  ~= '') then`
`       return ''`
`   end`
`   local display_all = false`
`   if args["displayAll"] then`
`       if type(yesno) ~= type(tonumber) then yesno = require('Module:Yesno') end`
`       display_all = yesno(args["displayAll"] or 'no')`
`   end`
`   if (ele1.Z and ele1.Z ~= '') then`
`       return p.htmleleconf(ele1.EC, display_all)`
`   end`
`   return ''`

end function p.htmleleconf(eleconf, showall)

`   local cen = eleconf.cen or ''`
`   local ceneledata`
`   if cen ~= '' then`
`       for i=2,140 do`
`           if mw.ustring.lower(element_data[i].Symbol) == mw.ustring.lower(cen) then`
`               ceneledata = p._copytable(element_data[i])`
`               break`
`           end`
`       end`
`   end`
`   if not ceneledata then ceneledata = p._copytable(element_data[2]) end`
`   local elecdis = ''`

`   for period, eles in ipairs(eleconf) do`
`       local elecstr = ''`
`       for shell, elecount in ipairs(eles) do`
`           if type(elecount) == type({}) then--亞軌域`
`               for shell_id, shell_ent in ipairs(elecount) do`
`                   local shellstr = ''`
`                   local shell_name = shell_ent[2]`
`                   local shell_elecount = shell_ent[1]`
`                   local valence = shell_elecount`
`                   local censhell_ent = ((ceneledata.EC[period] or {})[shell] or ``)[shell_id]`
`                   --尋找同名亞軌域`
`                   local shell_ent_check = (ceneledata.EC[period] or {})[shell]`
`                   if type(shell_ent_check) == type({}) then`
`                       for subshell_id, subshell_ent in ipairs(shell_ent_check) do`
`                           if subshell_ent[2] == shell_name then censhell_ent = {subshell_ent[1],subshell_ent[2]} break end`
`                       end`
`                   else`
`                       censhell_ent = {shell_ent_check,''}`
`                   end`
`                   if not(showall == true) then `
`                       valence = valence - ((censhell_ent or {})[1] or 0)`
`                   end`
`                   if valence > 0 then`
`                       local frame = mw.getCurrentFrame()`
`                       --`
`                       shellstr = tostring(period) .. eleconfdata[shell] .. frame:expandTemplate{ title = 'su', args = { p=tostring(valence), b=tostring(shell_name) } }`
`                       elecstr = elecstr .. shellstr`
`                   end`
`               end`
`           else`
`               local shellstr = ''`
`               local valence = elecount`
`               if not(showall == true) then `
`                   local subshell_name = ''`
`                   local shell_ent = (ceneledata.EC[period] or {})[shell]`
`                   if type(shell_ent) == type({}) then--亞軌域`
`                       for subshell_id, subshell_ent in ipairs(shell_ent) do`
`                           if subshell_ent[2] == subshell_name then shell_ent = subshell_ent[1] break end`
`                       end`
`                   end`
`                   valence = valence - (shell_ent or 0) `
`               end`
`               if valence > 0 then`
`                   shellstr = tostring(period) .. eleconfdata[shell] .. '`<sup>`'``   ``..``   ``tostring(valence)``   ``..``   ``'`</sup>`'`
`                   elecstr = elecstr .. shellstr`
`               end`
`           end`
`       end`
`       elecdis = elecdis .. elecstr`
`   end`
`   if cen ~= '' and not(showall == true) then`
`       elecdis = '[' .. cen .. ']' .. elecdis`
`   end`
`   return elecdis`

end function p._sandbox(args)

`   return element_data[p.getListID(args[1])].name `

end return p

[Category:含有錯誤元素符號的條目](https://zh.wikipedia.org/wiki/Category:含有錯誤元素符號的條目 "wikilink") [Category:含有錯誤元素符號的條目](https://zh.wikipedia.org/wiki/Category:含有錯誤元素符號的條目 "wikilink") [Category:含有錯誤元素符號的條目](https://zh.wikipedia.org/wiki/Category:含有錯誤元素符號的條目 "wikilink") [Category:含有錯誤元素符號的條目](https://zh.wikipedia.org/wiki/Category:含有錯誤元素符號的條目 "wikilink") [Category:含有錯誤元素符號的條目](https://zh.wikipedia.org/wiki/Category:含有錯誤元素符號的條目 "wikilink") [Category:含有錯誤元素符號的條目](https://zh.wikipedia.org/wiki/Category:含有錯誤元素符號的條目 "wikilink")