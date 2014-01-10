(function($) {
return $.fn.buddySystem = function() {
  return this.each(function() {
    return $(this).html($(this).html().replace(new RegExp('((?:[^ ]* ){' + ($(this).html().match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;"));
  });
};
})(jQuery);