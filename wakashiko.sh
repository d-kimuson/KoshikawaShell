#!/bin/bash

function wakashiko() {
    CWD=$(pwd)

    if [ $# -ne 1 ]; then
        echo "args must be 1"
        wakashiko help
    elif [ $1 = "help" ]; then
        echo "## Wakashiko Help ##"
        echo "- start: start koshikawa shell"
        echo "- stop: stop koshikawa shell"
        echo "- update: update koshikawa shell to latest version"
        echo "- install: set koshikawa shell as default"
        echo "- uninstall: unset koshikawa shell as default"
    elif [ $1 = "start" ]; then
        # start koshikawa shell
        $KOSHIKAWA_ROOT/koshikawa.sh
    elif [ $1 = "stop" ]; then
        # stop koshikawa shell
        exit
    elif [ $1 = "update" ]; then
        # update latest version
        cd $KOSHIKAWA_ROOT
        printf "Now updating Koshikawa Shell ... "
        git pull origin master
        echo "Complete!!"
        cd $CWD
    elif [ $1 = "install" ]; then
        # set default
        cd $KOSHIKAWA_ROOT
        ./install.sh
        cd $CWD
    elif [ $1 = "uninstall" ]; then
        # set undefault
        script_path=${KOSHIKAWA_ROOT}"/koshikawa.sh"
        sed -i -e "s#$script_path##g" ~/.bash_profile
        echo "Koshikawa Shell is uninstalled .."
    else
        echo "Argument: "$1" not found."
        wakashiko help
    fi
}