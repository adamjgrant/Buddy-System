window.buddySystem = (objs) ->
  for o in objs
    s = String o.innerHTML;(o.innerHTML = s.substring(0, jQuery(@).html().lastIndexOf(' ')) + '&nbsp;' + jQuery(@).html().substring(jQuery(@).html().lastIndexOf(' ') + 1, jQuery(@).html().length)) if s
