window.buddySystem = (objs) ->
  for o in objs
    s = String o.innerHTML
    # Remove double white space and spaces leading and trailing a string.
    s.replace(/\s+/g, " ").replace /^\s|\s$/g, ""
    # Find and replace last space of cleaned string
    (o.innerHTML = s.replace((new RegExp '((?:[^ ]* ){' + ((s.match(/\s/g) || 0).length - 1) + '}[^ ]*) '),"$1&nbsp;")) if s
