# kiwix-server + kiwix-zim-updater

A container image to update `*.zim` files before hosting them.

## SOURCES

* https://github.com/jonboiser/dockerized-kiwix-server
    * It contains this fix: https://github.com/jonboiser/dockerized-kiwix-server/pull/3/files
* https://github.com/jojo2357/kiwix-zim-updater

## USAGE regular

* `podman build -t leynebe/kiwix:main .`
* `podman run -v ~/Documents/kiwix/:/zims -ti -p 8080:8080 leynebe/kiwix:main`

## USAGE compose

* `podman compose build`
* `podman compose run`