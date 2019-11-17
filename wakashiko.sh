#!/bin/bash

function wakashiko() {
    CWD=$(pwd)

    if [ $1 = "start" ]; then
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
    fi
}