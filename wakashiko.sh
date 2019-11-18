#!/bin/bash

function wakashiko() {
    CWD=$(pwd)

    if [ $# -ne 1 ]; then
        echo "args must be 1"
        wakashiko help
    elif [ $1 = "help" ]; then
        echo "## Wakashiko Help ##"
        echo "- start: start koshikawa shell"
        echo "- update: update koshikawa shell to latest version"
        echo "- uninstall: uninstall koshikawa shell & wakashiko"
    elif [ $1 = "start" ]; then
        # start koshikawa shell
        $KOSHIKAWA_ROOT/koshikawa.sh
    elif [ $1 = "update" ]; then
        # update latest version
        cd $KOSHIKAWA_ROOT
        printf "Now updating Koshikawa Shell ... "
        git pull origin master
        echo "Complete!!"
        cd $CWD
    elif [ $1 = "uninstall" ]; then
        cd $KOSHIKAWA_ROOT
        ./uninstall.sh
        echo "Koshikawa Shell is uninstalled .."
        cd $CWD
    else
        echo "Argument: "$1" not found."
        wakashiko help
    fi
}