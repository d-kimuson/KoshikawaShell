#!/bin/sh

script_path=`pwd`"/koshikawa.sh"
echo "export KOSHIKAWA_ROOT=$(pwd)" >> ~/.bash_profile

chmod a+x ./uninstall.sh
chmod a+x $script_path
sed -i -e "s#$script_path##g" ~/.bash_profile
\rm ~/.bash_profile-e
printf "Set koshikawa shell as the default shell ? (y/n) >> "; read ans
if [ "${ans}" != 'n' ]; then
  echo "$script_path" >> ~/.bash_profile
fi
