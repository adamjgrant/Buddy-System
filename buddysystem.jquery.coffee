(($) -> $.fn.buddySystem = () -> 
  @each ->
    $clean = $(@).html().replace(/\s+/g, " ").replace(/^\s|\s$/g, "")
    $(@).html(
      ($clean.replace (new RegExp '((?:[^ ]* ){' + (($clean.match(/\s/g) || []).length - 1) + '}[^ ]*) '), "$1&nbsp;")
    )
)(jQuery)
