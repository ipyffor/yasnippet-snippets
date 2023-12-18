#!/usr/bin/env bash
# Author: gotpl <631707329@qq.com>
# Maintainer: gotpl <631707329@qq.com>
# Created: 2023-12-18 17:08:55
# Modified: 2023-12-18 17:09:35


cd snippets
find . -type d -name '*-mode' ! -name '*-ts-mode' -exec bash -c 'for d; do newname=$(echo "$d" | sed "s/-mode/-ts-mode/"); ln -s "$d" "$newname"; done' _ {} +
