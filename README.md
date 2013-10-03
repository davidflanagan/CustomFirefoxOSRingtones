CustomFirefoxOSRingtones
========================

A FirefoxOS app that demonstrates how to handle the "pick" activity to
provide new ringtones for the system.

To try it out, you'll need a FirefoxOS device running version 1.2 or
later of the operating system.  To install this app, visit
http://davidflanagan.github.io/CustomFirefoxOSRingtones/install.html
using the FirefoxOS browser app and click on the Install button you
see there.

This is a "system" app, so you won't see an icon on the homescreen
when you install it.  After installing, open the Settings app and
click on Sound. Then tap to change your ringtone. You should get a
choice of "System Ringtones" or "My Ringtones".  That second option is
this app. Select it, and you'll see (and hear) new ringtone options!

To uninstall the app use Settings -> App Permissions.

The important files in this repo are the following:

- Makefile: creates a packaged version of the app named myringtones.zip

- myringtones.webapp: The mini-manifest required to install the myringtones.zip package

- install.html: Load this file in the FirefoxOS browser and click the
  button to install the app. Note that this file includes a hardcoded
  URL. Use the version at
  http://davidflanagan.github.io/CustomFirefoxOSRingtones/install.html
  (Long URLs are hard on mobile devices, so you can also use
  http://git.io/djf instead) 

- myringtones/ The demo app itself

- myringtones/manifest.webapp: The app manifest file. This manifest
  does two important things. First, it includes an 'activities'
  property that declares that this app wants to handle 'pick'
  activities for the type 'ringtone'.  Second, it specifies that this
  app has a 'role' of 'system'. That means that the app does not
  appear on the homescreen, and is only invoked to handle that pick
  activity.

- myringtones/index.html: This is the app's entry point. It is listed
  in the manifest file as the 'href' for the 'pick' activity.

- myringtones/myringtones.js: This is probably the file you want to
  read. It includes the code that handles the pick activity.

- myringtones/myringtones.css: My apologies for the visual design!

- myringtones/sounds/*.ogg: The ringtone audio files. Composed by my son.
