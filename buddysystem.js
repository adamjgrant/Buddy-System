window.buddySystem = function(objs) {
  var l, o, r, s, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = objs.length; _i < _len; _i++) {
    o = objs[_i];
    s = String(o.innerHTML);
    l = s.match(/\s/g).length - 1;
    r = new RegExp('((?:[^ ]* ){' + l + '}[^ ]*) ');
    _results.push(o.innerHTML = s.replace(r, "$1&nbsp;"));
  }
  return _results;
};