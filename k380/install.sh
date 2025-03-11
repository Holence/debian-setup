#!/bin/bash
echo "${COLOR_GREEN}install k380...${COLOR_END}"
sudo apt install build-essential

git clone https://github.com/jergusg/k380-function-keys-conf.git

cd k380-function-keys-conf && sudo make install

echo "${COLOR_MAGENTA}
# Get the number of your keyboard hidraw interface - /dev/hidrawX where X is 0, 1, 2, 3.
> sudo ./fn_on.sh

# To switch keyboard's upper keys to F-keys run:
> sudo k380_conf -d /dev/hidrawX -f on

# Switch keys to F-keys automatically
> sudo make reload
${COLOR_END}
"
