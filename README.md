# BuddySystem

#### [Demo](http://codepen.io/ajkochanowicz/pen/mKbtB)
#### [Demo (jQuery)](http://codepen.io/ajkochanowicz/pen/ezEmp)

![Buddy System](http://getkickstrap.com/1.x/static/buddysystem.png)

Avoids single words breaking onto the last line of text.

# Usage

## Without jQuery

Simply pass in an array of objects into ``buddySystem()``

    objs = document.getElementsByClassName('corrected')
    buddySystem(objs)
    
## With jQuery

Use $.buddySystem() on any element or elements.

    $('.corrected').buddySystem()
    
# How it works

Because you don't need yet another library in your app to do something so simple, this code snippet has been golfed to be as small as possible.

BuddySystem looks for the last space in a phrase like this one

    The rain in Spain falls mainly on the plains
    
And replaces it with ``&nbsp;``, causing the last two words to be parsed as one...holding hands together, the buddy system.

    The rain in Spain falls mainly on the&nbsp;plains
    
Of course, because ``&nbsp;`` is unicode markup for a non-breaking space, the text will appear as:

"The rain in Spain falls mainly on<br> 
the plains"

If the line breaks after the last "the".
