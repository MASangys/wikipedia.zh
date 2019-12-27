local getArgs = require('Module:Arguments').getArgs local p = {}

function Split(szFullString, szSeparator)

`   local nFindStartIndex = 1`
`   local nSplitIndex = 1`
`   local nSplitArray = {}`
`   while true do`
`      local nFindLastIndex = mw.ustring.find(szFullString, szSeparator, nFindStartIndex)`
`      if not nFindLastIndex then`
`       nSplitArray[nSplitIndex] = mw.ustring.sub(szFullString, nFindStartIndex, mw.ustring.len(szFullString))`
`       break`
`      end`
`      nSplitArray[nSplitIndex] = mw.ustring.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)`
`      nFindStartIndex = nFindLastIndex + mw.ustring.len(szSeparator)`
`      nSplitIndex = nSplitIndex + 1`
`   end`
`   return nSplitArray`

end

function p.main(frame)

`   local args = getArgs(frame,{`
`       trim = true,`
`       removeBlanks = true,`
`       parentFirst = true`
`   })`
`   return p._main(args)`

end

function p._main(args)

`   local checkArgNames = args['checkArgNames']`
`   --mw.log(checkArgNames)`
`   local result = ''`
`   if checkArgNames~='' then`
`       checkArgNames = Split(checkArgNames,',')`
`   else`
`       return result`
`   end`
`   --mw.logObject(checkArgNames)`
`   for i=1,#checkArgNames do`
`       local val = args[checkArgNames[i]]`
`       --mw.log(val)`
`       if val~='' and val ~=nil then`
`           result = '1'`
`           break`
`       end`
`   end`
`   return result`

end

return p