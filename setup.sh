#!/bin/sh

chmod a+x ./koshikawa.sh && cp ./koshikawa.sh ~/
sed -i -e s/".\/koshikawa.sh"/""/g ~/.bash_profile
\rm ~/.bash_profile-e
echo "./koshikawa.sh" >> ~/.bash_profile