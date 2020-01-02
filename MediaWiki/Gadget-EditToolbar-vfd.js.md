> 本文内容由[MediaWiki:Gadget-EditToolbar-vfd.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-EditToolbar-vfd.js)转换而来。


if (mw.config.get('wgAction') == 'edit' || mw.config.get('wgAction') == 'submit') {

`   jQuery.extend(true, editToolbarConfiguration, {`
`       'vfd': {`
`           label: 'VFD',`
`           type: 'toolbar',`
`           groups: {`
`               'deleted': {`
`                   label: 'Deleted',`
`                   tools: {`
`                       'page': {`
`                           label: 'General',`
`                           type: 'select',`
`                           list: {`
`                               'vfd': {`
`                                   label: 'by Voting',`
`                                   action: {`
`                                       type: 'encapsulate',`
`                                       options: {`
`                                           pre: '{\{delh|d}\}\n',`
`                                           post: '{\{subst:Deleted}\}--~~\~~\n{\{delf}\}'`
`                                       }`
`                                   }`
`                               },`
`                               'csd': {`
`                                   label: 'by CSD',`
`                                   action: {`
`                                       type: 'encapsulate',`
`                                       options: {`
`                                           pre: '{\{delh|sd}\}\n',`
`                                           post: '{\{subst:SpeedyDeleted}\}--~~\~~\n{\{delf}\}'`
`                                       }`
`                                   }`
`                               },`
`                               'cv': {`
`                                   label: 'Copyright violation',`
`                                   action: {`
`                                       type: 'encapsulate',`
`                                       options: {`
`                                           pre: '{\{delh|c}\}\n',`
`                                           post: '{\{subst:(C)Problem}\}--~~\~~\n{\{delf}\}'`
`                                       }`
`                                   }`
`                               }`
`                           }`
`                       },`
`                       'file': {`
`                           label: 'Files',`
`                           type: 'select',`
`                           list: {`
`                               'vfd': {`
`                                   label: 'by Voting',`
`                                   action: {`
`                                       type: 'encapsulate',`
`                                       options: {`
`                                           pre: '{\{delh|d}\}\n',`
`                                           post: '{\{subst:Deleted}\}--~~\~~\n{\{delf}\}'`
`                                       }`
`                                   }`
`                               },`
`                               'csd': {`
`                                   label: 'by CSD',`
`                                   action: {`
`                                       type: 'encapsulate',`
`                                       options: {`
`                                           pre: '{\{delh|sd}\}\n',`
`                                           post: '{\{subst:SpeedyDeleted}\}--~~\~~\n{\{delf}\}'`
`                                       }`
`                                   }`
`                               },`
`                               'cv': {`
`                                   label: 'Copyright violation',`
`                                   action: {`
`                                       type: 'encapsulate',`
`                                       options: {`
`                                           pre: '{\{delh|ic}\}\n',`
`                                           post: '----\nCopyright violation--~~\~~\n{\{delf}\}'`
`                                       }`
`                                   }`
`                               }`
`                           }`
`                       }`
`                   }`
`               }`
`           }`
`       }`
`   });`

}