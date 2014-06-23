window.buddySystem = (objs) ->
  for o in objs
    s = String o.innerHTML;(o.innerHTML = s.replace((new RegExp '((?:[^ ]* ){' + ((s.match(/\s/g) || 0).length - 1) + '}[^ ]*) '),"$1&nbsp;")) if s
