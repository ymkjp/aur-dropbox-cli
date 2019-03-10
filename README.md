AUR dropbox-cli
===

### Maintening Package

1. Read through [ArchWiki](https://wiki.archlinux.org/index.php/Arch_User_Repository#Getting_started) and uphold prerequisites
1. Fix `PKGBUILD`
1. Install [namcap](https://wiki.archlinux.org/index.php/Namcap) and run `make lint` if you made a major change other than usual maintenance
1. Perform `make build install` to verify the installation process
1. Push the artifacts to AUR
