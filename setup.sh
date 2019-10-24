#!/bin/sh

chmod a+x ./koshikawa.sh && cp ./koshikawa.sh ~/
sed -i -e s/".\/koshikawa.sh"/""/g ~/.bashrc
\rm ~/.bashrc-e
echo "./koshikawa.sh" >> ~/.bashrc