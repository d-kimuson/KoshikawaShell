#!/bin/sh

chmod a+x ./koshikawa.sh && cp ./koshikawa.sh ~/
sed -i -e s/".\/koshikawa.sh"/""/g ~/.bashrc
echo "./koshikawa.sh" >> ~/.bashrc