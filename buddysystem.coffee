buddySystem = (objs) ->
  for o in objs
    s = String o.innerHTML 
    l = s.match(/\s/g).length - 1
    r = new RegExp '((?:[^ ]* ){' + l + '}[^ ]*) ' 
    o.innerHTML = s.replace r,"$1&nbsp;"
