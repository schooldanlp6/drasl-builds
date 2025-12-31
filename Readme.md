# This github repo contains builds for every version tag

just switch the branch to your desired version and make install (no dependencies aside from libc 2.41 are required)

## y do I need the whole repo and not just the drasl executable?
because unfortunately as you can see the Makefile on the install script requires it because the repo contains curcial assets for building.

also note that I'll provide only amd64 builds but it is as easy as swapping out the drasl or just compiling from source if you have golang and other dependencies installed for more information visit the official guid from drasl: https://github.com/unmojang/drasl/blob/master/doc/installation.md

# to switch to version 3.3.0
```git checkout -b 3.3.0```

### supported branches
- 3.4.0
- 3.3.0
- 3.2.0

only the latest 3 builds will be synced to my github dm me for older builds.

# Very important
to not need to install dependencies go in the Makefile with nano (or your editor of choice) and delete the "build" command on the entry install.

happy drasling :)
