# webpage-vim

Simple jQuery based browser lib for adding a few vim'ish key bindings to any web page.

Supported keybinds:


var searchElement = 'form#searchform input#searchbox';

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

> #### Search support:
> To activate search support, add the following anywhere in your `<head>` block.
>
>    <script>var searchElement = '[jQuery Element Path]';</script>
>
> See jQuery docs for finding Element Path.

## Extending

Simply update the `vim` object with a new key code and it's handler.

Example:

    function doSomethingNew() {
        if(ready) {
            // new action
        }
    }
    // where 999 is your event.keyCode
    vim[999] = function() { doSomethingNew(); };

> Note: `ready` is a simple timeout to avoid overloading the client should the key press be held down.

** Ideally though, you should fork this and send me a pull request. **

