#!/bin/bash

# SOURCE: https://github.com/jonboiser/dockerized-kiwix-server

ZIMDIR=${ZIMDIR:-/zims}
LIBRARY_XML=/library.xml

touch /library.xml

# NOTE: Download kiwix-zip-updater and run.
git clone https://github.com/jojo2357/kiwix-zim-updater.git /scripts/kiwix-zim-updater
chmod +x /scripts/kiwix-zim-updater/kiwix-zim-updater.sh
/scripts/kiwix-zim-updater/kiwix-zim-updater.sh "$ZIMDIR"

# NOTE: Scan and add *.zim files.
for f in "$ZIMDIR"/*.zim; do
  if [[ -f "$f" ]]; then
    ( set -x; kiwix-manage "$LIBRARY_XML" add $f )
  fi
done

kiwix-serve --port 8080 --library "$LIBRARY_XML"