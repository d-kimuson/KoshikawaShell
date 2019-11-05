#!/bin/sh

script_path=`pwd`"/koshikawa.sh"

sed -i -e "s#$script_path##g" ~/.bash_profile
\rm ~/.bash_profile-e
