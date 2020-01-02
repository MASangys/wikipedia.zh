> 本文内容由[MediaWiki:Gadget-CommentsInLocalTime.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-CommentsInLocalTime.js)转换而来。


/\*

`       From: `<http://en.wikipedia.org/wiki/User:Gary_King/comments_in_local_time.js>
`   Documentation: `[`Wikipedia:Comments``   ``in``   ``Local``   ``Time`](https://zh.wikipedia.org/wiki/Wikipedia:Comments_in_Local_Time "wikilink")

  - /

$(function() {

`   /*`
`       Settings`
`   */`
`   if (typeof(LocalComments) == 'undefined')`
`       LocalComments = {};`

`   if (typeof(LocalComments.dateFormat) == 'undefined')`
`   {`
`       // Deprecated: LocalizeConfig`
`       if (typeof(LocalizeConfig) != 'undefined' && typeof(LocalizeConfig.dateFormat) != 'undefined' && LocalizeConfig.dateFormat != '')`
`           LocalComments.dateFormat = LocalizeConfig.dateFormat;`
`       else`
`           LocalComments.dateFormat = 'dmy';`
`   }`

`   if (typeof(LocalComments.timeFirst) == 'undefined')`
`       LocalComments.timeFirst = true;`
`   /*`
`       End Settings`
`   */`

`   if (mw.config.get('wgCanonicalNamespace') == '' || mw.config.get('wgCanonicalNamespace') == 'MediaWiki' || mw.config.get('wgCanonicalNamespace') == 'Special')`
`       return;`

`   var disabled_urls = new Array('action=history'), unique_url = false, wikiPreview = new Array('action=edit', 'action=submit');`
`   for (var i = 0; i < disabled_urls.length; i++)`
`   {`
`       if (document.location.href.indexOf(disabled_urls[i]) != -1)`
`           return;`
`   }`

`   for (var i = 0; i < wikiPreview.length; i++)`
`   {`
`       if (document.location.href.indexOf(wikiPreview[i]) != -1)`
`           unique_url = 'wikiPreview';`
`   }`

`   var element_id = unique_url ? unique_url : 'bodyContent';`
`   document.getElementById(element_id).innerHTML = document.getElementById(element_id).innerHTML.replace(/(\d\d):(\d\d), (\d{1,2}) ([A-Z][a-z]+) (\d{4}) `\(UTC\)`/g, adjust_time);`

});

function add_leading_zero(number) {

`   if (number < 10)`
`       number = '0' + number;`
`   return number;`

}

function adjust_time(original_timestamp, old_hour, old_minute, old_day, old_month, old_year, offset) {

`   var today = new Date(), yesterday = new Date(), tomorrow = new Date();`
`   yesterday.setDate(yesterday.getDate() - 1);`
`   tomorrow.setDate(tomorrow.getDate() + 1);`

`   // set the date entered`
`   var time = new Date();`
`   time.setUTCHours(old_hour);`
`   time.setUTCMinutes(old_minute);`
`   time.setUTCMonth(convert_month_to_number(old_month));`
`   time.setUTCDate(old_day);`
`   time.setUTCFullYear(old_year);`

`   // determine the time offset`
`   var utc_offset = -1 * time.getTimezoneOffset() / 60;`
`   if (utc_offset >= 0)`
`       utc_offset = '+' + utc_offset;`
`   else`
`       utc_offset = '−' + Math.abs(utc_offset);`

`   // set the date bits to output`
`   var year = time.getFullYear(), month = add_leading_zero(time.getMonth() + 1);`
`   var day = time.getDate();`
`   var hour = parseInt(time.getHours()), minute = add_leading_zero(time.getMinutes());`

`   // output am or pm depending on the date`
`   var ampm = 'am';`
`   if (hour > 11) ampm = 'pm';`
`   if (hour > 12) hour -= 12;`
`   if (hour == '00') hour = 12;`

`   // return 'today' or 'yesterday' if that is the case`
`   if (year == today.getFullYear() && month == add_leading_zero(today.getMonth() + 1) && day == today.getDate())`
`       var date = 'Today';`
`   else if (year == yesterday.getFullYear() && month == add_leading_zero(yesterday.getMonth() + 1) && day == yesterday.getDate())`
`       var date = 'Yesterday';`
`   else if (year == tomorrow.getFullYear() && month == add_leading_zero(tomorrow.getMonth() + 1) && day == tomorrow.getDate())`
`       var date = 'Tomorrow';`
`   else`
`   {`
`       // calculate day of week`
`       var day_names = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'), day_of_the_week = day_names[time.getDay()];`

`       // the distance in days from today and last Monday?`
`       today = new Date(today.getYear(), today.getMonth(), today.getDate());`
`       time = new Date(time.getYear(), time.getMonth(), time.getDate());`

`       // calculate time difference`
`       var milliseconds_ago = today.getTime() - time.getTime(), days_ago = Math.round(milliseconds_ago / 1000 / 60 / 60 / 24);`

`       // the difference between today and the timestamp`
`       var difference, difference_word = '', last = '';`
`       if (today.valueOf() >= time.valueOf())`
`       {`
`           difference = new Date(today.valueOf() - time.valueOf());`
`           difference_word = 'ago';`
`           if (days_ago <= 7)`
`               last = 'last ';`
`       }`
`       else`
`       {`
`           difference = new Date(time.valueOf() - today.valueOf());`
`           difference_word = 'from now';`
`           if (days_ago >= -7)`
`               last = 'this ';`
`       }`
`       var descriptive_difference = [];`

`       if (difference.getYear() - 70 > 0)`
`       {`
`           var years_ago = (difference.getYear() - 70) + ' ' + pluralize('year', difference.getYear() - 70, 'years');`
`           descriptive_difference.push(years_ago);`
`       }`
`       if (difference.getMonth() > 0)`
`       {`
`           var months_ago = difference.getMonth() + ' ' + pluralize('month', difference.getMonth(), 'months');`
`           descriptive_difference.push(months_ago);`
`       }`
`       if (difference.getDate() > 0)`
`       {`
`           var new_days_ago = difference.getDate() + ' ' + pluralize('day', difference.getDate(), 'days');`
`           descriptive_difference.push(new_days_ago);`
`       }`

`       // format the date according to user preferences`
`       var formatted_date = '', month_name = convert_number_to_month(time.getMonth());`

`       switch (LocalComments.dateFormat.toLowerCase())`
`       {`
`           case 'dmy':`
`               formatted_date = day + ' ' + month_name + ' ' + year;`
`               break;`
`           case 'mdy':`
`               formatted_date = month_name + ' ' + day + ', ' + year;`
`               break;`
`           default:`
`               formatted_date = year + '-' + month + '-' + add_leading_zero(day);`
`       }`

`       var date = formatted_date + ', ' + last + day_of_the_week + ' (' + descriptive_difference.join(', ') + ' ' + difference_word + ')';`
`   }`

`   var time = hour + ':' + minute + ' ' + ampm;`

`   if (LocalComments.timeFirst)`
`       var return_date = time + ', ' + date + ' (UTC' + utc_offset + ')';`
`   else`
`       var return_date = date + ', ' + time + ' (UTC' + utc_offset + ')';`
`   return '`<span style="font-size: 95%; white-space: nowrap;"><span class="localcomments" title="' + original_timestamp + '">`' + return_date + '`</span></span>`';`

}

function convert_month_to_number(month) {

`  var output = new Date(month + ' 1, 2001');`
`  return output.getMonth();`

}

function convert_number_to_month(number) {

`   var month = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');`
`   return month[number];`

}

function pluralize(term, count, plural) {

` if (plural == null)`
`   plural = term + 's';`

` return (count == 1 ? term : plural)   `

}