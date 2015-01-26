# Buddy-System

#### Created by: [ajkochanowicz](https://github.com/ajkochanowicz)
#### [Demo](http://codepen.io/ajkochanowicz/pen/mKbtB)
#### [Demo (jQuery)](http://codepen.io/ajkochanowicz/pen/ezEmp)

Avoids single words breaking onto the last line of text.

# Install
```
npm install buddy-system
```

## Require in node (currently only supported as a jquery plugin)
```
var $ = require('jquery');
require('buddy-system')($); <----- Attaches itself to the jquery object
```

# Usage

## Without jQuery

Use dist/buddysystem.js and simply pass in an array of objects into ``buddySystem()``

    objs = document.getElementsByClassName('corrected')
    buddySystem(objs)
    
## With jQuery

Use dist/buddysystem.jquery.js after jQuery and $.buddySystem() on any element or elements.

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

# Want to contribute?
```
git clone https://github.com/olsonpm/buddy-system.git
cd buddy-system
npm install
make test
// dev your heart out
```
