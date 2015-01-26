pjson = require '../package.json'

module.exports = (jQuery) ->
	
	jQuery.fn.buddySystem = () -> 
	  @each -> $(@).html ($(@).html().replace (new RegExp '((?:[^ ]* ){' + (($(@).html().match(/\s/g) || []).length - 1) + '}[^ ]*) '), "$1&nbsp;")

	jQuery.fn.buddySystem.ver = pjson.version

	return jQuery;
