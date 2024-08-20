# git

https://git-scm.com/

git for Linux
https://git-scm.com/download/linux

git for Windows
https://gitforwindows.org/


## Installation

```bash
apt-get install git

# For Ubuntu, this PPA provides the latest stable upstream Git version
sudo add-apt-repository ppa:git-core/ppa
# PPA publishes dbgsym, you may need to include 'main/debug' component
# Repository: 'deb https://ppa.launchpadcontent.net/git-core/ppa/ubuntu/ jammy main'
# Description:
# The most current stable version of Git for Ubuntu.
#
# For release candidates, go to https://launchpad.net/~git-core/+archive/candidate
#
# ╔═════════════════════════════════════════════════════════╗
# ║ NOTE ABOUT THE "WEAK ALGORITHM" WARNING IN UBUNTU 24.04 ║
# ╚═════════════════════════════════════════════════════════╝
# For details about the warning
#   "W: https://ppa.launchpadcontent.net/git-core/ppa/ubuntu/dists/noble/InRelease:
#   Signature by key E1DD270288B4E6030699E45FA1715D88E1DF1F24 uses weak
#   algorithm (rsa1024)"
# see
# https://discourse.ubuntu.com/t/new-requirements-for-apt-repository-signing-in-24-04/42854
# https://bugs.launchpad.net/ubuntu/+source/software-properties/+bug/2065932
#
# There's nothing that PPA owners can do about this for now,
# as the key is fully controlled internally by Launchpad.
# More info: https://launchpad.net/~git-core/+archive/ubuntu/ppa
#
# Adding repository.
# Press [ENTER] to continue or Ctrl-c to cancel.

sudo apt update
sudo apt install git

# git version 2.46.0
```

On 2024-08-19
- installed git version 2.34.1 (via apt-get install git)
- latest git version is 2.46.0
- installed git version 2.46.0 (via ppa)



## Credential helper

```bash
# set path to gcm
# path if git installed in default location
GCM="/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
# path for git install via scoop in T:\lib\scoop\user\apps\git\2.46.0
GCM="/mnt/T/lib/scoop/user/apps/git/current/mingw64/bin/git-credential-manager.exe"
GCM="/mnt/T/lib/scoop/user/apps/git/2.46.0/mingw64/bin/git-credential-manager.exe"
# folder "2.46.0" is hardlinked to  ↑↑↑↑↑↑  "current" folder


git config --global credential.helper $GCM
```

Set *Git Credential Manager Core* by running:

```bash
git config --global credential.helper manager-core
```
