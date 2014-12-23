#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
rm -rf _site/*
jekyll build

rsync -avz --chmod=Fo=r _site/ -e ssh lb.magnet.me:/opt/blog.magnet.me/
