window.buddySystem = function(objs) {
  var o, s, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = objs.length; _i < _len; _i++) {
    o = objs[_i];
    s = String(o.innerHTML);
    _results.push(o.innerHTML = s.replace(new RegExp('((?:[^ ]* ){' + (s.match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;"));
  }
  return _results;
};