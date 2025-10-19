# kiwix-server + kiwix-zim-updater

A docker image to scan and host `*.zim` files.

## SOURCES

* https://github.com/jonboiser/dockerized-kiwix-server
    * It contains this fix: https://github.com/jonboiser/dockerized-kiwix-server/pull/3/files
* https://github.com/jojo2357/kiwix-zim-updater

## USAGE

* `docker build -t wizix .`
* `docker run -v ~/wizix/:/zims -ti -p 8080:8080 wizix`