## Application design and planning
This stuff should get migrated into GitHub project at some point.

### Goals
Provide simple GUI for updating sudoers files safely.

### Initial Features
The features in this section are planned for the initial release.

#### Integration with visudo
Whenever the app edits a file, it should do so via the visudo command.  This
ensures the app doesn't do anything really stupid.  This does not guarantee
the user won't screw up their system.

#### Proper integration with GNUstep
Leaving this vague, but the idea here is the app should look and feel like a
GNUstep app.  Obvious GNUstep features that might be expected to work should
work.

#### Manage sudoers.d files
Initially, for safety reasons, Sudedito will only edit files in the sudoers
include directory.  It will assume this directory is found in */etc/sudoers.d*
and that this directory is included by the default sudoers file found.

At the intial version, Sudedito will tag the files it creates in some way and
will refuse to edit any files that it did not create.  The app is intended to
provide drop-in files that can override default settings.

#### Create and edit User specifications
GUI for CRUD operations on User spcifications.  The sudoers directives tell
sudo which commands can be executed by which users.

The general format is something like:

```
User Host = (Run:As) Tags Cmd
```

A real-world example might be:

```
%admin ALL = (ALL:ALL) NOPASSWD: ALL
```

### Later Features

#### Warning
App should present a descriptive warning when launched for the first time.
The user needs to know that - while every precaution has been taken - this is
a dangerous app and may leave your system in a state making it impossible for
non-root users to use sudo.

#### Edit well-formed sudoers.d files
Should allow app to edit any file in the sudoers include directory.  Should
popup a warning or refuse to edit a file that is malformed or has any bits
that the app cannot handle.

#### Edit primary sudoers file
Should allow app to edit the main sudoers file.

#### Edit alternate files
Should allow user to specify file to edit from any path.

#### Auditing
App should be able to audit the entire configuration to provide context about
what exactly will change, to understand what changes are safe for the app to
make in files that the app didn't create and generally perform full parsing
of sudoers to facilitate a better user experience.
