#!/bin/bash

# SOURCE: https://github.com/jonboiser/dockerized-kiwix-server

# Get most recent version of 'kiwix-tools' from its channel's feed.xml
wget https://download.kiwix.org/release/kiwix-tools/feed.xml
# NOTE: This patch required: https://github.com/jonboiser/dockerized-kiwix-server/pull/3/files
# NOTE: And `sort` added for proper last patched version.
TAR_FILE="$(grep -oP '(?<=<title>)kiwix-tools_linux-x86_64-[0-9].*(?=</title>)' feed.xml | sort -V | tail -n1)"

# Install latest version of kiwix-tools
wget -O "${TAR_FILE}" https://download.kiwix.org/release/kiwix-tools/"${TAR_FILE}"
tar -xvzf "${TAR_FILE}" -C ./bin --strip-components 1

rm -f feed.xml
rm -f "${TAR_FILE}"