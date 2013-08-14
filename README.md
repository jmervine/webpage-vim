# webpage-vim

Simple jQuery based browser lib for adding a few vim'ish key bindings to any web page.

> Currently beta, but included on http://mervine.net

Supported keybinds:

* `j`: down
* `k`: up
* `h`: left
* `l`: right
* `D`: down half page
* `U`: up half page
* `F`: down page
* `B`: up page
* `G`: page bottom
* `gg`: page top
* `/`: focus search box (if implemented)

## Installing

Add the following to your page:

    <head>
        <!-- jQuery's CDN provided by MaxCDN - http://www.maxcdn.com/ -->
        <script src="//code.jquery.com/jquery-1.10.1.min.js"></script>

        <!-- OPTIONAL:
             To enable '/' search selector, uncomment this script tag and
             update the value with your search box selector.
             See jQuery docs on how to find the correct value. -->
        <!--
        <script>var searchElement = '[jQuery Element Path]';</script>
        -->

        <!-- CDN provided jsDelivr - http://jsDelivr.net
              a big thanks to them for providing this for me! -->
        <script src="//cdn.jsdelivr.net/jquery.webpage-vim/0.1/vim.min.js"></script>
    </head>

## Extending

Simply update the `vim` object with a new key code and it's handler.

Example:

    function doSomethingNew() {
        ensureReady(function() {
            /* new action */
        });
    }

    /* where 999 is your event.keyCode */
    vim[999] = function() { doSomethingNew(); };

##### Ideally though, you should fork this and send me a pull request.

