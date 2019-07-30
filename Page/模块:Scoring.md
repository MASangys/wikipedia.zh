local final_assessment = {} function final_assessment.calculate()

`   local args = mw.getCurrentFrame().args`
`   local score = 0`
`   local length = tonumber(args.length, 10)`
`   local spokenlength = tonumber(args.spokenlength, 10)`
`   local picnum = tonumber(args.picnum, 10)`
`   local pictranslength = tonumber(args.pictranslength, 10)`
`   local videolength = tonumber(args.videolength, 10)`
`   if args.rank == 'FA' then`
`       --if length <= 25000 then`
`       --  score = 50`
`       --else`
`           score = 18.75 + 1.5 * length / 1000`
`   elseif args.rank == 'FL' then`
`       score = 18.75 + 1.25 * length / 1000`
`   elseif args.rank == 'GA' then`
`       --if length <= 20000 then`
`       --  score = 30`
`       --else`
`           score = 15 + length / 1000`
`   elseif args.rank == 'normal' then`
`       if length <= 100000 then`
`           score = -0.0025 * (length / 1000) ^ 2 + 0.52 * (length / 1000) + 1`
`       else`
`           score = 28`
`       end`
`   end`
`   --如果长度不合标准则归零`
`   if length < 3500 then`
`       score = 0`
`   end`
`   if args.isnew == '0' then`
`       --如果不是新条目`
`       if length == 3500 then`
`           score = 0`
`       end`
`       if args.rank == 'normal' then`
`           score = score * 1.05`
`       elseif args.rank == 'FA' then`
`           score = score * 1.15`
`       else`
`           score = score * 1.10`
`       end`
`   end`
`   --大中小动员令加成`
`   score = score * tonumber(args.cat, 10)`
`   --如果有有聲條目則加成`
`   if args.spokencheck == '1' then`
`       if (spokenlength/1000)*0.1 < 1 then`
`           score = score + 1`
`       else`
`           score= score + (spokenlength/1000)*0.1`
`       end`
`   end`
`   --如果有原創圖片條目則加成`
`   if args.piccheck == '1' then`
`       score = score + (picnum*10)^0.7`
`       score = score + (pictranslength*0.15)`
`   end`
`   --如果有原創影片則加成`
`   if args.videocheck == '1' then`
`       if videolength >= 30 then`
`           score= score + 5 * (30 ^ 0.4)`
`       else`
`           score= score + 5 * videolength^0.4`
`       end`
`   end`
`   --向下取整`
`   score = math.floor(score)`
`   return score`

end return final_assessment