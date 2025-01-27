#!/usr/bin/env zsh

git submodule sync
git submodule foreach --recursive git reset --hard
git submodule update --init --recursive
