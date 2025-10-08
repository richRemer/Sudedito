Sudedito
========
The sudoers editor.

Building
-----------
Before building the project, you must install the following packages:

 * build-essential
 * gnustep
 * gnustep-devel

In addition, you will need to ensure your GNUstep environment is setup.  Add
the following to your user profile to import the environment when you login:

```sh
# include GNUstep resources
if [ -e /usr/share/GNUstep/Makefiles/GNUstep.sh ]; then
    source /usr/share/GNUstep/Makefiles/GNUstep.sh
fi
```

Finally, you should be able to use the standard GNU make to build:

```sh
make
```
