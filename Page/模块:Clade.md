> 本文内容由[模块:Clade](https://zh.wikipedia.org/wiki/模块:Clade)转换而来。


\--[NOTE: this module contains functions for generating the table structure of the clade tree: The main function is called by the template using the {{invoke}} instruction; the three main functions are: p.main(frame) - opens and closes table, loops through the children of node, main is invoked once and controls the rest, calling ... p.addTaxon(childNumber, nodeLeaf) - the nuts and bolts; code dealing with each child node p.addLabel(childNumber) - adds the label text now used templatestyles](https://zh.wikipedia.org/wiki/NOTE:_this_module_contains_functions_for_generating_the_table_structure_of_the_clade_tree:_The_main_function_is_called_by_the_template_using_the_{{invoke}}_instruction;_the_three_main_functions_are:_p.main\(frame\)_-_opens_and_closes_table,_loops_through_the_children_of_node,_main_is_invoked_once_and_controls_the_rest,_calling_..._p.addTaxon\(childNumber,_nodeLeaf\)_-_the_nuts_and_bolts;_code_dealing_with_each_child_node_p.addLabel\(childNumber\)_-_adds_the_label_text_now_used_templatestyles "wikilink")

local p = {}

\--\[\[============================== main function =========================== -- main function, which will generate the table structure of the tree

Test version: Usage: {{\#invoke:Module:Sandbox/Jts1882/CladeN|main|style= }} Template:CladeN

Release version: Usage: {{\#invoke:Clade|main|style= }} Template:Clade \]\]

function p.main(frame)

`   local cladeString = ""  `
`   local maxChildren = 20 -- currently 17 in the clade/cladex templates`
`   local childNumber = 0`
`   lastNode = 0 -- make this global for now `
`   local nodeCount = 0 -- total leafs plus new clade branches`
`   local leafCount = 0 -- just the terminal leaves`
`   local cladeCount = 0 -- new clade calls (each with a table)`
`   local childCount = 0 -- number of leaves in the clade (can use to set bottom of bracket in addTaxon()`
`   local totalCount = 0`
`   `
`   infoOutput = p.getCladeTreeInfo() -- get info about clade structure, e.g. lastNode (last |N= child number)`

`   local tableStyle = frame.args.style or ""`
`   --if tableStyle == '``' then tableStyle = "" end -- no longer needed as pipe added to template to suppress passing of `` }}`

\]\] function p.newickConverter(frame)

`   local newickString = frame.args['newickstring']`
`   `
`   `
`   if newickString == '``' then return newickString  end`

`   -- show the Newick string`
`   local cladeString = ''`
`   local levelNumber = 1           --  for depth of iteration`
`   local childNumber = 1           --  number of sister elements on node  (always one for root)`
`   `
`   --  converted the newick string to the clade structure`
`   cladeString = cladeString .. '``'  `

`   local resultString = ''`
`   local option = mw.getCurrentFrame():getParent().args['option'] or ''`
`   if option == 'tree' then`
`       --show the transcluded clade diagram`
`       resultString =   cladeString        `
`   else`
`       -- show the Newick string`
`       resultString = '`

    '..newickString..'

'

`       -- show the converted clade structure`
`       resultString = resultString .. '`

    '.. cladeString ..'

'

`   end`
`   --resultString = frame:expandTemplate{ title = 'clade',  frame:preprocess(cladeString) }`

`   return resultString`

end

\--\[\[ Parse one level of Newick sting

`    This function recieves a Newick string, which has two components`
`     1. the right hand term is a clade label: |labelN=labelname`
`     2. the left hand term in parenthesis has common delimited child nodes, each of which can be`
`          i.  a taxon name which just needs:  |N=leafname `
`          ii. a Newick string which needs further processing through reiteration`

\]\] function p.newickParseLevel(newickString,levelNumber,childNumber)

`   local cladeString = ""`
`   local indent = p.getIndent(levelNumber) `
`   --levelNumber=levelNumber+1`
`   `
`   local j=0`
`   local k=0`
`   j,k = string.find(newickString, '%(.*%)')                 -- find location of outer parenthesised term`
`   local innerTerm = string.sub(newickString, j+1, k-1)      -- select content in parenthesis`
`   local outerTerm = string.gsub(newickString, "%b()", "")   -- delete parenthetic term`

`   cladeString = cladeString .. indent .. '|label'..childNumber..'='  .. outerTerm`
`   cladeString = cladeString .. indent .. '|' .. childNumber..'='  .. '``'  `
`   return cladeString`

end

function p.getIndent(levelNumber)

`   local indent = "\r"`
`   local extraIndent = mw.getCurrentFrame():getParent().args['indent'] or 0`
`   `
`   while tonumber(extraIndent) > 0 do`
`       indent = indent .. " " -- an extra indent to make aligining compound trees easier`
`       extraIndent = extraIndent - 1`
`   end`
`   `
`   while levelNumber > 1 do`
`       indent = indent .. "   "`
`       levelNumber = levelNumber-1`
`   end`
`   return indent`

end

function p.newickstuff(newickString)

end

-----

function p.test2(target)

`   local target ="User:Jts1882/sandbox/templates/Template:Passeroidea"`
`   local result = mw.getCurrentFrame():expandTemplate{ title = target, args = {['style'] = '' } }`
`   return result`

end

-----

function p.toggle(frame)

`   if 1==2 then return 'some text' end`
`   `
`   --local toggleSymbol = 'toggle all'`
`   local toggleSymbol = mw.getCurrentFrame():getParent().args['button'] or ""`

`   local toggleString = '`

<div class="'

    local i=0
    while   i < 20 do  -- limit on number of toggle elements controlled by the trigger button
        i = i + 1 -- so we start with 1
        local target = mw.getCurrentFrame():getParent().args['id'..tostring(i)]

        -- add classes for the three elements of each target: expand symbol, collapse symbol and contents
        if target ~= nil then
            toggleString = toggleString .. ' mw-customtoggle-myClade' .. target
                ..             ' mw-customtoggle-collapseSymbol' .. target
                ..             ' mw-customtoggle-expandSymbol' .. target
        end
    end


 toggleString = toggleString  ..  '">

' .. toggleSymbol .. '

</div>

'

` return toggleString`

end

-----

function p.hidden(frame)

`   local id = mw.getCurrentFrame():getParent().args['id'] or ""`
`   local mode = mw.getCurrentFrame():getParent().args['mode'] or "right"`
`   local expandSymbol = mw.getCurrentFrame():getParent().args['expand-symbol'] or "⊞"`
`   local collapseSymbol = mw.getCurrentFrame():getParent().args['collapse-symbol'] or "⊟"`
`   local initialState = mw.getCurrentFrame():getParent().args['expanded']`
`   `
`   -- default is content collapsed`
`   local contentState = " mw-collapsed" -- class to collapse content at start`
`   local collapseSymbolState = " mw-collapsed"`
`   local expandSymbolState = ""`
`   if initialState then`
`      contentState = ""`
`      collapseSymbolState =  ""`
`      expandSymbolState = " mw-collapsed" `
`   end`
`       `
`   `
`   -- collapsible element containing the expand sympol and/or text`
`   local expandSymbolString = '`

<td style="padding:0 0 0.25em 0;">

'

`               .. '`

<div class="mw-collapsible' .. expandSymbolState .. '" id="mw-customcollapsible-expandSymbol' .. id .. '">

'

`               .. '`

<div class="mw-collapsible-content mw-customtoggle-expandSymbol' .. id .. '">

'

`               .. '`<span class="mw-customtoggle-myClade' .. id
                ..             ' mw-customtoggle-collapseSymbol' .. id
                ..             ' mw-customtoggle-expandSymbol' .. id
                ..    '" style="font-size:100%;">`' .. expandSymbol .. '`</span>`'`
`               .. '`

</div>

</div>

</td>

'

`   -- collapsible element containing the clade content `
`   local contentString = '`

<td style="padding:0;">

'

`               .. '<div class="mw-collapsible' .. contentState .. '" id="mw-customcollapsible-myClade' .. id .. '>'`
`               .. '`

<div class="mw-collapsible-content mw-customtoggle-NOT_ON_CONTENT" >

' -- don't toggle on the content

`               .. '\n' .. p.main(frame)  -- important to start wikitext tables on new line`
`               .. '`

</div>

</div>

</td>

'

`   -- collapsible element containing the collapse sympol and/or text`
`   local collapseSymbolString = '`

<td style="padding:0 0 0.4em 0;">

'

`               .. '`

<div class="mw-collapsible' .. collapseSymbolState .. '" id="mw-customcollapsible-collapseSymbol' .. id .. '">

'

`               .. '`

<div class="mw-collapsible-content mw-customtoggle-collapseSymbol' .. id .. '" >

'

`               .. '`<span class="mw-customtoggle-expandSymbol' .. id
                            .. ' mw-customtoggle-myClade' .. id
                            .. ' mw-customtoggle-collapseSymbol' .. id
                            .. ' " style="font-size:100%;" >`' .. collapseSymbol .. '`</span>`'`
`                           .. '`

</div>

</div>

</td>

'

`   local tableStyle = frame.args.style or ""`
`   if tableStyle == '``' then tableStyle = "" end`
`   local cladeString = '`

<table style="border-spacing:0;margin:0;'..tableStyle ..'">

<tr>

'

`   cladeString = cladeString .. expandSymbolString `
`   if mode == "left" then`
`       cladeString = cladeString .. collapseSymbolString`
`   end`
`   cladeString = cladeString .. contentString `
`   if mode == "right" then`
`       cladeString = cladeString .. collapseSymbolString`
`   end`
`   -- Note: if we want collapse string left and right it needs an extra element with a different id`
`   cladeString = cladeString ..  '`

</tr>

</table>

'

return cladeString end

-----

\--[function getCladeTreeInfo() this preprocessing loop gets information about the whole structure (number of nodes, leaves etc) it makes a redundant calls to the templates through transclusion, but doen't affect the template depths; it provides the global lastNode that is used to limit the main while loop --](https://zh.wikipedia.org/wiki/function_getCladeTreeInfo\(\)_this_preprocessing_loop_gets_information_about_the_whole_structure_\(number_of_nodes,_leaves_etc\)_it_makes_a_redundant_calls_to_the_templates_through_transclusion,_but_doen't_affect_the_template_depths;_it_provides_the_global_lastNode_that_is_used_to_limit_the_main_while_loop_-- "wikilink") function p.getCladeTreeInfo()

`   -- enable proprocessing loop`
`   local childNumber = 0`
`   local childCount =0`
`   local maxChildren =20`
`   `
`   --info veriables (these are global for now)`
`   nodeCount=0`
`   cladeCount=0`
`   leafCount=0`
`   `
`   while   childNumber < maxChildren do -- preprocessing loop`
`       childNumber = childNumber + 1 -- so we start with 1`
`       local nodeLeaf,data = mw.getCurrentFrame():getParent().args[tostring(childNumber)] or ""  -- get data from |N=`
`       local newickString = mw.getCurrentFrame():getParent().args['newick'..tostring(childNumber)] or ""  -- get data from |labelN=`
`       if newickString ~= "" or nodeLeaf ~= "" then`
`       --if nodeLeaf ~= "" then `
`           childCount = childCount + 1  -- this counts child elements in this clade`
`           --[[]`
`           for i in string.gmatch(nodeLeaf, "||rowspan") do -- count number of rows started (transclusion)`
`               nodeCount = nodeCount + 1`
`           end`
`           for i in string.gmatch(nodeLeaf, '{|class="clade"') do -- count number of tables started (transclusion)`
`               cladeCount = cladeCount + 1`
`           end`
`           ]]`
`           -- count occurences of clade structure tables and double span rows`
`           _, cladeCount = string.gsub(nodeLeaf, '{|class="clade"', "")`
`           _, nodeCount = string.gsub(nodeLeaf, "||rowspan", "")`
`           `
`           lastNode = childNumber -- this gets the last node with a valid entry, even when missing numbers`
`       end`
`   end`

\--\]\]

`   -- nodes can be either terminal leaves or a clade structure (table)`
`   nodeCount = nodeCount + childCount + 1-- number of double rows passed down by transduction plus current child elements (plus one for current clade)`
`   cladeCount = cladeCount + 1       -- number of clade structure tables passed down by transduction (plus one for current clade)`
`   leafCount = nodeCount-cladeCount   -- number of terminal leaves (equals height of cladogram)`
`   infoOutput = nodeCount -- global`
`   `
`   return cladeCount`
`   `

end

\--[code for placing TemplateStyles from the module source: Anomie (CC-0) https://phabricator.wikimedia.org/T200442](https://zh.wikipedia.org/wiki/code_for_placing_TemplateStyles_from_the_module_source:_Anomie_\(CC-0\)_https://phabricator.wikimedia.org/T200442 "wikilink")

function p.templateStyle( frame, src )

`  return frame:extensionTag( 'templatestyles', '', { src = src } );`

end

function p.showClade(frame)

`   --local code = frame.args.code or ""`
`   local code = frame:getParent().args['code2'] or ""`
`   `
`   --return  code `
`   --return mw.text.unstrip(code)`
`   `
`   --local test = "`

    Hello

"

`   --return string.sub(test,6,-7)`
`   `
`   local o1 =frame:getParent():getArgument('code2')`
`   return o1:expand()`
`   `
``   --return string.sub(code,2,-1)              -- strip marker  \127'"`UNIQ--tagname-8 hex digits-QINU`"'\127``
`   --return frame:preprocess(string.sub(code,3))`

end

\-- this must be at end

return p