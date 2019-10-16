這是一個 meta-module that implements the message box templates , , , , , , and . It is intended to be used from Lua modules, and should not be used directly from wiki pages. If you want to use this module's functionality from a wiki page, please use the individual message box templates instead.

## Usage

To use this module from another Lua module, first you need to load it.

``` lua
local messageBox = require('Module:Message box')
```

To create a message box, use the `main` function. It takes two parameters: the first is the box type (as a string), and the second is a table containing the message box parameters.

``` lua
local box = messageBox.main( boxType, {
    param1 = param1,
    param2 = param2,
    -- More parameters...
})
```

There are seven available box types:

<table>
<thead>
<tr class="header">
<th><p>Box type</p></th>
<th><p>Template</p></th>
<th><p>Purpose</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>mbox</code></p></td>
<td></td>
<td><p>For message boxes to be used in multiple namespaces</p></td>
</tr>
<tr class="even">
<td><p><code>ambox</code></p></td>
<td></td>
<td><p>For article message boxes</p></td>
</tr>
<tr class="odd">
<td><p><code>cmbox</code></p></td>
<td></td>
<td><p>For category message boxes</p></td>
</tr>
<tr class="even">
<td><p><code>fmbox</code></p></td>
<td></td>
<td><p>For interface message boxes</p></td>
</tr>
<tr class="odd">
<td><p><code>imbox</code></p></td>
<td></td>
<td><p>For file namespace message boxes</p></td>
</tr>
<tr class="even">
<td><p><code>tmbox</code></p></td>
<td></td>
<td><p>For talk page message boxes</p></td>
</tr>
<tr class="odd">
<td><p><code>ombox</code></p></td>
<td></td>
<td><p>For message boxes in other namespaces</p></td>
</tr>
</tbody>
</table>

See the template page of each box type for the available parameters.

## Usage from \#invoke

As well as the `main` function, this module has separate functions for each box type. They are accessed using the code `{{#invoke:Message box|mbox|...}}`, `{{#invoke:Message box|ambox|...}}`, etc. These will work when called from other modules, but they access code used to process arguments passed from \#invoke, and so calling them will be less efficient than calling `main`.

## Technical details

The module uses the same basic code for each of the templates listed above; the differences between each of them are configured using the data at [Module:Message box/configuration](https://zh.wikipedia.org/wiki/Module:Message_box/configuration "wikilink"). Here are the various configuration options and what they mean:

  - `types` - a table containing data used by the type parameter of the message box. The table keys are the values that can be passed to the type parameter, and the table values are tables containing the class and the image used by that type.
  - `default` - the type to use if no value was passed to the type parameter, or if an invalid value was specified.
  - `showInvalidTypeError` - whether to show an error if the value passed to the type parameter was invalid.
  - `allowBlankParams` - usually blank values are stripped from parameters passed to the module. However, whitespace is preserved for the parameters included in the allowBlankParams table.
  - `allowId` - whether it is possible to set an "id" attribute to the html table tag.
  - `allowSmall` - whether a small version of the message box can be produced with "small=yes".
  - `smallParam` - a custom name for the small parameter. For example, if set to "left" you can produce a small message box using "small=left".
  - `smallClass` - the class to use for small message boxes.
  - `substCheck` - whether to perform a subst check or not.
  - `classes` - an array of classes to use with the message box.
  - `usePlainlinksParam` - whether to allow "plainlinks=no" to turn off the plainlinks class.
  - `imageEmptyCell` - whether to use an empty  cell if there is no image set. This is used to preserve spacing for message boxes with a width of less than 100% of the screen.
  - `imageEmptyCellStyle` - whether empty image cells should be styled.
  - `imageCheckBlank` - whether "image=blank" results in no image being displayed.
  - `imageSmallSize` - usually, images used in small message boxes are set to 30x30px. This sets a custom size.
  - `imageCellDiv` - whether to enclose the image in a div enforcing a maximum image size.
  - `useCollapsibleTextFields` - whether to use text fields that can be collapsed, i.e. "issue", "fix", "talk", etc. Currently only used in ambox.
  - `imageRightNone` - whether imageright=none results in no image being displayed on the right-hand side of the message box.
  - `sectionDefault` - the default name for the "section" parameter. Depends on `useCollapsibleTextFields`.
  - `allowMainspaceCategories` - allow categorisation in the main namespace.
  - `templateCategory` - the name of a category to be placed on the template page.
  - `templateCategoryRequireName` - whether the `name` parameter is required to display the template category.
  - `templateErrorCategory` - the name of the error category to be used on the template page.
  - `templateErrorParamsToCheck` - an array of parameter names to check. If any are absent, the `templateErrorCategory` is applied to the template page.