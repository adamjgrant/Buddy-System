pjson = require '../package.json'

module.exports = (jQuery) ->
	
	jQuery.fn.buddySystem = () -> 
	  @each -> jQuery(@).html (jQuery(@).html().substring(0, jQuery(@).html().lastIndexOf(' ')) + '&nbsp;' + jQuery(@).html().substring(jQuery(@).html().lastIndexOf(' ') + 1, jQuery(@).html().length));

	jQuery.fn.buddySystem.ver = pjson.version

	return jQuery;
