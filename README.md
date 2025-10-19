# kiwix-server + kiwix-zim-updater

A container image to update `*.zim` files before hosting them.

## SOURCES

* https://github.com/jonboiser/dockerized-kiwix-server
    * It contains this fix: https://github.com/jonboiser/dockerized-kiwix-server/pull/3/files
* https://github.com/jojo2357/kiwix-zim-updater

## USAGE regular

* `podman build -t wizix .`
* `podman run -v ~/Documents/wizix/:/zims -ti -p 8080:8080 wizix`

## USAGE compose

* `podman compose build`
* `podman compose run`