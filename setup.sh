#!/bin/sh

script_path=`pwd`"/koshikawa.sh"

chmod a+x ./uninstall.sh
chmod a+x $script_path
sed -i -e "s#$script_path##g" ~/.bash_profile
\rm ~/.bash_profile-e
echo "$script_path" >> ~/.bash_profile
