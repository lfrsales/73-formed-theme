# Custom 7.3 Theme Based on Liferay's Classic Theme

A simple Liferay theme that allows for easy customization of the color scheme using Style Books.

### Set Up

1. `npm install`
2. `npm run init`
3. `npm run deploy`

![screenshot](/images/screenshot.png)

### Features

* Customizable Header and Footer Colors
* Sticky Header
* Customizable Logo Alignment
* Language Selector
* Modal for Login
* Customizable Link Colors
* Show or Hide the Control Menu for logged in Users via the personal menu.
	* This requires an additional module available [here](https://github.com/lfrsales/toggle-control-menu-personal-menu-entry/blob/master/modules/toggle-control-menu-personal-menu-entry/build/libs/com.liferay.users.admin.web.internal.product.navigation.personal.menu.toggle.control.menu-1.0.0.jar).
	* There is one known bug, that sometimes if you have just toggled the Control Menu, the next time it is toggled it won't work, but the following time will work.