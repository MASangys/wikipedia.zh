/\*\*

`* 原作者：`[`User:Alexander``
 ``Misel/admin.js`](https://zh.wikipedia.org/wiki/User:Alexander_Misel/admin.js "wikilink")`，逆襲的天邪鬼修改。`
`* 取自 oldid=45739798`
`* `
`* 修改内容：`
`* 1. 把菜单移到了「更多」而不是在用户名左面`
`* 2. 修正bug`
`* 3. 繁簡共榮`
`*/`

(function($, mw) {

`   // Create portlet link`
`   var portletLinkOnline = mw.util.addPortletLink(`
`       'p-cactions',`
`       '#',`
`       wgULS('在线管理人员', '線上管理人員')`
`   );`

`   var rcstart, rcend, time;`
`   var users = [];`
`   var admins = [], rollbackers = [], patrollers = [];`
`   var api = new mw.Api();`

`   // Bind click handler`
`   $(portletLinkOnline).click(function(e) {`
`       e.preventDefault();`

`       users = [];`
`       var usersExt = [];`
`       admins = [];`
`       rollbackers = [];`
`       patrollers = [];`

`       // 最近更改30分钟内的编辑用户`
`       time = new Date();`
`       rcstart = time.toISOString();`
`       time.setMinutes(time.getMinutes() - 30);`
`       rcend = time.toISOString();`

`       //API:RecentChanges`
`       api.get({`
`           format: 'json',`
`           action: 'query',`
`           list: 'recentchanges',`
`           rcprop: 'user',`
`           rcstart: rcstart,`
`           rcend: rcend,`
`           rcshow: '!bot|!anon',`
`           rclimit: 500`
`       }).done(function(data) {`
`           $.each(data.query.recentchanges, function(i, item) {`
`               users[i] = item.user;`
`           });`
`           api.get({`
`               format: 'json',`
`               action: 'query',`
`               list: 'logevents',`
`               leprop: 'user',`
`               lestart: rcstart,`
`               leend: rcend,`
`               lelimit: 500`
`           }).done(function(data) {`
`               $.each(data.query.logevents, function(i, item) {`
`                   usersExt[i] = item.user;`
`               });`

`               Array.prototype.push.apply(users, usersExt);`

`               // 使用者名稱去重與分割`
`               users = $.unique(users.sort());`

`               var promises = [];`
`               var mark = function(data) {`
`                   $.each(data.query.users, function(i, user) {`
`                       // 找到管理员，去除adminbot`
`                       if ($.inArray('bot', user.groups) === -1) {`
`                           if ($.inArray('sysop', user.groups) > -1) {`
`                               admins[i] = user.name;`
`                           }`
`                           if ($.inArray('rollbacker', user.groups) > -1) {`
`                               rollbackers[i] = user.name;`
`                           }`
`                           if ($.inArray('patroller', user.groups) > -1) {`
`                               patrollers[i] = user.name;`
`                           }`
`                       }`
`                   });`
`               };`
`               for (var i=0; i<(users.length+50)/50; i++) {`
`                   promises.push(api.get({`
`                       format: 'json',`
`                       action: 'query',`
`                       list: 'users',`
`                       ususers: users.slice(i*50, (i+1)*50).join('|'),`
`                       usprop: 'groups'`
`                   }).done(mark));`
`               }`

`               // 查询用户权限`
`               $.when.apply($, promises).done(function () {`
`                   // 消除空值`
`                   var filter = function(n) {`
`                       return n;`
`                   };`
`                   `
`                   admins = admins.filter(filter);`
`                   rollbackers = rollbackers.filter(filter);`
`                   patrollers = patrollers.filter(filter);`

`                   var userlink = function(user) {`
`                       var user2 = user.replace(/&/g, '&').replace(/</g, '<').replace(/>/g, '<');`
`                       return '`<a href="/wiki/User:' + user2 + '" target="_blank">`' + user2 + '`</a>` `<small style="opacity:.75;">`(`<a href="/wiki/User talk:' + user2 + '" target="_blank">`留言`</a>`)`</small>`　';`
`                   }`
`                   `
`                   if (admins.length + rollbackers.length + patrollers.length > 0) {`
`                       var adminsstring = [wgULS('`

下面是最近30分钟之内在线的管理人员

', '

下面是最近30分鐘內的線上管理人員

')\];

`                       if (admins.length > 0) {`
`                           adminsstring.push('`

' + wgULS('管理员', '管理員') + ' (' + admins.length + wgULS('个在线', '個在線') +
')：');

`                           $.each(admins, function(i, e) {`
`                               adminsstring.push(userlink(e));`
`                           });`
`                           adminsstring.push('`

');

`                       }`

`                       if (patrollers.length > 0) {`
`                           adminsstring.push('`

' + wgULS('巡查员', '巡查員') + ' (' + patrollers.length + wgULS('个在线', '個在線')
+ ')：');

`                           $.each(patrollers, function(i, e) {`
`                               adminsstring.push(userlink(e));`
`                           });`
`                           adminsstring.push('`

');

`                       }`

`                       if (rollbackers.length > 0) {`
`                           adminsstring.push('`

' + wgULS('回退员', '回退員') + ' (' + rollbackers.length + wgULS('个在线',
'個在線') + ')：');

`                           $.each(rollbackers, function(i, e) {`
`                               adminsstring.push(userlink(e));`
`                           });`
`                           adminsstring.push('`

');

`                       }`

`                       mw.notify($(adminsstring.join('')));`
`                   } else {`
`                       mw.notify(wgULS('目前没有管理人员在线。', '目前沒有管理人員在線。'));`
`                   }`
`               }).fail(function () {`
`                   mw.notify(wgULS('查询时发生错误，请稍后重试。', '查詢時發生錯誤，請稍後重試'));`
`               });`
`           });`
`       });`
`   });`

})(jQuery, mw);