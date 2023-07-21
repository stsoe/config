Install emacs28
===============
% sudo apt remove --autoremove emacs emacs-common
% sudo add-apt-repository ppa:kelleyk/emacs
% sudo apt update
% sudo apt install emacs28

Install Node.js version 18.16 or later
======================================
Download and install package from https://nodejs.org/en/download
My install is in /usr/local/lib/nodejs/node-v18.16.0-linux-x64

I did not add `node` to my PATH and instead wraps `emacs`

% cat /home/<user>/bin/emacs
#!/bin/bash
... <my private settings> ...

# PATH to include node.js
VERSION=v18.16.0
DISTRO=linux-x64
PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

/usr/bin/emacs -name $nm $* >& /dev/null

if [ $? != 0 ]; then
  /usr/bin/emacs -name $nm $*
fi

Link or copy /edit content of this folder to your ~/emacs.d folder
==================================================================
Maybe familiarize yourself with content of at least init.el and
custom.el in this folder.  It may very well conflict with your
preferrred settings.  I run emacs on many different computers so
this folder has my preferred settings which I can simply link to.
% ln -s <PATH>/config/emacs/* ~/emacs.d/

Invoke emacs and install the necessary packages for using copilot
=================================================================
% emacs
Complains that 'init-copilot (see init.el bottom) fails because of
missing packages.  Install 's, 'dash, and 'editorconfig from within
emacs

emacs> M-x package-install RET s RET
emacs> M-x package-install RET dash RET
emacs> M-x package-install RET editorconfig RET

Restart emacs which should now start without init.el warnings or errors.

Authorize GitHub.com copilot
============================
Go to your github.com/setings/copilot and authorize GitHub
Copilot as a GitHub App.

Login into copilot within emacs
===============================
First go to your github.com/setings/copilot and authorize GitHub
Copilot as a GitHub App.
To see all commands
emacs> M-x copilot-<TAB>

To login, which will invoke chrome and be more or less self explaining
emacs> M-x copilot-login

Above will start copilot but presents a device ID in the status bar.
(1) Make a note of this device id.
(2) Copy the URL from the emacs window and
(3) Open URL in your browser.
(4) Enter the device ID and accept
(5) Back in emacs window, click enter in the status bar

copilot should now work from emacs






