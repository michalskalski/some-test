#!/bin/bash
set -eux
LATEST_TAG=$(git tag -l --sort=-version:refname "${GIT_TAG_PREFIX}*" | head -n 1)
LATEST_VER=${LATEST_TAG#$GIT_TAG_PREFIX}


