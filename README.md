Wedding site of Jennifer and Daniel [![Build Status](https://travis-ci.org/rennerDa/wedding-site.svg?branch=master)](https://travis-ci.org/rennerDa/wedding-site)
============

Jennifer and mine wedding site with some information about our wedding and all of the pictures, which only can be seen if you have a login to the page :) .
This site is especially for our friends which want to have a look on our pictures of our wedding activities
like bachelor parties from both of us, forging our own rings and the wedding itself.

Imagemagick commands to resize the pictures
------------
Resize pictures to a maximum height of 900 and a maximum width of 1170:<br>
```mogrify -resize 1170x900 *.jpg```

Create thumbnail - 253x253:<br>
```mogrify -thumbnail 253x253 -gravity center -background white -extent 253x253 -path thumbs *.jpg```

Create box-thumbnails (a little bit bigger) - 315x315<br>
```mogrify -thumbnail 315x315 -gravity center -background white -extent 315x315 -path box *.jpg```