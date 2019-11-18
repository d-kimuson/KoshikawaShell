#!/bin/bash

script_path="${KOSHIKAWA_ROOT}/koshikawa.sh"

sed -i -e "s#$script_path##g" ~/.bash_profile
\rm ~/.bash_profile-e

echo "$script_path" >> ~/.bash_profile
