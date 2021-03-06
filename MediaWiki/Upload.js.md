> 本文内容由[MediaWiki:Upload.js](https://zh.wikipedia.org/wiki/MediaWiki:Upload.js)转换而来。


//

``` javascript

/***** LicenseChecker ********
 * checks whether the selected license on Special:Upload is valid
 * and provides feedback
 *
 * Maintainer: [[User:Dschwen|User:Dschwen]]
 ****/

var licenseChecker =
{
 //
 // List of invalid licenses
 //
 invalid : [ "subst:nld",
             "subst:template 2|cc-by-nc-sa-2.0|flickrreview",
             "subst:template 2|flickrreview|subst:nld" ],

 //
 // Translations of the warning message
 //
 i18n :
 {
  'de': 'Die ausgewählte <b>Lizenz ist nicht akzeptabel für Wikimedia Commons</b>. Dein <b>Upload wird gelöscht</b> werden!',
  'en': 'The selected licensing is <b>unacceptable on Wikimedia Commons</b> and will lead to the <b>deletion</b> of your upload!'
 },

 licensemenu : null,
 warnbanner  : null,
 message : '',

 // Event handler for the license selector
 check : function()
 {
  with(licenseChecker) {

   for( var n in invalid )
    if( licensemenu.value == invalid[n] )
    {
     warnbanner.innerHTML = message;
     return;
    }

   warnbanner.innerHTML = '';
  }
 },

 install : function()
 {
  if(window.location.href == "http://commons.wikimedia.org/wiki/Special:Upload")
  {
   with(licenseChecker) {
    warnbanner = document.createElement('DIV');
    warnbanner.className = 'center';
    warnbanner.style.color = 'red';
    warnbanner.style.background = '#eeeeee';

    var uploadtext  = document.getElementById('uploadtext');
    // Check for skins not providing the uploadtext ID
    if( typeof(uploadtext) == 'undefined' ) return;
    uploadtext.appendChild( warnbanner );

    if( typeof(i18n[wgUserLanguage]) == 'string' )
     message = i18n[wgUserLanguage];
    else
     message = i18n.en;

    licensemenu = document.getElementById('wpLicense');
    addEvent( licensemenu , 'change', check );
   }
  }
 }
}
$( licenseChecker.install );


/***** loadAutoInformationTemplate ********
 * Adds a link to subpages of current page
 *
 *  Maintainers: [[User:Yonidebest|User:Yonidebest]], [[User:Dschwen|User:Dschwen]]
 *
 *  JSconfig items: bool JSconfig.loadAutoInformationTemplate
 *                       (true=enabled (default), false=disabled)
 ****/

function loadAutoInformationTemplate()
{

 if( !JSconfig_old.loadAutoInformationTemplate || // honor user configuration
   document.location.href.toString().match("&wpDestFile=")) //Don't show when reuploading
  return;

 uploadDescription = document.getElementById('wpUploadDescription');
 var tripleTilda = '~~' + '~';
 var doubleBracket = '{' + '{';
 if(uploadDescription != null && wgUserLanguage != 'fromflickr' && wgUserLanguage != 'fromwikimedia' && wgUserLanguage != 'fromgov'
    && uploadDescription.value == '' ) {
  switch(wgUserLanguage) {
   case "ownwork":
   case "elownwork":
   case "esownwork":
   case "itownwork":
   case "noownwork":
   case "svownwork":
    uploadDescription.value = doubleBracket + 'Information\n|Description=\n|Source=self-made\n|Date=\n|Author= [[User:'_+_wgUserName_+_'|' + wgUserName + ']]\n}}\n';
    break;
   case "deownwork":
    uploadDescription.value = doubleBracket + 'Information\n|Description=\n|Source=eigene arbeit\n|Date=\n|Author= [[User:'_+_wgUserName_+_'|' + wgUserName + ']]\n}}\n';
    break;
   case "frownwork":
    uploadDescription.value = doubleBracket + 'Information\n|Description=\n|Source=travail personnel\n|Date=\n|Author= [[User:'_+_wgUserName_+_'|' + wgUserName + ']]\n}}\n';
    break;
   case "nlownwork":
    uploadDescription.value = doubleBracket + 'Information\n|Description=\n|Source=eigen werk\n|Date=\n|Author= [[User:'_+_wgUserName_+_'|' + wgUserName + ']]\n}}\n';
    break;
   /* don't put fromflickr, as people should use flinfo tool */
   /* don't put fromwikimedia, as people should use commons helper tool */
   case "fromgov":
    uploadDescription.value = doubleBracket + 'Information\n|Description=\n|Source=\n|Date=\n|Author=\n}}\n';
    break;
   default:
    uploadDescription.value = doubleBracket + 'Information\n|Description=\n|Source=\n|Date=\n|Author=\n|Permission=\n|other_versions=\n}}\n';
    break;
  }
 }
}
$(loadAutoInformationTemplate);

/*
Automatically adds the {{{author}}} attribute when an image
if uploaded under a {{tl|self}} license. It will show as
''I, [[User:foo|]], the copy[...]''.
*/
function attributeSelf()
{
 if (!JSconfig_old.attributeSelf) return;
 var licenses = document.getElementById('wpLicense');
 for (var i = 0; i < licenses.childNodes.length; i++)
 {
  var license = licenses.childNodes[i];
  if (license.nodeName.toLowerCase() == 'option')
  {
   if (license.getAttribute('value').substr(0, 5) == 'self|' ||
       license.getAttribute('value') == 'PD-self' ||
       license.getAttribute('value') == 'GFDL-self')
   {
    license.setAttribute('value', license.getAttribute('value') + "|author=I, [[User:"_+_wgUserName_+_'|' + wgUserName + "]]");
   }
  }
 }
}
// Disabled due to grammar errors
// $(attributeSelf);

//
```