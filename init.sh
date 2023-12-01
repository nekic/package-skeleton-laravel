#!/bin/sh

if [ ! -d ".git" ]; then
    git init
fi

docker run -it --rm --user 1000 --name liteapp-module-init -v /usr/bin/git:/usr/bin/git -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:8.2-cli php ./configure.php

