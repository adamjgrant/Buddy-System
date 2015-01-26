(($) -> $.fn.buddySystem = () -> 
  @each -> jQuery(@).html (jQuery(@).html().substring(0, jQuery(@).html().lastIndexOf(' ')) + '&nbsp;' + jQuery(@).html().substring(jQuery(@).html().lastIndexOf(' ') + 1, jQuery(@).html().length));
)(jQuery)
