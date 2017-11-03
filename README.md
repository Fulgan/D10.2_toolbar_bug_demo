# D10.2_toolbar_bug_demo
Demo for D10.2 toolbar bug

The bug occurs in the following condition:
- A form has a TToolbar component with several TToolButton with icons
- There are several separator in the toolbar between buttons.
- One (or more) of the toolbar buttons are initially disabled (at least, they are disabled when the "onshow" event is called)
- The form is scaled using the ChangeScale method.

As soon as the buttons are re-enabled, some of the separators will "copy" the icon of the button of their right and the buttons themselves will not be enabled (the separator will). This does not seem to affect the first separator. All other separators will be affected.
