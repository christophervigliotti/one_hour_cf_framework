# The One-Hour ColdFusion Framework 

LOL

## Bugs
* FIXED view isn't loading (d'oh)

## Techologies Used
* ColdFusion 2021 (and included Apache Derby db)
* Bootstrap 5 (via CDN)
* jQuery (via CDN)

## What Does It Do
```
controller file 
    builds template name and optional js file from url.action
    builds the page title from url.action (with optional override)
this page
    loads header, view and footer
ajax_test.html
    created to test a few things
    1. does a static html page process an ajax request if you are browsing it locally (vs running it in a web server). the answer is no it doesnt'
    2. can i return anything from ajax (this readme file for example).  the answer is yes.
```
## What Doesn't It Do
```
anything not mentioned above
dependency injection
handle different headers and footers
contain a much-needed Application.cfm file
```
## What's Next?
```
DONE add in bootstrap so that it doesn't look horrible
that's about it (this was more of a quick thought than anything)
getView 
    should be handled as handleAction, 
    should perform action(s) for the current, specified action 
    and then should return results
    it should also handle routing/redirects
    also security!
```
