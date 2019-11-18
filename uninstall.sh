#!/bin/sh

script_path=`pwd`"/koshikawa.sh"

printf "Remove Koshikawa Shell from default ? (y/n) >> "; read ans
if [ "${ans}" != 'n' ]; then
  sed -i -e "s#$script_path##g" ~/.bash_profile
fi

printf "Uninstall Packeage management tool: wakashiko ? (y/n) >> "; read ans
if [ "${ans}" != 'n' ]; then
  cat ~/.bash_profile | grep "source `echo $KOSHIKAWA_ROOT`" | xargs -Itarget sed -i -e "s#target##g" ~/.bash_profile
fi

\rm ~/.bash_profile-e
