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
* Customizable Form Styles
* Language Selector
* Modal for Login
	* NOTE: If the Modal for Login theme setting is enabled then you should not add a login widget to the page. This will cause a System Error when attempting to login. If you want to add a login widget to the page make sure to disable the Modal for Login theme setting and then the login will work as expected.
* Customizable Link Colors
* Show or Hide the Control Menu for logged in Users via the personal menu.
	* This requires an additional module available [here](https://github.com/lfrsales/toggle-control-menu-personal-menu-entry/blob/master/modules/toggle-control-menu-personal-menu-entry/build/libs/com.liferay.users.admin.web.internal.product.navigation.personal.menu.toggle.control.menu-1.0.0.jar).
