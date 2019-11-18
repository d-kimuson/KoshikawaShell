#!/bin/bash

script_path=`pwd`"/koshikawa.sh"

# delete before
cat ~/.bash_profile | grep "export KOSHIKAWA_ROOT" | xargs -Itarget sed -i -e "s#target##g" ~/.bash_profile
cat ~/.bash_profile | grep "source `echo $KOSHIKAWA_ROOT`" | xargs -Itarget sed -i -e "s#target##g" ~/.bash_profile
sed -i -e "s#$script_path##g" ~/.bash_profile
\rm ~/.bash_profile-e

# setup config
echo "export KOSHIKAWA_ROOT=$(pwd)" >> ~/.bash_profile
echo "source "$KOSHIKAWA_ROOT"/wakashiko.sh" >> ~/.bash_profile

chmod a+x $script_path

printf "Set koshikawa shell as the default shell ? (y/n) >> "; read ans
if [ "${ans}" != 'n' ]; then
  sed -i -e "s#$script_path##g" ~/.bash_profile
  echo "$script_path" >> ~/.bash_profile
fi

echo "Complete."
echo "Pls run 'source ~/.bash_profile' to apply!"
