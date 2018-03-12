#!/usr/bin/env bash

# tag the repo if a tag doesnt already exist for VERSION
# a zero status code will be signal to caller that it should push tags
VER=$(cat VERSION)
if [[ $(git --no-pager tag -l tf-${VER} |wc -l) -eq 0 ]]; then
    git tag tf-${VER}
else
    echo "VERSION already has a tag"
    exit 1
fi
