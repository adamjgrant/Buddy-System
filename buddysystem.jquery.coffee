(($) -> $.fn.buddySystem = () -> 
  @each -> $(@).html ($(@).html().replace (new RegExp '((?:[^ ]* ){' + ($(@).html().match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;")
)(jQuery)